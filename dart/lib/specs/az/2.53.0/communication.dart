// Auto-generated from TypeScript source: communication.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `communication` CLI
final FigSpec communicationSpec = FigSpec(
  name: 'communication',
  description: 'Manage communication service with communication',
  subcommands: [

    Subcommand(
      name: 'chat',
      description: 'Commands to interact with Azure Communication Services Chat gateway',
      subcommands: [

        Subcommand(
          name: 'message',
          description: 'Commands to manage messages in a chat thread of a Communication Service resource',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Deletes a message from a chat thread by id',
              options: [

                Option(
                  name: '--message-id',
                  description: 'Message id',
                  args: [
                    Arg(
                    name: 'message-i'
                  )
                  ]
                ),
                Option(
                  name: ['--thread', '-t'],
                  description: 'Thread id',
                  args: [
                    Arg(
                    name: 'threa'
                  )
                  ]
                ),
                Option(
                  name: '--access-token',
                  description: 'Communication access token. Environment variable: AZURE_COMMUNICATION_ACCESS_TOKEN',
                  args: [
                    Arg(
                    name: 'access-toke'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Communication endpoint. Environment variable: AZURE_COMMUNICATION_ENDPOINT',
                  args: [
                    Arg(
                    name: 'endpoin'
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
              name: 'get',
              description: 'Gets a message from a chat thread by id',
              options: [

                Option(
                  name: '--message-id',
                  description: 'Message id',
                  args: [
                    Arg(
                    name: 'message-i'
                  )
                  ]
                ),
                Option(
                  name: ['--thread', '-t'],
                  description: 'Thread id',
                  args: [
                    Arg(
                    name: 'threa'
                  )
                  ]
                ),
                Option(
                  name: '--access-token',
                  description: 'Communication access token. Environment variable: AZURE_COMMUNICATION_ACCESS_TOKEN',
                  args: [
                    Arg(
                    name: 'access-toke'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Communication endpoint. Environment variable: AZURE_COMMUNICATION_ENDPOINT',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Gets list of messages from a chat thread',
              options: [

                Option(
                  name: ['--thread', '-t'],
                  description: 'Thread id',
                  args: [
                    Arg(
                    name: 'threa'
                  )
                  ]
                ),
                Option(
                  name: '--access-token',
                  description: 'Communication access token. Environment variable: AZURE_COMMUNICATION_ACCESS_TOKEN',
                  args: [
                    Arg(
                    name: 'access-toke'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Communication endpoint. Environment variable: AZURE_COMMUNICATION_ENDPOINT',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--start-time',
                  description: 'Start time in ISO8601 format, ex: 2022-07-14T10:21',
                  args: [
                    Arg(
                    name: 'start-tim'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'send',
              description: 'Sends a message to a chat thread',
              options: [

                Option(
                  name: '--content',
                  description: 'Chat message content',
                  args: [
                    Arg(
                    name: 'conten'
                  )
                  ]
                ),
                Option(
                  name: ['--thread', '-t'],
                  description: 'Thread id',
                  args: [
                    Arg(
                    name: 'threa'
                  )
                  ]
                ),
                Option(
                  name: '--access-token',
                  description: 'Communication access token. Environment variable: AZURE_COMMUNICATION_ACCESS_TOKEN',
                  args: [
                    Arg(
                    name: 'access-toke'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Senders display name',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Communication endpoint. Environment variable: AZURE_COMMUNICATION_ENDPOINT',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'Content type, can be text or html',
                  args: [
                    Arg(
                    name: 'message-typ'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates a message',
              options: [

                Option(
                  name: '--content',
                  description: 'Chat message content',
                  args: [
                    Arg(
                    name: 'conten'
                  )
                  ]
                ),
                Option(
                  name: '--message-id',
                  description: 'Message id',
                  args: [
                    Arg(
                    name: 'message-i'
                  )
                  ]
                ),
                Option(
                  name: ['--thread', '-t'],
                  description: 'Thread id',
                  args: [
                    Arg(
                    name: 'threa'
                  )
                  ]
                ),
                Option(
                  name: '--access-token',
                  description: 'Communication access token. Environment variable: AZURE_COMMUNICATION_ACCESS_TOKEN',
                  args: [
                    Arg(
                    name: 'access-toke'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Communication endpoint. Environment variable: AZURE_COMMUNICATION_ENDPOINT',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'receipt',
              description: 'Commands to manage message read-receipts in a chat thread of a Communication Service resource',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'Gets read receipts of a chat thread',
                  options: [

                    Option(
                      name: ['--thread', '-t'],
                      description: 'Thread id',
                      args: [
                        Arg(
                        name: 'threa'
                      )
                      ]
                    ),
                    Option(
                      name: '--access-token',
                      description: 'Communication access token. Environment variable: AZURE_COMMUNICATION_ACCESS_TOKEN',
                      args: [
                        Arg(
                        name: 'access-toke'
                      )
                      ]
                    ),
                    Option(
                      name: '--endpoint',
                      description: 'Communication endpoint. Environment variable: AZURE_COMMUNICATION_ENDPOINT',
                      args: [
                        Arg(
                        name: 'endpoin'
                      )
                      ]
                    ),
                    Option(
                      name: '--skip',
                      description: 'Number of read receipts to skip',
                      args: [
                        Arg(
                        name: 'ski'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'send',
                  description: 'Posts a read receipt event to a chat thread, on behalf of a user',
                  options: [

                    Option(
                      name: '--message-id',
                      description: 'Message id',
                      args: [
                        Arg(
                        name: 'message-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--thread', '-t'],
                      description: 'Thread id',
                      args: [
                        Arg(
                        name: 'threa'
                      )
                      ]
                    ),
                    Option(
                      name: '--access-token',
                      description: 'Communication access token. Environment variable: AZURE_COMMUNICATION_ACCESS_TOKEN',
                      args: [
                        Arg(
                        name: 'access-toke'
                      )
                      ]
                    ),
                    Option(
                      name: '--endpoint',
                      description: 'Communication endpoint. Environment variable: AZURE_COMMUNICATION_ENDPOINT',
                      args: [
                        Arg(
                        name: 'endpoin'
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
          name: 'participant',
          description: 'Commands to manage participants in a chat thread of a Communication Service resource',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Adds a participant to a chat thread',
              options: [

                Option(
                  name: ['--thread', '-t'],
                  description: 'Thread id',
                  args: [
                    Arg(
                    name: 'threa'
                  )
                  ]
                ),
                Option(
                  name: '--user',
                  description: 'Chat participant identifier',
                  args: [
                    Arg(
                    name: 'use'
                  )
                  ]
                ),
                Option(
                  name: '--access-token',
                  description: 'Communication access token. Environment variable: AZURE_COMMUNICATION_ACCESS_TOKEN',
                  args: [
                    Arg(
                    name: 'access-toke'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Chat participant display name',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Communication endpoint. Environment variable: AZURE_COMMUNICATION_ENDPOINT',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--start-time',
                  description: 'Start time to share history in ISO8601 format, ex: 2022-07-14T10:21',
                  args: [
                    Arg(
                    name: 'start-tim'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Gets the participants of a chat thread',
              options: [

                Option(
                  name: ['--thread', '-t'],
                  description: 'Thread id',
                  args: [
                    Arg(
                    name: 'threa'
                  )
                  ]
                ),
                Option(
                  name: '--access-token',
                  description: 'Communication access token. Environment variable: AZURE_COMMUNICATION_ACCESS_TOKEN',
                  args: [
                    Arg(
                    name: 'access-toke'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Communication endpoint. Environment variable: AZURE_COMMUNICATION_ENDPOINT',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--skip',
                  description: 'Number of participants to skip',
                  args: [
                    Arg(
                    name: 'ski'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Removes a participant from a chat thread',
              options: [

                Option(
                  name: ['--thread', '-t'],
                  description: 'Thread id',
                  args: [
                    Arg(
                    name: 'threa'
                  )
                  ]
                ),
                Option(
                  name: '--user',
                  description: 'Chat participant identifier',
                  args: [
                    Arg(
                    name: 'use'
                  )
                  ]
                ),
                Option(
                  name: '--access-token',
                  description: 'Communication access token. Environment variable: AZURE_COMMUNICATION_ACCESS_TOKEN',
                  args: [
                    Arg(
                    name: 'access-toke'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Communication endpoint. Environment variable: AZURE_COMMUNICATION_ENDPOINT',
                  args: [
                    Arg(
                    name: 'endpoin'
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
          name: 'thread',
          description: 'Commands to manage chat thread of a Communication Service resource',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a chat thread',
              options: [

                Option(
                  name: '--topic',
                  description: 'Chat topic',
                  args: [
                    Arg(
                    name: 'topi'
                  )
                  ]
                ),
                Option(
                  name: '--access-token',
                  description: 'Communication access token. Environment variable: AZURE_COMMUNICATION_ACCESS_TOKEN',
                  args: [
                    Arg(
                    name: 'access-toke'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Communication endpoint. Environment variable: AZURE_COMMUNICATION_ENDPOINT',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--idempotency-token',
                  description: 'Idempotency token',
                  args: [
                    Arg(
                    name: 'idempotency-toke'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a chat thread',
              options: [

                Option(
                  name: ['--thread', '-t'],
                  description: 'Thread id',
                  args: [
                    Arg(
                    name: 'threa'
                  )
                  ]
                ),
                Option(
                  name: '--access-token',
                  description: 'Communication access token. Environment variable: AZURE_COMMUNICATION_ACCESS_TOKEN',
                  args: [
                    Arg(
                    name: 'access-toke'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Communication endpoint. Environment variable: AZURE_COMMUNICATION_ENDPOINT',
                  args: [
                    Arg(
                    name: 'endpoin'
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
              description: 'Gets the list of chat threads of a user',
              options: [

                Option(
                  name: '--access-token',
                  description: 'Communication access token. Environment variable: AZURE_COMMUNICATION_ACCESS_TOKEN',
                  args: [
                    Arg(
                    name: 'access-toke'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Communication endpoint. Environment variable: AZURE_COMMUNICATION_ENDPOINT',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--start-time',
                  description: 'Start time in ISO8601 format, ex: 2022-07-14T10:21',
                  args: [
                    Arg(
                    name: 'start-tim'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update-topic',
              description: 'Updates the topic of a chat thread',
              options: [

                Option(
                  name: ['--thread', '-t'],
                  description: 'Thread id',
                  args: [
                    Arg(
                    name: 'threa'
                  )
                  ]
                ),
                Option(
                  name: '--topic',
                  description: 'Chat topic',
                  args: [
                    Arg(
                    name: 'topi'
                  )
                  ]
                ),
                Option(
                  name: '--access-token',
                  description: 'Communication access token. Environment variable: AZURE_COMMUNICATION_ACCESS_TOKEN',
                  args: [
                    Arg(
                    name: 'access-toke'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Communication endpoint. Environment variable: AZURE_COMMUNICATION_ENDPOINT',
                  args: [
                    Arg(
                    name: 'endpoin'
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
      name: 'create',
      description: 'Create a new CommunicationService or update an existing CommunicationService',
      options: [

        Option(
          name: '--data-location',
          description: 'The location where the communication service stores its data at rest',
          args: [
            Arg(
            name: 'data-locatio'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the CommunicationService resource',
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
          name: '--linked-domains',
          description: 'List of email Domain resource Ids. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'linked-domain'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'The geo-location where the resource lives When not specified, the location of the resource group will be used',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--mi-system-assigned',
          description: 'Enable system assigned identity',
          args: [
            Arg(
            name: 'mi-system-assigned',
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
          name: '--mi-user-assigned',
          description: 'Space separated resource IDs to add user-assigned identities. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'mi-user-assigne'
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
          description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
      description: 'Delete to delete a CommunicationService',
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
          description: 'The name of the CommunicationService resource',
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
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'link-notification-hub',
      description: 'Links an Azure Notification Hub to this communication service',
      options: [

        Option(
          name: '--connection-string',
          description: 'Connection string for the notification hub',
          args: [
            Arg(
            name: 'connection-strin'
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
          description: 'The name of the CommunicationService resource',
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
          name: '--resource-id',
          description: 'The resource ID of the notification hub',
          args: [
            Arg(
            name: 'resource-i'
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
      description: 'List requests to list all resources in a resource group',
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
      name: 'list-key',
      description: 'Get the access keys of the CommunicationService resource',
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
          description: 'The name of the CommunicationService resource',
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
      name: 'regenerate-key',
      description: 'Regenerate CommunicationService access key. PrimaryKey and SecondaryKey cannot be regenerated at the same time',
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
          name: '--key-type',
          description: 'The keyType to regenerate. Must be either \'primary\' or \'secondary\'(case-insensitive)',
          args: [
            Arg(
            name: 'key-type',
            suggestions: [

              FigSuggestion(name: 'Primary'),
              FigSuggestion(name: 'Secondary')
            ]
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the CommunicationService resource',
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
      description: 'Get the CommunicationService and its properties',
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
          description: 'The name of the CommunicationService resource',
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
      description: 'Update a new CommunicationService or update an existing CommunicationService',
      options: [

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
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
          args: [
            Arg(
            name: 'force-string',
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
          name: '--ids',
          description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
          args: [
            Arg(
            name: 'id'
          )
          ]
        ),
        Option(
          name: '--linked-domains',
          description: 'List of email Domain resource Ids. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'linked-domain'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the CommunicationService resource',
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
          name: '--remove',
          description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
          args: [
            Arg(
            name: 'remov'
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
          name: '--set',
          description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
          args: [
            Arg(
            name: 'se'
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
          description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed)',
          args: [
            Arg(
            name: 'type',
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
          name: ['--user-assigned-identities', '-i'],
          description: 'The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'user-assigned-identitie'
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
          description: 'The name of the CommunicationService resource',
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
      name: 'email',
      description: 'Commands to send emails and get the status of emails previously sent using Azure Communication Services Email service',
      subcommands: [

        Subcommand(
          name: 'send',
          description: 'Send an email and get final status',
          options: [

            Option(
              name: '--sender',
              description: 'Sender email address from a verified domain',
              args: [
                Arg(
                name: 'sende'
              )
              ]
            ),
            Option(
              name: '--subject',
              description: 'Subject of the email message',
              args: [
                Arg(
                name: 'subjec'
              )
              ]
            ),
            Option(
              name: '--attachment-types',
              description: 'List of email attachment types, in the same order of attachments. Required for each attachment. Known values are: avi, bmp, doc, docm, docx, gif, jpeg, mp3, one, pdf, png, ppsm, ppsx, ppt, pptm, pptx, pub, rpmsg, rtf, tif, txt, vsd, wav, wma, xls, xlsb, xlsm, and xlsx',
              args: [
                Arg(
                name: 'attachment-type'
              )
              ]
            ),
            Option(
              name: '--attachments',
              description: 'List of email attachments. Optional',
              args: [
                Arg(
                name: 'attachment'
              )
              ]
            ),
            Option(
              name: '--bcc',
              description: 'Blind carbon copy email addresses',
              args: [
                Arg(
                name: 'bc'
              )
              ]
            ),
            Option(
              name: '--cc',
              description: 'Carbon copy email addresses',
              args: [
                Arg(
                name: 'c'
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--disable-tracking',
              description: 'Indicates whether user engagement tracking should be disabled for this specific request. This is only applicable if the resource-level user engagement tracking setting was already enabled in control plane. Optional'
            ),
            Option(
              name: '--html',
              description: 'Html version of the email message. Optional',
              args: [
                Arg(
                name: 'htm'
              )
              ]
            ),
            Option(
              name: '--importance',
              description: 'The importance type for the email. Known values are: high, normal, and low. Default is normal. Optional',
              args: [
                Arg(
                name: 'importance',
                suggestions: [

                  FigSuggestion(name: 'high'),
                  FigSuggestion(name: 'low'),
                  FigSuggestion(name: 'normal')
                ]
              )
              ]
            ),
            Option(
              name: '--reply-to',
              description: 'Reply-to email address. Optional',
              args: [
                Arg(
                name: 'reply-t'
              )
              ]
            ),
            Option(
              name: '--text',
              description: 'Plain text version of the email message. Optional',
              args: [
                Arg(
                name: 'tex'
              )
              ]
            ),
            Option(
              name: '--to',
              description: 'Recepients email addresses',
              args: [
                Arg(
                name: 't'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'identity',
      description: 'Manage the Communication Resource\'s managed identities',
      subcommands: [

        Subcommand(
          name: 'assign',
          description: 'Assign a managed identity to the Communication Resource',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the CommunicationService resource',
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
              name: '--system-assigned',
              description: 'Enable system assigned identity',
              args: [
                Arg(
                name: 'system-assigned',
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
              name: '--user-assigned',
              description: 'Space separated resource IDs to add user-assigned identities. Use [] to remove all identities. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'user-assigne'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove a managed identity from the communication resource',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the CommunicationService resource',
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
              name: '--system-assigned',
              description: 'Enable system assigned identity',
              args: [
                Arg(
                name: 'system-assigned',
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
              name: '--user-assigned',
              description: 'Space separated resource IDs to add user-assigned identities. Use [] to remove all identities. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'user-assigne'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the Communication Resource\'s managed identities',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the CommunicationService resource',
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
              description: 'The name of the CommunicationService resource',
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
          name: 'token',
          description: 'Commands to manage user tokens for a Communication Service resource',
          subcommands: [

            Subcommand(
              name: 'get-for-teams-user',
              description: 'Exchanges an Azure Active Directory (Azure AD) access token of a Teams user for a new ACS Identity access token with a matching expiration time',
              options: [

                Option(
                  name: '--aad-token',
                  description: 'Azure AD access token of a Teams User',
                  args: [
                    Arg(
                    name: 'aad-toke'
                  )
                  ]
                ),
                Option(
                  name: '--aad-user',
                  description: 'Object ID of an Azure AD user(Teams User) to be verified against the OID claim in the Azure AD access token',
                  args: [
                    Arg(
                    name: 'aad-use'
                  )
                  ]
                ),
                Option(
                  name: '--client',
                  description: 'Client ID of an Azure AD applicationto be verified against the appId claim in the Azure AD access token',
                  args: [
                    Arg(
                    name: 'clien'
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'issue',
              description: 'Issues a new access token with the specified scopes for a given User Identity. If no User Identity is specified, creates a new User Identity as well',
              options: [

                Option(
                  name: '--scope',
                  description: 'List of scopes for an access token ex: chat/voip',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
                  )
                  ]
                ),
                Option(
                  name: '--user',
                  description: 'ACS identifier',
                  args: [
                    Arg(
                    name: 'use'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'revoke',
              description: 'Revokes all access tokens for the specific ACS Identity',
              options: [

                Option(
                  name: '--user',
                  description: 'ACS identifier',
                  args: [
                    Arg(
                    name: 'use'
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
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
          name: 'user',
          description: 'Commands to manage user identities for a Communication Service resource',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a new ACS Identity',
              options: [

                Option(
                  name: '--connection-string',
                  description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes an existing ACS Identity, revokes all tokens for that ACS Identity and deletes all associated data',
              options: [

                Option(
                  name: '--user',
                  description: 'ACS identifier',
                  args: [
                    Arg(
                    name: 'use'
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
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
      name: 'phonenumber',
      description: 'Commands to manage phone numbers for a Communication Service resource',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Lists all phone numbers associated with the Communication Service resource',
          options: [

            Option(
              name: '--connection-string',
              description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Shows the details for a phone number associated with the Communication Service resource',
          options: [

            Option(
              name: '--phonenumber',
              description: 'Phone number to get information about',
              args: [
                Arg(
                name: 'phonenumbe'
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'phonenumbers',
      description: 'Commands to manage phone numbers for a Communication Service resource',
      subcommands: [

        Subcommand(
          name: 'list-phonenumbers',
          description: 'Lists all phone numbers associated with the Communication Service resource',
          options: [

            Option(
              name: '--connection-string',
              description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-phonenumber',
          description: 'Shows the details for a phone number associated with the Communication Service resource',
          options: [

            Option(
              name: ['--phonenumber', '-p'],
              description: 'Phone number to get information about',
              args: [
                Arg(
                name: 'phonenumbe'
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'rooms',
      description: 'Commands to interact with Azure Communication Services Rooms gateway',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new room',
          options: [

            Option(
              name: '--attendee-participants',
              description: 'Collection of identities to be invited to the room as attendee. Optional',
              args: [
                Arg(
                name: 'attendee-participant'
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--consumer-participants',
              description: 'Collection of identities to be invited to the room as consumer. Optional',
              args: [
                Arg(
                name: 'consumer-participant'
              )
              ]
            ),
            Option(
              name: '--presenter-participants',
              description: 'Collection of identities to be invited to the room as presenter. Optional',
              args: [
                Arg(
                name: 'presenter-participant'
              )
              ]
            ),
            Option(
              name: '--valid-from',
              description: 'The timestamp from when the room is open for joining, in in ISO8601 format, ex: 2023-03-31T10:21. Optional',
              args: [
                Arg(
                name: 'valid-fro'
              )
              ]
            ),
            Option(
              name: '--valid-until',
              description: 'The timestamp from when the room can no longer be joined, in ISO8601 format, ex: 2023-06-31T10:21. Optional',
              args: [
                Arg(
                name: 'valid-unti'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an existing room',
          options: [

            Option(
              name: '--room',
              description: 'Room Id',
              args: [
                Arg(
                name: 'roo'
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
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
          name: 'get',
          description: 'Return attributes of an existing room',
          options: [

            Option(
              name: '--room',
              description: 'Room Id',
              args: [
                Arg(
                name: 'roo'
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all active rooms belonging to a current Communication Service resource',
          options: [

            Option(
              name: '--connection-string',
              description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update attributes of an existing room',
          options: [

            Option(
              name: '--room',
              description: 'Room Id',
              args: [
                Arg(
                name: 'roo'
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: '--valid-from',
              description: 'The timestamp from when the room is open for joining, in in ISO8601 format, ex: 2023-03-31T10:21. Should be used together with --valid-until. Optional',
              args: [
                Arg(
                name: 'valid-fro'
              )
              ]
            ),
            Option(
              name: '--valid-until',
              description: 'The timestamp from when the room can no longer be joined, in ISO8601 format, ex: 2023-06-31T10:21. Should be used together with --valid-from. Optional',
              args: [
                Arg(
                name: 'valid-unti'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'participant',
          description: 'Commands to manage participants of an existing room',
          subcommands: [

            Subcommand(
              name: 'add-or-update',
              description: 'Add or update participants in a room',
              options: [

                Option(
                  name: '--room',
                  description: 'Room Id',
                  args: [
                    Arg(
                    name: 'roo'
                  )
                  ]
                ),
                Option(
                  name: '--attendee-participants',
                  description: 'Collection of identities to be added to the room as attendee',
                  args: [
                    Arg(
                    name: 'attendee-participant'
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
                  )
                  ]
                ),
                Option(
                  name: '--consumer-participants',
                  description: 'Collection of identities to be added to the room as consumer',
                  args: [
                    Arg(
                    name: 'consumer-participant'
                  )
                  ]
                ),
                Option(
                  name: '--presenter-participants',
                  description: 'Collection of identities to be added to the room as presenter',
                  args: [
                    Arg(
                    name: 'presenter-participant'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Get participants of a room',
              options: [

                Option(
                  name: '--room',
                  description: 'Room Id',
                  args: [
                    Arg(
                    name: 'roo'
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove participants from a room',
              options: [

                Option(
                  name: '--participants',
                  description: 'Collection of identities that will be removed from the room',
                  args: [
                    Arg(
                    name: 'participant'
                  )
                  ]
                ),
                Option(
                  name: '--room',
                  description: 'Room Id',
                  args: [
                    Arg(
                    name: 'roo'
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
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
      name: 'sms',
      description: 'Commands to manage SMS for a Communication Service resource',
      subcommands: [

        Subcommand(
          name: 'send',
          description: 'Sends an SMS from the sender phone number to the recipient(s) phone number(s)',
          options: [

            Option(
              name: '--message',
              description: 'The message in the SMS',
              args: [
                Arg(
                name: 'messag'
              )
              ]
            ),
            Option(
              name: '--recipient',
              description: 'The recipient(s) of the SMS',
              args: [
                Arg(
                name: 'recipien'
              )
              ]
            ),
            Option(
              name: '--sender',
              description: 'The sender of the SMS',
              args: [
                Arg(
                name: 'sende'
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'send-sms',
          description: 'Sends an SMS from the sender phone number to the recipient(s) phone number(s)',
          options: [

            Option(
              name: ['--message', '-m'],
              description: 'The message in the SMS',
              args: [
                Arg(
                name: 'messag'
              )
              ]
            ),
            Option(
              name: ['--recipient', '-r'],
              description: 'The recipient(s) of the SMS',
              args: [
                Arg(
                name: 'recipien'
              )
              ]
            ),
            Option(
              name: ['--sender', '-s'],
              description: 'The sender of the SMS',
              args: [
                Arg(
                name: 'sende'
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'user-identity',
      description: 'Commands to manage user identities and their tokens for a Communication Service resource',
      subcommands: [

        Subcommand(
          name: 'issue-access-token',
          description: 'Issues a new access token with the specified scopes for a given User Identity. If no User Identity is specified, creates a new User Identity as well',
          options: [

            Option(
              name: ['--scope', '-s'],
              description: 'List of scopes for an access token ex: chat/voip',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--connection-string',
              description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
              args: [
                Arg(
                name: 'connection-strin'
              )
              ]
            ),
            Option(
              name: ['--userid', '-u'],
              description: 'ACS identifier',
              args: [
                Arg(
                name: 'useri'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'token',
          description: 'Commands to manage user tokens for a Communication Service resource',
          subcommands: [

            Subcommand(
              name: 'get-for-teams-user',
              description: 'Exchanges an Azure Active Directory (Azure AD) access token of a Teams user for a new ACS Identity access token with a matching expiration time',
              options: [

                Option(
                  name: '--aad-token',
                  description: 'Azure AD access token of a Teams User',
                  args: [
                    Arg(
                    name: 'aad-toke'
                  )
                  ]
                ),
                Option(
                  name: '--aad-user',
                  description: 'Object ID of an Azure AD user(Teams User) to be verified against the OID claim in the Azure AD access token',
                  args: [
                    Arg(
                    name: 'aad-use'
                  )
                  ]
                ),
                Option(
                  name: '--client',
                  description: 'Client ID of an Azure AD applicationto be verified against the appId claim in the Azure AD access token',
                  args: [
                    Arg(
                    name: 'clien'
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'issue',
              description: 'Issues a new access token with the specified scopes for a given User Identity. If no User Identity is specified, creates a new User Identity as well',
              options: [

                Option(
                  name: '--scope',
                  description: 'List of scopes for an access token ex: chat/voip',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
                  )
                  ]
                ),
                Option(
                  name: '--user',
                  description: 'ACS identifier',
                  args: [
                    Arg(
                    name: 'use'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'revoke',
              description: 'Revokes all access tokens for the specific ACS Identity',
              options: [

                Option(
                  name: '--user',
                  description: 'ACS identifier',
                  args: [
                    Arg(
                    name: 'use'
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
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
          name: 'user',
          description: 'Commands to manage user identities for a Communication Service resource',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a new ACS Identity',
              options: [

                Option(
                  name: '--connection-string',
                  description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes an existing ACS Identity, revokes all tokens for that ACS Identity and deletes all associated data',
              options: [

                Option(
                  name: '--user',
                  description: 'ACS identifier',
                  args: [
                    Arg(
                    name: 'use'
                  )
                  ]
                ),
                Option(
                  name: '--connection-string',
                  description: 'Communication connection string. Environment variable: AZURE_COMMUNICATION_CONNECTION_STRING',
                  args: [
                    Arg(
                    name: 'connection-strin'
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
