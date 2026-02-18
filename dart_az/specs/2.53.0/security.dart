// Auto-generated from TypeScript source: security.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `security` CLI
final FigSpec securitySpec = FigSpec(
  name: 'security',
  description: 'Manage your security posture with Microsoft Defender for Cloud',
  subcommands: [

    Subcommand(
      name: 'adaptive-application-controls',
      description: 'Enable control which applications can run on your Azure and non-Azure machines (Windows and Linux)',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Adaptive Application Controls - List'
        ),
        Subcommand(
          name: 'show',
          description: 'Adaptive Application Controls - Get',
          options: [

            Option(
              name: '--group-name',
              description: 'Name of an application control VM/server group',
              args: [
                Arg(
                name: 'group-nam'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location of the resource. Possible values are "centralsus", "westeurope". Please use "list" operation to get all resources and locations',
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
      name: 'adaptive_network_hardenings',
      description: 'View all Adaptive Network Hardening resources',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Gets a list of Adaptive Network Hardenings resources in scope of an extended resource',
          options: [

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
              name: '--resource-name',
              description: 'Name of the resource',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-namespace',
              description: 'The Namespace of the resource',
              args: [
                Arg(
                name: 'resource-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The type of the resource',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets a single Adaptive Network Hardening resource',
          options: [

            Option(
              name: '--adaptive-network-hardenings-resource-name',
              description: 'Adaptive Network Hardening resource name',
              args: [
                Arg(
                name: 'adaptive-network-hardenings-resource-nam'
              )
              ]
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
              name: '--resource-name',
              description: 'Name of the resource',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-namespace',
              description: 'The Namespace of the resource',
              args: [
                Arg(
                name: 'resource-namespac'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'The type of the resource',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'alert',
      description: 'View security alerts',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List security alerts',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
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
          description: 'Shows a security alert',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
          description: 'Updates a security alert status',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Target status of the alert. possible values are "dismiss", "activate", "resolve" and "inprogress"',
              args: [
                Arg(
                name: 'statu'
              )
              ]
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
      name: 'alerts-suppression-rule',
      description: 'View and manage alerts suppression rules',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete an alerts suppression rule',
          options: [

            Option(
              name: '--rule-name',
              description: 'The unique name of the alerts suppression rule',
              args: [
                Arg(
                name: 'rule-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete_scope',
          description: 'Delete an alerts suppression rule scope',
          options: [

            Option(
              name: '--field',
              description: 'Entity name',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--rule-name',
              description: 'The unique name of the alerts suppression rule',
              args: [
                Arg(
                name: 'rule-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all alerts suppression rule on a subscription scope'
        ),
        Subcommand(
          name: 'show',
          description: 'Shows an alerts suppression rule',
          options: [

            Option(
              name: '--rule-name',
              description: 'The unique name of the alerts suppression rule',
              args: [
                Arg(
                name: 'rule-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates or create an alerts suppression rule',
          options: [

            Option(
              name: '--alert-type',
              description: 'Type of the alert to automatically suppress. For all alert types, use "*"',
              args: [
                Arg(
                name: 'alert-typ'
              )
              ]
            ),
            Option(
              name: '--reason',
              description: 'The reason for dismissing the alert',
              args: [
                Arg(
                name: 'reaso'
              )
              ]
            ),
            Option(
              name: '--rule-name',
              description: 'The unique name of the alerts suppression rule',
              args: [
                Arg(
                name: 'rule-nam'
              )
              ]
            ),
            Option(
              name: '--state',
              description: 'Possible states of the rule. Possible values are "Enabled" and "Disabled"',
              args: [
                Arg(
                name: 'stat'
              )
              ]
            ),
            Option(
              name: '--comment',
              description: 'Any comment regarding the rule',
              args: [
                Arg(
                name: 'commen'
              )
              ]
            ),
            Option(
              name: '--expiration-date-utc',
              description: 'Expiration date of the rule, if value is not provided or provided as null this field will default to the maximum allowed expiration date',
              args: [
                Arg(
                name: 'expiration-date-ut'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'upsert_scope',
          description: 'Update an alerts suppression rule with scope element',
          options: [

            Option(
              name: '--field',
              description: 'Entity name',
              args: [
                Arg(
                name: 'fiel'
              )
              ]
            ),
            Option(
              name: '--rule-name',
              description: 'The unique name of the alerts suppression rule',
              args: [
                Arg(
                name: 'rule-nam'
              )
              ]
            ),
            Option(
              name: '--any-of',
              description: 'A list of strings to scope the suppression rule by',
              args: [
                Arg(
                name: 'any-o'
              )
              ]
            ),
            Option(
              name: '--contains-substring',
              description: 'The string to scope the suppression rule by',
              args: [
                Arg(
                name: 'contains-substrin'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'allowed_connections',
      description: 'View all possible traffic between resources for the subscription and location, based on connection type',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List of all possible traffic between resources for the subscription'
        ),
        Subcommand(
          name: 'show',
          description: 'List all possible traffic between resources for the subscription and location, based on connection type',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
      name: 'assessment',
      description: 'View your security assessment results',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a customer managed security assessment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--status-code',
              description: 'Progremmatic code for the result of the assessment. can be "Healthy", "Unhealthy" or "NotApplicable"',
              args: [
                Arg(
                name: 'status-cod'
              )
              ]
            ),
            Option(
              name: '--additional-data',
              description: 'Data that is attached to the assessment result for better investigations or status clarity',
              args: [
                Arg(
                name: 'additional-dat'
              )
              ]
            ),
            Option(
              name: '--assessed-resource-id',
              description: 'The target resource for this assessment',
              args: [
                Arg(
                name: 'assessed-resource-i'
              )
              ]
            ),
            Option(
              name: '--status-cause',
              description: 'Progremmatic code for the cause of the assessment result',
              args: [
                Arg(
                name: 'status-caus'
              )
              ]
            ),
            Option(
              name: '--status-description',
              description: 'Human readable description of the cause of the assessment result',
              args: [
                Arg(
                name: 'status-descriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a security assessment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--assessed-resource-id',
              description: 'The target resource for this assessment',
              args: [
                Arg(
                name: 'assessed-resource-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all security assessment results'
        ),
        Subcommand(
          name: 'show',
          description: 'Shows a security assessment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--assessed-resource-id',
              description: 'The target resource for this assessment',
              args: [
                Arg(
                name: 'assessed-resource-i'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'assessment-metadata',
      description: 'View your security assessment metadata',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a customer managed security assessment type',
          options: [

            Option(
              name: '--description',
              description: 'Detailed string that will help users to understand the assessment and how it is calculated',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Human readable title for this object',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--severity',
              description: 'Indicates the importance of the security risk if the assessment is unhealthy',
              args: [
                Arg(
                name: 'severit'
              )
              ]
            ),
            Option(
              name: '--remediation-description',
              description: 'Detailed string that will help users to understand the different ways to mitigate or fix the security issue',
              args: [
                Arg(
                name: 'remediation-descriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a security assessment type and all it\'s assessment results',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all security assessment results'
        ),
        Subcommand(
          name: 'show',
          description: 'Shows a security assessment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'atp',
      description: 'View and manage Advanced Threat Protection settings',
      subcommands: [

        Subcommand(
          name: 'cosmosdb',
          description: 'View and manage Advanced Threat Protection settings for Cosmos DB accounts',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Display Advanced Threat Protection settings for an Azure Cosmos DB account',
              options: [

                Option(
                  name: '--cosmosdb-account',
                  description: 'Name of an existing Cosmos DB account',
                  args: [
                    Arg(
                    name: 'cosmosdb-accoun'
                  )
                  ]
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
              description: 'Toggle status of Advanced Threat Protection for an Azure Cosmos DB account',
              options: [

                Option(
                  name: '--cosmosdb-account',
                  description: 'Name of an existing Cosmos DB account',
                  args: [
                    Arg(
                    name: 'cosmosdb-accoun'
                  )
                  ]
                ),
                Option(
                  name: '--is-enabled',
                  description: 'Enable or disable Advanced Threat Protection for a received storage or Cosmos DB account',
                  args: [
                    Arg(
                    name: 'is-enabled',
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
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'storage',
          description: 'View and manage Advanced Threat Protection settings for storage accounts',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Display Advanced Threat Protection settings for a storage account',
              options: [

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
                  description: 'Name of an existing Storage account',
                  args: [
                    Arg(
                    name: 'storage-accoun'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Toggle status of Advanced Threat Protection for a storage account',
              options: [

                Option(
                  name: '--is-enabled',
                  description: 'Enable or disable Advanced Threat Protection for a received storage or Cosmos DB account',
                  args: [
                    Arg(
                    name: 'is-enabled',
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
                  name: '--storage-account',
                  description: 'Name of an existing Storage account',
                  args: [
                    Arg(
                    name: 'storage-accoun'
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
      name: 'auto-provisioning-setting',
      description: 'View your auto provisioning settings',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the auto provisioning settings'
        ),
        Subcommand(
          name: 'show',
          description: 'Shows an auto provisioning setting',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
          description: 'Updates your automatic provisioning settings on the subscription',
          options: [

            Option(
              name: '--auto-provision',
              description: 'Automatic provisioning toggle. possible values are "On" or "Off"',
              args: [
                Arg(
                name: 'auto-provisio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'automation',
      description: 'View your security automations',
      subcommands: [

        Subcommand(
          name: 'create_or_update',
          description: 'Creates or update a security automation',
          options: [

            Option(
              name: '--actions',
              description: 'A collection of the actions which are triggered if all the configured rules evaluations, within at least one rule set, are true',
              args: [
                Arg(
                name: 'action'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
              description: 'A collection of scopes on which the security automations logic is applied',
              args: [
                Arg(
                name: 'scope'
              )
              ]
            ),
            Option(
              name: '--sources',
              description: 'A collection of the source event types which evaluate the security automation set of rules',
              args: [
                Arg(
                name: 'source'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The security automation description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Entity tag is used for comparing two or more entities from the same requested resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--isEnabled',
              description: 'Indicates whether the security automation is enabled',
              args: [
                Arg(
                name: 'isEnable'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'A list of key value pairs that describe the resource',
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
          description: 'Deletes a security automation',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
          description: 'List all security automations under subscription/resource group',
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
          description: 'Shows a security automation',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
          name: 'validate',
          description: 'Validates a security automation model before create or update',
          options: [

            Option(
              name: '--actions',
              description: 'A collection of the actions which are triggered if all the configured rules evaluations, within at least one rule set, are true',
              args: [
                Arg(
                name: 'action'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
              description: 'A collection of scopes on which the security automations logic is applied',
              args: [
                Arg(
                name: 'scope'
              )
              ]
            ),
            Option(
              name: '--sources',
              description: 'A collection of the source event types which evaluate the security automation set of rules',
              args: [
                Arg(
                name: 'source'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The security automation description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'Entity tag is used for comparing two or more entities from the same requested resource',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: '--isEnabled',
              description: 'Indicates whether the security automation is enabled',
              args: [
                Arg(
                name: 'isEnable'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'A list of key value pairs that describe the resource',
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
      name: 'automation-action-event-hub',
      description: 'Creates security automation event hub action',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates security automation event hub action',
          options: [

            Option(
              name: '--connection-string',
              description: 'The target Event Hub connection string (it will not be included in any response)',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--event-hub-resource-id',
              description: 'The target Event Hub Azure Resource ID',
              args: [
                Arg(
                name: 'event-hub-resource-i'
              )
              ]
            ),
            Option(
              name: '--sas-policy-name',
              description: 'The target Event Hub SAS policy name',
              args: [
                Arg(
                name: 'sas-policy-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'automation-action-logic-app',
      description: 'Creates security automation logic app action',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates security automation logic app action',
          options: [

            Option(
              name: '--logic-app-resource-id',
              description: 'The triggered Logic App Azure Resource ID. This can also reside on other subscriptions, given that you have permissions to trigger the Logic App',
              args: [
                Arg(
                name: 'logic-app-resource-i'
              )
              ]
            ),
            Option(
              name: '--uri',
              description: 'The Logic App trigger URI endpoint (it will not be included in any response)',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'automation-action-workspace',
      description: 'Creates security automation workspace action',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates security automation workspace action',
          options: [

            Option(
              name: '--workspace-resource-id',
              description: 'The fully qualified Log Analytics Workspace Azure Resource ID',
              args: [
                Arg(
                name: 'workspace-resource-i'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'automation-rule',
      description: 'Creates security automation rule',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates security automation rule',
          options: [

            Option(
              name: '--expected-value',
              description: 'The expected value',
              args: [
                Arg(
                name: 'expected-valu'
              )
              ]
            ),
            Option(
              name: '--operator',
              description: 'A valid comparer operator to use. A case-insensitive comparison will be applied for String PropertyType',
              args: [
                Arg(
                name: 'operato'
              )
              ]
            ),
            Option(
              name: '--property-j-path',
              description: 'The JPath of the entity model property that should be checked',
              args: [
                Arg(
                name: 'property-j-pat'
              )
              ]
            ),
            Option(
              name: '--property-type',
              description: 'The data type of the compared operands (string, integer, floating point number or a boolean [true/false]]',
              args: [
                Arg(
                name: 'property-typ'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'automation-rule-set',
      description: 'Creates security automation rule set',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates security automation rule set',
          options: [

            Option(
              name: '--rules',
              description: 'A rule which is evaluated upon event interception. The rule is configured by comparing a specific value from the event model to an expected value. This comparison is done by using one of the supported operators set',
              args: [
                Arg(
                name: 'rule'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'automation-scope',
      description: 'Creates security automation scope',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates security automation scope',
          options: [

            Option(
              name: '--description',
              description: 'The resources scope description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--scope-path',
              description: 'The resources scope path. Can be the subscription on which the automation is defined on or a resource group under that subscription (fully qualified Azure resource IDs)',
              args: [
                Arg(
                name: 'scope-pat'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'automation-source',
      description: 'Creates security automation source',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates security automation source',
          options: [

            Option(
              name: '--event-source',
              description: 'A valid event source type',
              args: [
                Arg(
                name: 'event-sourc'
              )
              ]
            ),
            Option(
              name: '--rule-sets',
              description: 'A set of rules which evaluate upon event interception. A logical disjunction is applied between defined rule sets (logical "or")',
              args: [
                Arg(
                name: 'rule-set'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'contact',
      description: 'View your security contacts',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a security contact',
          options: [

            Option(
              name: '--email',
              description: 'E-mail of the security contact',
              args: [
                Arg(
                name: 'emai'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--alert-notifications',
              description: 'Whether to send mail notifications to the security contacts',
              args: [
                Arg(
                name: 'alert-notification'
              )
              ]
            ),
            Option(
              name: '--alerts-admins',
              description: 'Whether to send mail notifications to the subscription administrators',
              args: [
                Arg(
                name: 'alerts-admin'
              )
              ]
            ),
            Option(
              name: '--phone',
              description: 'Phone of the security contact',
              args: [
                Arg(
                name: 'phon'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a security contact',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List security contact'
        ),
        Subcommand(
          name: 'show',
          description: 'Shows a security contact',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'discovered-security-solution',
      description: 'View your discovered security solutions',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the discovered security solutions'
        ),
        Subcommand(
          name: 'show',
          description: 'Shows a discovered security solution',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
      name: 'external-security-solution',
      description: 'View your external security solutions',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the external security solutions'
        ),
        Subcommand(
          name: 'show',
          description: 'Shows an external security solution',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
      name: 'iot-alerts',
      description: 'View IoT Security aggregated alerts',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Dismiss an aggregated IoT Security Alert',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
              name: '--solution-name',
              description: 'Name of the IoT Security solution',
              args: [
                Arg(
                name: 'solution-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all yours IoT Security solution aggregated alerts',
          options: [

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
              name: '--solution-name',
              description: 'Name of the IoT Security solution',
              args: [
                Arg(
                name: 'solution-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Shows a single aggregated alert of yours IoT Security solution',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
              name: '--solution-name',
              description: 'Name of the IoT Security solution',
              args: [
                Arg(
                name: 'solution-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'iot-analytics',
      description: 'View IoT Security Analytics metrics',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all IoT security Analytics metrics',
          options: [

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
              name: '--solution-name',
              description: 'Name of the IoT Security solution',
              args: [
                Arg(
                name: 'solution-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Shows IoT Security Analytics metrics',
          options: [

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
              name: '--solution-name',
              description: 'Name of the IoT Security solution',
              args: [
                Arg(
                name: 'solution-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'iot-recommendations',
      description: 'View IoT Security aggregated recommendations',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all yours IoT Security solution aggregated recommendations',
          options: [

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
              name: '--solution-name',
              description: 'Name of the IoT Security solution',
              args: [
                Arg(
                name: 'solution-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Shows a single aggregated recommendation of yours IoT Security solution',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
              name: '--solution-name',
              description: 'Name of the IoT Security solution',
              args: [
                Arg(
                name: 'solution-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'iot-solution',
      description: 'Manage your IoT Security solution',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create your IoT Security solution',
          options: [

            Option(
              name: '--display-name',
              description: 'Resource display name',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--iot-hubs',
              description: 'IoT Hub resource IDs',
              args: [
                Arg(
                name: 'iot-hub'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
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
              name: '--solution-name',
              description: 'Name of the IoT Security solution',
              args: [
                Arg(
                name: 'solution-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete your IoT Security solution',
          options: [

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
              name: '--solution-name',
              description: 'Name of the IoT Security solution',
              args: [
                Arg(
                name: 'solution-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all IoT Security solutions',
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
          description: 'Shows a IoT Security solution',
          options: [

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
              name: '--solution-name',
              description: 'Name of the IoT Security solution',
              args: [
                Arg(
                name: 'solution-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update your IoT Security solution',
          options: [

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
              name: '--solution-name',
              description: 'Name of the IoT Security solution',
              args: [
                Arg(
                name: 'solution-nam'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Resource display name',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--iot-hubs',
              description: 'IoT Hub resource IDs',
              args: [
                Arg(
                name: 'iot-hub'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'jit-policy',
      description: 'Manage your Just in Time network access policies',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List your Just in Time network access policies',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
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
          description: 'Shows a Just in Time network access policy',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
      name: 'location',
      description: 'Shows the Microsoft Defender for Cloud Home region location',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Shows the Microsoft Defender for Cloud Home region location'
        ),
        Subcommand(
          name: 'show',
          description: 'Shows the Microsoft Defender for Cloud Home region location',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pricing',
      description: 'Enables managing the Azure Defender plan for the subscription',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Updates the Azure defender plan for the subscription',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--tier',
              description: 'Pricing tier type',
              args: [
                Arg(
                name: 'tie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Shows the Azure Defender plans for the subscription'
        ),
        Subcommand(
          name: 'show',
          description: 'Shows the Azure Defender plan for the subscription',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'regulatory-compliance-assessments',
      description: 'Regulatory compliance assessments',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get details and state of assessments mapped to selected regulatory compliance control',
          options: [

            Option(
              name: '--control-name',
              description: 'The compliance control name',
              args: [
                Arg(
                name: 'control-nam'
              )
              ]
            ),
            Option(
              name: '--standard-name',
              description: 'The compliance standard name',
              args: [
                Arg(
                name: 'standard-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Shows supported regulatory compliance details and state for selected assessment',
          options: [

            Option(
              name: '--control-name',
              description: 'The compliance control name',
              args: [
                Arg(
                name: 'control-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--standard-name',
              description: 'The compliance standard name',
              args: [
                Arg(
                name: 'standard-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'regulatory-compliance-controls',
      description: 'Regulatory compliance controls',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List supported of regulatory compliance controls details and state for selected standard',
          options: [

            Option(
              name: '--standard-name',
              description: 'The compliance standard name',
              args: [
                Arg(
                name: 'standard-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Shows a regulatory compliance details state for selected standard',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--standard-name',
              description: 'The compliance standard name',
              args: [
                Arg(
                name: 'standard-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'regulatory-compliance-standards',
      description: 'Regulatory compliance standards',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List supported regulatory compliance standards details and state results'
        ),
        Subcommand(
          name: 'show',
          description: 'Shows a regulatory compliance details state for selected standard',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'secure-score-control-definitions',
      description: 'Secure score control definitions',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get details of secure score control definitions'
        )
      ]
    ),
    Subcommand(
      name: 'secure-score-controls',
      description: 'Secure score controls',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List supported of secure score controls details and state for scope'
        ),
        Subcommand(
          name: 'list_by_score',
          description: 'List supported of secure score controls details and state for selected score',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'secure-scores',
      description: 'Secure scores',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List of secure-scores details and state results'
        ),
        Subcommand(
          name: 'show',
          description: 'Shows a secure score details for selected initiative',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'security-solutions',
      description: 'Display all security solutions at the subscription level',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Display all security solutions at the subscription level'
        )
      ]
    ),
    Subcommand(
      name: 'security-solutions-reference-data',
      description: 'Display all security solutions reference data at the subscription level',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Display all security solutions reference data at the subscription level'
        )
      ]
    ),
    Subcommand(
      name: 'setting',
      description: 'View your security settings',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List security settings'
        ),
        Subcommand(
          name: 'show',
          description: 'Shows a security setting',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the setting',
              args: [
                Arg(
                name: 'name',
                suggestions: [

                  FigSuggestion(name: 'MCAS'),
                  FigSuggestion(name: 'Sentinel'),
                  FigSuggestion(name: 'WDATP'),
                  FigSuggestion(name: 'WDATP_EXCLUDE_LINUX_PUBLIC_PREVIEW'),
                  FigSuggestion(name: 'WDATP_UNIFIED_SOLUTION')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates a security setting',
          options: [

            Option(
              name: '--enabled',
              description: 'Enable or disable the setting status',
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
              name: ['--name', '-n'],
              description: 'The name of the setting',
              args: [
                Arg(
                name: 'name',
                suggestions: [

                  FigSuggestion(name: 'MCAS'),
                  FigSuggestion(name: 'Sentinel'),
                  FigSuggestion(name: 'WDATP'),
                  FigSuggestion(name: 'WDATP_EXCLUDE_LINUX_PUBLIC_PREVIEW'),
                  FigSuggestion(name: 'WDATP_UNIFIED_SOLUTION')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'sub-assessment',
      description: 'View your security sub assessments',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all security sub assessment results',
          options: [

            Option(
              name: '--assessed-resource-id',
              description: 'The target resource for this assessment',
              args: [
                Arg(
                name: 'assessed-resource-i'
              )
              ]
            ),
            Option(
              name: '--assessment-name',
              description: 'Name of the assessment resource',
              args: [
                Arg(
                name: 'assessment-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Shows a security sub assessment',
          options: [

            Option(
              name: '--assessment-name',
              description: 'Name of the assessment resource',
              args: [
                Arg(
                name: 'assessment-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--assessed-resource-id',
              description: 'The target resource for this assessment',
              args: [
                Arg(
                name: 'assessed-resource-i'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'task',
      description: 'View security tasks (recommendations)',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List security tasks (recommendations)',
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
          description: 'Shows a security task (recommendation)',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
      name: 'topology',
      description: 'Shows the network topology in your subscription',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Shows the network topology in your subscription'
        ),
        Subcommand(
          name: 'show',
          description: 'Shows the network topology in your subscription',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
      name: 'va',
      description: 'View Vulnerability Assessment',
      subcommands: [

        Subcommand(
          name: 'sql',
          description: 'View Sql Vulnerability Assessment scan results and manage baseline',
          subcommands: [

            Subcommand(
              name: 'baseline',
              description: 'View and manage Sql Vulnerability Assessment baseline',
              subcommands: [

                Subcommand(
                  name: 'delete',
                  description: 'Delete Sql Vulnerability Assessment rule baseline',
                  options: [

                    Option(
                      name: '--database-name',
                      description: 'The name of the scanned database',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-id',
                      description: 'The ID of the scanned rule. Format: "VAXXXX", where XXXX indicates the number of the rule',
                      args: [
                        Arg(
                        name: 'rule-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--server-name',
                      description: 'The name of the scanned server',
                      args: [
                        Arg(
                        name: 'server-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-resource-id',
                      description: 'Resource ID of the scanned machine. For On-Premise machines, please provide your workspace resource ID',
                      args: [
                        Arg(
                        name: 'vm-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-id',
                      description: 'The ID of the workspace connected to the scanned machine',
                      args: [
                        Arg(
                        name: 'workspace-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--agent-id',
                      description: 'Provide the ID of the agent on the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'agent-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-name',
                      description: 'Provide the name of the machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-uuid',
                      description: 'Provide the UUID of the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-uui'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'View Sql Vulnerability Assessment baseline for all rules',
                  options: [

                    Option(
                      name: '--database-name',
                      description: 'The name of the scanned database',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--server-name',
                      description: 'The name of the scanned server',
                      args: [
                        Arg(
                        name: 'server-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-resource-id',
                      description: 'Resource ID of the scanned machine. For On-Premise machines, please provide your workspace resource ID',
                      args: [
                        Arg(
                        name: 'vm-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-id',
                      description: 'The ID of the workspace connected to the scanned machine',
                      args: [
                        Arg(
                        name: 'workspace-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--agent-id',
                      description: 'Provide the ID of the agent on the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'agent-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-name',
                      description: 'Provide the name of the machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-uuid',
                      description: 'Provide the UUID of the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-uui'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'set',
                  description: 'Sets Sql Vulnerability Assessment baseline. Replaces the current baseline',
                  options: [

                    Option(
                      name: '--database-name',
                      description: 'The name of the scanned database',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--server-name',
                      description: 'The name of the scanned server',
                      args: [
                        Arg(
                        name: 'server-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-resource-id',
                      description: 'Resource ID of the scanned machine. For On-Premise machines, please provide your workspace resource ID',
                      args: [
                        Arg(
                        name: 'vm-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-id',
                      description: 'The ID of the workspace connected to the scanned machine',
                      args: [
                        Arg(
                        name: 'workspace-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--agent-id',
                      description: 'Provide the ID of the agent on the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'agent-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--baseline', '-b'],
                      description: 'Baseline records to be set. The following example will set a baseline for two rules: --baseline rule=VA1111 line1_w1 line1_w2 --baseline rule=VA2222 line1_w1 line1_w2 line1_w3 --baseline rule=VA1111 line2_w1 line2_w2',
                      args: [
                        Arg(
                        name: 'baselin'
                      )
                      ]
                    ),
                    Option(
                      name: '--latest',
                      description: 'Use this argument without parameters to set baseline upon latest scan results'
                    ),
                    Option(
                      name: '--vm-name',
                      description: 'Provide the name of the machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-uuid',
                      description: 'Provide the UUID of the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-uui'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'View Sql Vulnerability Assessment rule baseline',
                  options: [

                    Option(
                      name: '--database-name',
                      description: 'The name of the scanned database',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-id',
                      description: 'The ID of the scanned rule. Format: "VAXXXX", where XXXX indicates the number of the rule',
                      args: [
                        Arg(
                        name: 'rule-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--server-name',
                      description: 'The name of the scanned server',
                      args: [
                        Arg(
                        name: 'server-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-resource-id',
                      description: 'Resource ID of the scanned machine. For On-Premise machines, please provide your workspace resource ID',
                      args: [
                        Arg(
                        name: 'vm-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-id',
                      description: 'The ID of the workspace connected to the scanned machine',
                      args: [
                        Arg(
                        name: 'workspace-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--agent-id',
                      description: 'Provide the ID of the agent on the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'agent-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-name',
                      description: 'Provide the name of the machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-uuid',
                      description: 'Provide the UUID of the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-uui'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update Sql Vulnerability Assessment rule baseline. Replaces the current rule baseline',
                  options: [

                    Option(
                      name: '--database-name',
                      description: 'The name of the scanned database',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-id',
                      description: 'The ID of the scanned rule. Format: "VAXXXX", where XXXX indicates the number of the rule',
                      args: [
                        Arg(
                        name: 'rule-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--server-name',
                      description: 'The name of the scanned server',
                      args: [
                        Arg(
                        name: 'server-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-resource-id',
                      description: 'Resource ID of the scanned machine. For On-Premise machines, please provide your workspace resource ID',
                      args: [
                        Arg(
                        name: 'vm-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-id',
                      description: 'The ID of the workspace connected to the scanned machine',
                      args: [
                        Arg(
                        name: 'workspace-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--agent-id',
                      description: 'Provide the ID of the agent on the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'agent-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--baseline', '-b'],
                      description: 'Baseline records to be set. The following example will set a baseline with two records: --baseline line1_w1 line1_w2 line1_w3 --baseline line2_w1 line2_w2 line2_w3',
                      args: [
                        Arg(
                        name: 'baselin'
                      )
                      ]
                    ),
                    Option(
                      name: '--latest',
                      description: 'Use this argument without parameters to set baseline upon latest scan results'
                    ),
                    Option(
                      name: '--vm-name',
                      description: 'Provide the name of the machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-uuid',
                      description: 'Provide the UUID of the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-uui'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'results',
              description: 'View Sql Vulnerability Assessment scan results',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'View all Sql Vulnerability Assessment scan results',
                  options: [

                    Option(
                      name: '--database-name',
                      description: 'The name of the scanned database',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--scan-id',
                      description: 'The ID of the scan',
                      args: [
                        Arg(
                        name: 'scan-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--server-name',
                      description: 'The name of the scanned server',
                      args: [
                        Arg(
                        name: 'server-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-resource-id',
                      description: 'Resource ID of the scanned machine. For On-Premise machines, please provide your workspace resource ID',
                      args: [
                        Arg(
                        name: 'vm-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-id',
                      description: 'The ID of the workspace connected to the scanned machine',
                      args: [
                        Arg(
                        name: 'workspace-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--agent-id',
                      description: 'Provide the ID of the agent on the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'agent-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-name',
                      description: 'Provide the name of the machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-uuid',
                      description: 'Provide the UUID of the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-uui'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'View Sql Vulnerability Assessment scan results',
                  options: [

                    Option(
                      name: '--database-name',
                      description: 'The name of the scanned database',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--rule-id',
                      description: 'The ID of the scanned rule. Format: "VAXXXX", where XXXX indicates the number of the rule',
                      args: [
                        Arg(
                        name: 'rule-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--scan-id',
                      description: 'The ID of the scan',
                      args: [
                        Arg(
                        name: 'scan-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--server-name',
                      description: 'The name of the scanned server',
                      args: [
                        Arg(
                        name: 'server-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-resource-id',
                      description: 'Resource ID of the scanned machine. For On-Premise machines, please provide your workspace resource ID',
                      args: [
                        Arg(
                        name: 'vm-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-id',
                      description: 'The ID of the workspace connected to the scanned machine',
                      args: [
                        Arg(
                        name: 'workspace-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--agent-id',
                      description: 'Provide the ID of the agent on the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'agent-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-name',
                      description: 'Provide the name of the machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-uuid',
                      description: 'Provide the UUID of the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-uui'
                      )
                      ]
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'scans',
              description: 'View Sql Vulnerability Assessment scan summaries',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'List all Sql Vulnerability Assessment scan summaries',
                  options: [

                    Option(
                      name: '--database-name',
                      description: 'The name of the scanned database',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--server-name',
                      description: 'The name of the scanned server',
                      args: [
                        Arg(
                        name: 'server-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-resource-id',
                      description: 'Resource ID of the scanned machine. For On-Premise machines, please provide your workspace resource ID',
                      args: [
                        Arg(
                        name: 'vm-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-id',
                      description: 'The ID of the workspace connected to the scanned machine',
                      args: [
                        Arg(
                        name: 'workspace-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--agent-id',
                      description: 'Provide the ID of the agent on the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'agent-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-name',
                      description: 'Provide the name of the machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-uuid',
                      description: 'Provide the UUID of the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-uui'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'View Sql Vulnerability Assessment scan summaries',
                  options: [

                    Option(
                      name: '--database-name',
                      description: 'The name of the scanned database',
                      args: [
                        Arg(
                        name: 'database-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--scan-id',
                      description: 'The ID of the scan',
                      args: [
                        Arg(
                        name: 'scan-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--server-name',
                      description: 'The name of the scanned server',
                      args: [
                        Arg(
                        name: 'server-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-resource-id',
                      description: 'Resource ID of the scanned machine. For On-Premise machines, please provide your workspace resource ID',
                      args: [
                        Arg(
                        name: 'vm-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-id',
                      description: 'The ID of the workspace connected to the scanned machine',
                      args: [
                        Arg(
                        name: 'workspace-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--agent-id',
                      description: 'Provide the ID of the agent on the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'agent-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-name',
                      description: 'Provide the name of the machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vm-uuid',
                      description: 'Provide the UUID of the scanned machine, for On-Premise resources only',
                      args: [
                        Arg(
                        name: 'vm-uui'
                      )
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
      name: 'workspace-setting',
      description: 'Shows the workspace settings in your subscription - these settings let you control which workspace will hold your security data',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a workspace settings in your subscription - these settings let you control which workspace will hold your security data',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--target-workspace',
              description: 'An ID of the workspace resource that will hold the security data',
              args: [
                Arg(
                name: 'target-workspac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes the workspace settings in your subscription - this will make the security events on the subscription be reported to the default workspace',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Shows the workspace settings in your subscription - these settings let you control which workspace will hold your security data'
        ),
        Subcommand(
          name: 'show',
          description: 'Shows the workspace settings in your subscription - these settings let you control which workspace will hold your security data',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource to be fetched',
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
