// Auto-generated from TypeScript source: eventgrid.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `eventgrid` CLI
final FigSpec eventgridSpec = FigSpec(
  name: 'eventgrid',
  description: 'Manage Azure Event Grid topics, domains, domain topics, system topics partner topics, event subscriptions, system topic event subscriptions and partner topic event subscriptions',
  subcommands: [

    Subcommand(
      name: 'domain',
      description: 'Manage event domains',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a domain',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the domain',
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
              name: '--identity',
              description: 'Argument \'identity\' has been deprecated and will be removed in a future release. The managed identity type for the resource. Will be deprecated and replaced by --mi-system-assigned-identity in future',
              args: [
                Arg(
                name: 'identity',
                suggestions: [

                  FigSuggestion(name: 'noidentity'),
                  FigSuggestion(name: 'systemassigned')
                ]
              )
              ]
            ),
            Option(
              name: '--inbound-ip-rules',
              description: 'List of inbound IP rules',
              args: [
                Arg(
                name: 'inbound-ip-rule'
              )
              ]
            ),
            Option(
              name: '--input-mapping-default-values',
              description: 'When input-schema is specified as customeventschema, this parameter can be used to specify input mappings based on default values. You can use this parameter when your custom schema does not include a field that corresponds to one of the three fields supported by this parameter. Specify space separated mappings in \'key=value\' format. Allowed key names are \'subject\', \'eventtype\', \'dataversion\'. The corresponding value names should specify the default values to be used for the mapping and they will be used only when the published event doesn\'t have a valid mapping for a particular field',
              args: [
                Arg(
                name: 'input-mapping-default-value'
              )
              ]
            ),
            Option(
              name: '--input-mapping-fields',
              description: 'When input-schema is specified as customeventschema, this parameter is used to specify input mappings based on field names. Specify space separated mappings in \'key=value\' format. Allowed key names are \'id\', \'topic\', \'eventtime\', \'subject\', \'eventtype\', \'dataversion\'. The corresponding value names should specify the names of the fields in the custom input schema. If a mapping for either \'id\' or \'eventtime\' is not provided, Event Grid will auto-generate a default value for these two fields',
              args: [
                Arg(
                name: 'input-mapping-field'
              )
              ]
            ),
            Option(
              name: '--input-schema',
              description: 'Schema in which incoming events will be published to this topic/domain. If you specify customeventschema as the value for this parameter, you must also provide values for at least one of --input_mapping_default_values / --input_mapping_fields',
              args: [
                Arg(
                name: 'input-schema',
                suggestions: [

                  FigSuggestion(name: 'cloudeventschemav1_0'),
                  FigSuggestion(name: 'customeventschema'),
                  FigSuggestion(name: 'eventgridschema')
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
              name: '--mi-system-assigned',
              description: 'Presence of this param indicates that SystemAssigned managed identity will be used',
              args: [
                Arg(
                name: 'mi-system-assigne'
              )
              ]
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'Add user assigned identities when identityType is user or mixed. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --mi-user-assigned argument',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: '--public-network-access',
              description: 'This determines if traffic is allowed over public network. By default it is enabled. You can further restrict to specific IPs by configuring',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'disabled'),
                  FigSuggestion(name: 'enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'The Sku name of the resource',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'basic'),
                  FigSuggestion(name: 'premium')
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
          name: 'delete',
          description: 'Delete a domain',
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
              description: 'Name of the domain',
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
          description: 'List available domains',
          options: [

            Option(
              name: '--odata-query',
              description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
              args: [
                Arg(
                name: 'odata-quer'
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
          description: 'Get the details of a domain',
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
              description: 'Name of the domain',
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
          description: 'Update a domain',
          options: [

            Option(
              name: '--identity',
              description: 'Argument \'identity\' has been deprecated and will be removed in a future release. The managed identity type for the resource. Will be deprecated and replaced by --mi-system-assigned-identity in future',
              args: [
                Arg(
                name: 'identity',
                suggestions: [

                  FigSuggestion(name: 'noidentity'),
                  FigSuggestion(name: 'systemassigned')
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
              name: '--inbound-ip-rules',
              description: 'List of inbound IP rules',
              args: [
                Arg(
                name: 'inbound-ip-rule'
              )
              ]
            ),
            Option(
              name: '--mi-system-assigned',
              description: 'Presence of this param indicates that SystemAssigned managed identity will be used',
              args: [
                Arg(
                name: 'mi-system-assigne'
              )
              ]
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'Add user assigned identities when identityType is user or mixed. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --mi-user-assigned argument',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the domain',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--public-network-access',
              description: 'This determines if traffic is allowed over public network. By default it is enabled. You can further restrict to specific IPs by configuring',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'disabled'),
                  FigSuggestion(name: 'enabled')
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
              name: '--sku',
              description: 'The Sku name of the resource',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'basic'),
                  FigSuggestion(name: 'premium')
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
            )
          ]
        ),
        Subcommand(
          name: 'event-subscription',
          description: 'Manage event subscriptions of domain',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new event subscription for a domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the event subscription',
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
                  name: [
                    '--azure-active-directory-application-id-or-uri',
                    '--aad-app-id',
                  ],
                  description: 'The Azure Active Directory Application Id or Uri to get the access token that will be included as the bearer token in delivery requests. Applicable only for webhook as a destination',
                  args: [
                    Arg(
                    name: 'azure-active-directory-application-id-or-uri'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--azure-active-directory-tenant-id',
                    '--aad-tenant-id',
                  ],
                  description: 'The Azure Active Directory Tenant Id to get the access token that will be included as the bearer token in delivery requests. Applicable only for webhook as a destination',
                  args: [
                    Arg(
                    name: 'azure-active-directory-tenant-i'
                  )
                  ]
                ),
                Option(
                  name: '--advanced-filter',
                  description: 'An advanced filter enables filtering of events based on a specific event property',
                  args: [
                    Arg(
                    name: 'advanced-filte'
                  )
                  ]
                ),
                Option(
                  name: '--deadletter-endpoint',
                  description: 'The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription',
                  args: [
                    Arg(
                    name: 'deadletter-endpoin'
                  )
                  ]
                ),
                Option(
                  name: ['--delivery-attribute-mapping', '-d'],
                  description: 'Add delivery attribute mapping to send additional information via HTTP headers when delivering events. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --delivery-attribute-mapping argument',
                  args: [
                    Arg(
                    name: 'delivery-attribute-mappin'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--enable-advanced-filtering-on-arrays',
                    '--enable-af-arr',
                  ],
                  description: 'Allows advanced filters to be evaluated against an array of values instead of expecting a singular value',
                  args: [
                    Arg(
                    name: 'enable-advanced-filtering-on-arrays',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Endpoint where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint. It is expected that the destination endpoint to be already created and available for use before executing any Event Grid command',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint-type',
                  description: 'The type of the destination endpoint',
                  args: [
                    Arg(
                    name: 'endpoint-type',
                    suggestions: [

                      FigSuggestion(name: 'azurefunction'),
                      FigSuggestion(name: 'eventhub'),
                      FigSuggestion(name: 'hybridconnection'),
                      FigSuggestion(name: 'servicebusqueue'),
                      FigSuggestion(name: 'servicebustopic'),
                      FigSuggestion(name: 'storagequeue'),
                      FigSuggestion(name: 'webhook')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-delivery-schema',
                  description: 'The schema in which events should be delivered for this event subscription. By default, events will be delivered in the same schema in which they are published (based on the corresponding topic\'s input schema)',
                  args: [
                    Arg(
                    name: 'event-delivery-schema',
                    suggestions: [

                      FigSuggestion(name: 'cloudeventschemav1_0'),
                      FigSuggestion(name: 'custominputschema'),
                      FigSuggestion(name: 'eventgridschema')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-ttl',
                  description: 'Event time to live (in minutes). Must be a number between 1 and 1440',
                  args: [
                    Arg(
                    name: 'event-tt'
                  )
                  ]
                ),
                Option(
                  name: '--expiration-date',
                  description: 'Date or datetime (in UTC, e.g. \'2018-11-30T11:59:59+00:00\' or \'2018-11-30\') after which the event subscription would expire. By default, there is no expiration for the event subscription',
                  args: [
                    Arg(
                    name: 'expiration-dat'
                  )
                  ]
                ),
                Option(
                  name: '--included-event-types',
                  description: 'A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command \'az eventgrid topic-type list-event-types\'',
                  args: [
                    Arg(
                    name: 'included-event-type'
                  )
                  ]
                ),
                Option(
                  name: '--labels',
                  description: 'A space-separated list of labels to associate with this event subscription',
                  args: [
                    Arg(
                    name: 'label'
                  )
                  ]
                ),
                Option(
                  name: '--max-delivery-attempts',
                  description: 'Maximum number of delivery attempts. Must be a number between 1 and 30',
                  args: [
                    Arg(
                    name: 'max-delivery-attempt'
                  )
                  ]
                ),
                Option(
                  name: '--max-events-per-batch',
                  description: 'Maximum number of events in a batch. Must be a number between 1 and 5000',
                  args: [
                    Arg(
                    name: 'max-events-per-batc'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--preferred-batch-size-in-kilobytes',
                    '--pref-batch-size-kb',
                  ],
                  description: 'Preferred batch size in kilobytes. Must be a number between 1 and 1024',
                  args: [
                    Arg(
                    name: 'preferred-batch-size-in-kilobyte'
                  )
                  ]
                ),
                Option(
                  name: ['--storage-queue-msg-ttl', '--qttl'],
                  description: 'Storage queue message time to live in seconds',
                  args: [
                    Arg(
                    name: 'storage-queue-msg-tt'
                  )
                  ]
                ),
                Option(
                  name: '--subject-begins-with',
                  description: 'An optional string to filter events for an event subscription based on a prefix. Wildcard characters are not supported',
                  args: [
                    Arg(
                    name: 'subject-begins-wit'
                  )
                  ]
                ),
                Option(
                  name: '--subject-case-sensitive',
                  description: 'Specify to indicate whether the subject fields should be compared in a case sensitive manner. True if flag present'
                ),
                Option(
                  name: '--subject-ends-with',
                  description: 'An optional string to filter events for an event subscription based on a suffix. Wildcard characters are not supported',
                  args: [
                    Arg(
                    name: 'subject-ends-wit'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an event subscription of a domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the event subscription',
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
              description: 'List event subscriptions of a specific domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  name: '--odata-query',
                  description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
                  args: [
                    Arg(
                    name: 'odata-quer'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of an event subscription of a domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the event subscription',
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
                  name: ['--include-full-endpoint-url', '--full-ed-url'],
                  description: 'Specify to indicate whether the full endpoint URL should be returned. True if flag present'
                ),
                Option(
                  name: [
                    '--include-static-delivery-attribute-secret',
                    '--include-attrib-secret',
                  ],
                  description: 'Indicate whether any static delivery attribute secrets should be returned. True if flag present'
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an event subscription of a domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the event subscription',
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
                  name: '--advanced-filter',
                  description: 'An advanced filter enables filtering of events based on a specific event property',
                  args: [
                    Arg(
                    name: 'advanced-filte'
                  )
                  ]
                ),
                Option(
                  name: '--deadletter-endpoint',
                  description: 'The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription',
                  args: [
                    Arg(
                    name: 'deadletter-endpoin'
                  )
                  ]
                ),
                Option(
                  name: ['--delivery-attribute-mapping', '-d'],
                  description: 'Add delivery attribute mapping to send additional information via HTTP headers when delivering events. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --delivery-attribute-mapping argument',
                  args: [
                    Arg(
                    name: 'delivery-attribute-mappin'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--enable-advanced-filtering-on-arrays',
                    '--enable-af-arr',
                  ],
                  description: 'Allows advanced filters to be evaluated against an array of values instead of expecting a singular value',
                  args: [
                    Arg(
                    name: 'enable-advanced-filtering-on-arrays',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Endpoint where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint. It is expected that the destination endpoint to be already created and available for use before executing any Event Grid command',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--included-event-types',
                  description: 'A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command \'az eventgrid topic-type list-event-types\'',
                  args: [
                    Arg(
                    name: 'included-event-type'
                  )
                  ]
                ),
                Option(
                  name: '--labels',
                  description: 'A space-separated list of labels to associate with this event subscription',
                  args: [
                    Arg(
                    name: 'label'
                  )
                  ]
                ),
                Option(
                  name: ['--storage-queue-msg-ttl', '--qttl'],
                  description: 'Storage queue message time to live in seconds',
                  args: [
                    Arg(
                    name: 'storage-queue-msg-tt'
                  )
                  ]
                ),
                Option(
                  name: '--subject-begins-with',
                  description: 'An optional string to filter events for an event subscription based on a prefix. Wildcard characters are not supported',
                  args: [
                    Arg(
                    name: 'subject-begins-wit'
                  )
                  ]
                ),
                Option(
                  name: '--subject-ends-with',
                  description: 'An optional string to filter events for an event subscription based on a suffix. Wildcard characters are not supported',
                  args: [
                    Arg(
                    name: 'subject-ends-wit'
                  )
                  ]
                ),
                Option(
                  name: '--update-endpoint-type',
                  description: 'The type of the destination endpoint',
                  args: [
                    Arg(
                    name: 'update-endpoint-type',
                    suggestions: [

                      FigSuggestion(name: 'azurefunction'),
                      FigSuggestion(name: 'eventhub'),
                      FigSuggestion(name: 'hybridconnection'),
                      FigSuggestion(name: 'servicebusqueue'),
                      FigSuggestion(name: 'servicebustopic'),
                      FigSuggestion(name: 'storagequeue'),
                      FigSuggestion(name: 'webhook')
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'key',
          description: 'Manage shared access keys of a domain',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List shared access keys of a domain',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the domain',
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
              description: 'Regenerate a shared access key of a domain',
              options: [

                Option(
                  name: '--key-name',
                  description: 'Key name to regenerate key1 or key2',
                  args: [
                    Arg(
                    name: 'key-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the domain',
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
          name: 'private-endpoint-connection',
          description: 'Manage private endpoint connection resources of a domain',
          subcommands: [

            Subcommand(
              name: 'approve',
              description: 'Approve a private endpoint connection request for a domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the private endpoint connection',
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
                  description: 'Comments for the approval',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a private endpoint connection for a domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  description: 'Name of the private endpoint connection',
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
              description: 'List the properties of all the private endpoint connections for a domain',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the domain',
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
              name: 'reject',
              description: 'Reject a private endpoint connection request for a domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the private endpoint connection',
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
                  description: 'Comments for the rejection',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Display the properties of a private endpoint connection for a domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  description: 'Name of the private endpoint connection',
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
            )
          ]
        ),
        Subcommand(
          name: 'private-link-resource',
          description: 'Manage private link resource of a domain',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the properties of all the private link resources for a domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
              description: 'Display the properties of a private link resource for a domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  description: 'Name of the private link resource',
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
            )
          ]
        ),
        Subcommand(
          name: 'topic',
          description: 'Manage event domain topics',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a domain topic under a domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the domain topic',
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
              name: 'delete',
              description: 'Delete a domain topic under a domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  description: 'Name of the domain topic',
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
              description: 'List available topics in a domain',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  name: '--odata-query',
                  description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
                  args: [
                    Arg(
                    name: 'odata-quer'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a domain topic',
              options: [

                Option(
                  name: '--domain-name',
                  description: 'Name of the domain',
                  args: [
                    Arg(
                    name: 'domain-nam'
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
                  description: 'Name of the domain topic',
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
              name: 'event-subscription',
              description: 'Manage event subscriptions of a domain topic',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a new event subscription for a domain topic',
                  options: [

                    Option(
                      name: '--domain-name',
                      description: 'Name of the domain',
                      args: [
                        Arg(
                        name: 'domain-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--domain-topic-name',
                      description: 'Name of the domain topic',
                      args: [
                        Arg(
                        name: 'domain-topic-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the event subscription',
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
                      name: [
                        '--azure-active-directory-application-id-or-uri',
                        '--aad-app-id',
                      ],
                      description: 'The Azure Active Directory Application Id or Uri to get the access token that will be included as the bearer token in delivery requests. Applicable only for webhook as a destination',
                      args: [
                        Arg(
                        name: 'azure-active-directory-application-id-or-uri'
                      )
                      ]
                    ),
                    Option(
                      name: [
                        '--azure-active-directory-tenant-id',
                        '--aad-tenant-id',
                      ],
                      description: 'The Azure Active Directory Tenant Id to get the access token that will be included as the bearer token in delivery requests. Applicable only for webhook as a destination',
                      args: [
                        Arg(
                        name: 'azure-active-directory-tenant-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--advanced-filter',
                      description: 'An advanced filter enables filtering of events based on a specific event property',
                      args: [
                        Arg(
                        name: 'advanced-filte'
                      )
                      ]
                    ),
                    Option(
                      name: '--deadletter-endpoint',
                      description: 'The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription',
                      args: [
                        Arg(
                        name: 'deadletter-endpoin'
                      )
                      ]
                    ),
                    Option(
                      name: ['--delivery-attribute-mapping', '-d'],
                      description: 'Add delivery attribute mapping to send additional information via HTTP headers when delivering events. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --delivery-attribute-mapping argument',
                      args: [
                        Arg(
                        name: 'delivery-attribute-mappin'
                      )
                      ]
                    ),
                    Option(
                      name: [
                        '--enable-advanced-filtering-on-arrays',
                        '--enable-af-arr',
                      ],
                      description: 'Allows advanced filters to be evaluated against an array of values instead of expecting a singular value',
                      args: [
                        Arg(
                        name: 'enable-advanced-filtering-on-arrays',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--endpoint',
                      description: 'Endpoint where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint. It is expected that the destination endpoint to be already created and available for use before executing any Event Grid command',
                      args: [
                        Arg(
                        name: 'endpoin'
                      )
                      ]
                    ),
                    Option(
                      name: '--endpoint-type',
                      description: 'The type of the destination endpoint',
                      args: [
                        Arg(
                        name: 'endpoint-type',
                        suggestions: [

                          FigSuggestion(name: 'azurefunction'),
                          FigSuggestion(name: 'eventhub'),
                          FigSuggestion(name: 'hybridconnection'),
                          FigSuggestion(name: 'servicebusqueue'),
                          FigSuggestion(name: 'servicebustopic'),
                          FigSuggestion(name: 'storagequeue'),
                          FigSuggestion(name: 'webhook')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--event-delivery-schema',
                      description: 'The schema in which events should be delivered for this event subscription. By default, events will be delivered in the same schema in which they are published (based on the corresponding topic\'s input schema)',
                      args: [
                        Arg(
                        name: 'event-delivery-schema',
                        suggestions: [

                          FigSuggestion(name: 'cloudeventschemav1_0'),
                          FigSuggestion(name: 'custominputschema'),
                          FigSuggestion(name: 'eventgridschema')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--event-ttl',
                      description: 'Event time to live (in minutes). Must be a number between 1 and 1440',
                      args: [
                        Arg(
                        name: 'event-tt'
                      )
                      ]
                    ),
                    Option(
                      name: '--expiration-date',
                      description: 'Date or datetime (in UTC, e.g. \'2018-11-30T11:59:59+00:00\' or \'2018-11-30\') after which the event subscription would expire. By default, there is no expiration for the event subscription',
                      args: [
                        Arg(
                        name: 'expiration-dat'
                      )
                      ]
                    ),
                    Option(
                      name: '--included-event-types',
                      description: 'A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command \'az eventgrid topic-type list-event-types\'',
                      args: [
                        Arg(
                        name: 'included-event-type'
                      )
                      ]
                    ),
                    Option(
                      name: '--labels',
                      description: 'A space-separated list of labels to associate with this event subscription',
                      args: [
                        Arg(
                        name: 'label'
                      )
                      ]
                    ),
                    Option(
                      name: '--max-delivery-attempts',
                      description: 'Maximum number of delivery attempts. Must be a number between 1 and 30',
                      args: [
                        Arg(
                        name: 'max-delivery-attempt'
                      )
                      ]
                    ),
                    Option(
                      name: '--max-events-per-batch',
                      description: 'Maximum number of events in a batch. Must be a number between 1 and 5000',
                      args: [
                        Arg(
                        name: 'max-events-per-batc'
                      )
                      ]
                    ),
                    Option(
                      name: [
                        '--preferred-batch-size-in-kilobytes',
                        '--pref-batch-size-kb',
                      ],
                      description: 'Preferred batch size in kilobytes. Must be a number between 1 and 1024',
                      args: [
                        Arg(
                        name: 'preferred-batch-size-in-kilobyte'
                      )
                      ]
                    ),
                    Option(
                      name: ['--storage-queue-msg-ttl', '--qttl'],
                      description: 'Storage queue message time to live in seconds',
                      args: [
                        Arg(
                        name: 'storage-queue-msg-tt'
                      )
                      ]
                    ),
                    Option(
                      name: '--subject-begins-with',
                      description: 'An optional string to filter events for an event subscription based on a prefix. Wildcard characters are not supported',
                      args: [
                        Arg(
                        name: 'subject-begins-wit'
                      )
                      ]
                    ),
                    Option(
                      name: '--subject-case-sensitive',
                      description: 'Specify to indicate whether the subject fields should be compared in a case sensitive manner. True if flag present'
                    ),
                    Option(
                      name: '--subject-ends-with',
                      description: 'An optional string to filter events for an event subscription based on a suffix. Wildcard characters are not supported',
                      args: [
                        Arg(
                        name: 'subject-ends-wit'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete an event subscription of a domain topic',
                  options: [

                    Option(
                      name: '--domain-name',
                      description: 'Name of the domain',
                      args: [
                        Arg(
                        name: 'domain-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--domain-topic-name',
                      description: 'Name of the domain topic',
                      args: [
                        Arg(
                        name: 'domain-topic-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the event subscription',
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
                  description: 'List event subscriptions of a specific domain topic',
                  options: [

                    Option(
                      name: '--domain-name',
                      description: 'Name of the domain',
                      args: [
                        Arg(
                        name: 'domain-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--domain-topic-name',
                      description: 'Name of the domain topic',
                      args: [
                        Arg(
                        name: 'domain-topic-nam'
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
                      name: '--odata-query',
                      description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
                      args: [
                        Arg(
                        name: 'odata-quer'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the details of an event subscription of a domain topic',
                  options: [

                    Option(
                      name: '--domain-name',
                      description: 'Name of the domain',
                      args: [
                        Arg(
                        name: 'domain-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--domain-topic-name',
                      description: 'Name of the domain topic',
                      args: [
                        Arg(
                        name: 'domain-topic-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the event subscription',
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
                      name: ['--include-full-endpoint-url', '--full-ed-url'],
                      description: 'Specify to indicate whether the full endpoint URL should be returned. True if flag present'
                    ),
                    Option(
                      name: [
                        '--include-static-delivery-attribute-secret',
                        '--include-attrib-secret',
                      ],
                      description: 'Indicate whether any static delivery attribute secrets should be returned. True if flag present'
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update an event subscription of a domain topic',
                  options: [

                    Option(
                      name: '--domain-name',
                      description: 'Name of the domain',
                      args: [
                        Arg(
                        name: 'domain-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--domain-topic-name',
                      description: 'Name of the domain topic',
                      args: [
                        Arg(
                        name: 'domain-topic-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the event subscription',
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
                      name: '--advanced-filter',
                      description: 'An advanced filter enables filtering of events based on a specific event property',
                      args: [
                        Arg(
                        name: 'advanced-filte'
                      )
                      ]
                    ),
                    Option(
                      name: '--deadletter-endpoint',
                      description: 'The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription',
                      args: [
                        Arg(
                        name: 'deadletter-endpoin'
                      )
                      ]
                    ),
                    Option(
                      name: ['--delivery-attribute-mapping', '-d'],
                      description: 'Add delivery attribute mapping to send additional information via HTTP headers when delivering events. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --delivery-attribute-mapping argument',
                      args: [
                        Arg(
                        name: 'delivery-attribute-mappin'
                      )
                      ]
                    ),
                    Option(
                      name: [
                        '--enable-advanced-filtering-on-arrays',
                        '--enable-af-arr',
                      ],
                      description: 'Allows advanced filters to be evaluated against an array of values instead of expecting a singular value',
                      args: [
                        Arg(
                        name: 'enable-advanced-filtering-on-arrays',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--endpoint',
                      description: 'Endpoint where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint. It is expected that the destination endpoint to be already created and available for use before executing any Event Grid command',
                      args: [
                        Arg(
                        name: 'endpoin'
                      )
                      ]
                    ),
                    Option(
                      name: '--included-event-types',
                      description: 'A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command \'az eventgrid topic-type list-event-types\'',
                      args: [
                        Arg(
                        name: 'included-event-type'
                      )
                      ]
                    ),
                    Option(
                      name: '--labels',
                      description: 'A space-separated list of labels to associate with this event subscription',
                      args: [
                        Arg(
                        name: 'label'
                      )
                      ]
                    ),
                    Option(
                      name: ['--storage-queue-msg-ttl', '--qttl'],
                      description: 'Storage queue message time to live in seconds',
                      args: [
                        Arg(
                        name: 'storage-queue-msg-tt'
                      )
                      ]
                    ),
                    Option(
                      name: '--subject-begins-with',
                      description: 'An optional string to filter events for an event subscription based on a prefix. Wildcard characters are not supported',
                      args: [
                        Arg(
                        name: 'subject-begins-wit'
                      )
                      ]
                    ),
                    Option(
                      name: '--subject-ends-with',
                      description: 'An optional string to filter events for an event subscription based on a suffix. Wildcard characters are not supported',
                      args: [
                        Arg(
                        name: 'subject-ends-wit'
                      )
                      ]
                    ),
                    Option(
                      name: '--update-endpoint-type',
                      description: 'The type of the destination endpoint',
                      args: [
                        Arg(
                        name: 'update-endpoint-type',
                        suggestions: [

                          FigSuggestion(name: 'azurefunction'),
                          FigSuggestion(name: 'eventhub'),
                          FigSuggestion(name: 'hybridconnection'),
                          FigSuggestion(name: 'servicebusqueue'),
                          FigSuggestion(name: 'servicebustopic'),
                          FigSuggestion(name: 'storagequeue'),
                          FigSuggestion(name: 'webhook')
                        ]
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
      name: 'event-subscription',
      description: 'Manage event subscriptions.\n\n\t\tManage event subscriptions for an Event Grid topic, domain, domain topic, Azure subscription, resource group or for any other Azure resource that supports event notifications',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new event subscription',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the event subscription',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--azure-active-directory-tenant-id', '--aad-tenant-id'],
              description: 'The Azure Active Directory Tenant Id to get the access token that will be included as the bearer token in delivery requests. Applicable only for webhook as a destination',
              args: [
                Arg(
                name: 'azure-active-directory-tenant-i'
              )
              ]
            ),
            Option(
              name: '--advanced-filter',
              description: 'An advanced filter enables filtering of events based on a specific event property',
              args: [
                Arg(
                name: 'advanced-filte'
              )
              ]
            ),
            Option(
              name: '--azure-active-directory-application-id-or-uri',
              description: 'The Azure Active Directory Application Id or Uri to get the access token that will be included as the bearer token in delivery requests. Applicable only for webhook as a destination',
              args: [
                Arg(
                name: 'azure-active-directory-application-id-or-ur'
              )
              ]
            ),
            Option(
              name: '--deadletter-endpoint',
              description: 'The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription',
              args: [
                Arg(
                name: 'deadletter-endpoin'
              )
              ]
            ),
            Option(
              name: '--deadletter-identity',
              description: 'The identity type of the deadletter destination resource',
              args: [
                Arg(
                name: 'deadletter-identity',
                suggestions: [

                  FigSuggestion(name: 'systemassigned')
                ]
              )
              ]
            ),
            Option(
              name: '--deadletter-identity-endpoint',
              description: 'The Azure resource ID of an Azure Storage blob container destination with identity where EventGrid should deadletter undeliverable events for this event subscription',
              args: [
                Arg(
                name: 'deadletter-identity-endpoin'
              )
              ]
            ),
            Option(
              name: '--delivery-attribute-mapping',
              description: 'Add delivery attribute mapping to send additional information via HTTP headers when delivering events. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --delivery-attribute-mapping argument',
              args: [
                Arg(
                name: 'delivery-attribute-mappin'
              )
              ]
            ),
            Option(
              name: '--delivery-identity',
              description: 'The identity type of the delivery destination resource (e.g., storage queue, or eventhub)',
              args: [
                Arg(
                name: 'delivery-identity',
                suggestions: [

                  FigSuggestion(name: 'systemassigned')
                ]
              )
              ]
            ),
            Option(
              name: '--delivery-identity-endpoint',
              description: 'Endpoint with identity where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint',
              args: [
                Arg(
                name: 'delivery-identity-endpoin'
              )
              ]
            ),
            Option(
              name: '--delivery-identity-endpoint-type',
              description: 'The type of the destination endpoint with resource identity',
              args: [
                Arg(
                name: 'delivery-identity-endpoint-type',
                suggestions: [

                  FigSuggestion(name: 'azurefunction'),
                  FigSuggestion(name: 'eventhub'),
                  FigSuggestion(name: 'hybridconnection'),
                  FigSuggestion(name: 'servicebusqueue'),
                  FigSuggestion(name: 'servicebustopic'),
                  FigSuggestion(name: 'storagequeue'),
                  FigSuggestion(name: 'webhook')
                ]
              )
              ]
            ),
            Option(
              name: [
                '--enable-advanced-filtering-on-arrays',
                '--enable-af-arr',
              ],
              description: 'Allows advanced filters to be evaluated against an array of values instead of expecting a singular value',
              args: [
                Arg(
                name: 'enable-advanced-filtering-on-arrays',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'Endpoint where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint. It is expected that the destination endpoint to be already created and available for use before executing any Event Grid command',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--endpoint-type',
              description: 'The type of the destination endpoint',
              args: [
                Arg(
                name: 'endpoint-typ'
              )
              ]
            ),
            Option(
              name: '--event-delivery-schema',
              description: 'The schema in which events should be delivered for this event subscription. By default, events will be delivered in the same schema in which they are published (based on the corresponding topic\'s input schema)',
              args: [
                Arg(
                name: 'event-delivery-schema',
                suggestions: [

                  FigSuggestion(name: 'cloudeventschemav1_0'),
                  FigSuggestion(name: 'custominputschema'),
                  FigSuggestion(name: 'eventgridschema')
                ]
              )
              ]
            ),
            Option(
              name: '--event-ttl',
              description: 'Event time to live (in minutes). Must be a number between 1 and 1440',
              args: [
                Arg(
                name: 'event-tt'
              )
              ]
            ),
            Option(
              name: '--expiration-date',
              description: 'Date or datetime (in UTC, e.g. \'2018-11-30T11:59:59+00:00\' or \'2018-11-30\') after which the event subscription would expire. By default, there is no expiration for the event subscription',
              args: [
                Arg(
                name: 'expiration-dat'
              )
              ]
            ),
            Option(
              name: '--included-event-types',
              description: 'A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command \'az eventgrid topic-type list-event-types\'',
              args: [
                Arg(
                name: 'included-event-type'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'A space-separated list of labels to associate with this event subscription',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: '--max-delivery-attempts',
              description: 'Maximum number of delivery attempts. Must be a number between 1 and 30',
              args: [
                Arg(
                name: 'max-delivery-attempt'
              )
              ]
            ),
            Option(
              name: '--max-events-per-batch',
              description: 'Maximum number of events in a batch. Must be a number between 1 and 5000',
              args: [
                Arg(
                name: 'max-events-per-batc'
              )
              ]
            ),
            Option(
              name: '--preferred-batch-size-in-kilobytes',
              description: 'Preferred batch size in kilobytes. Must be a number between 1 and 1024',
              args: [
                Arg(
                name: 'preferred-batch-size-in-kilobyte'
              )
              ]
            ),
            Option(
              name: ['--storage-queue-msg-ttl', '--qttl'],
              description: 'Storage queue message time to live in seconds',
              args: [
                Arg(
                name: 'storage-queue-msg-tt'
              )
              ]
            ),
            Option(
              name: '--source-resource-id',
              description: 'Fully qualified identifier of the Azure resource to which the event subscription needs to be created',
              args: [
                Arg(
                name: 'source-resource-i'
              )
              ]
            ),
            Option(
              name: '--subject-begins-with',
              description: 'An optional string to filter events for an event subscription based on a prefix. Wildcard characters are not supported',
              args: [
                Arg(
                name: 'subject-begins-wit'
              )
              ]
            ),
            Option(
              name: '--subject-case-sensitive',
              description: 'Specify to indicate whether the subject fields should be compared in a case sensitive manner. True if flag present'
            ),
            Option(
              name: '--subject-ends-with',
              description: 'An optional string to filter events for an event subscription based on a suffix. Wildcard characters are not supported',
              args: [
                Arg(
                name: 'subject-ends-wit'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an event subscription',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the event subscription',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--source-resource-id',
              description: 'Fully qualified identifier of the Azure resource whose event subscription needs to be deleted',
              args: [
                Arg(
                name: 'source-resource-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List event subscriptions',
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
              name: '--odata-query',
              description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
              args: [
                Arg(
                name: 'odata-quer'
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
              name: '--source-resource-id',
              description: 'Fully qualified identifier of the Azure resource whose event subscription needs to be listed',
              args: [
                Arg(
                name: 'source-resource-i'
              )
              ]
            ),
            Option(
              name: '--topic-type-name',
              description: 'Name of the topic-type whose event subscriptions need to be listed. When this is specified, you must also specify --location',
              args: [
                Arg(
                name: 'topic-type-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of an event subscription',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the event subscription',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: [
                '--include-static-delivery-attribute-secret',
                '--include-attrib-secret',
              ],
              description: 'Indicate whether any static delivery attribute secrets should be returned. True if flag present'
            ),
            Option(
              name: '--include-full-endpoint-url',
              description: 'Specify to indicate whether the full endpoint URL should be returned. True if flag present'
            ),
            Option(
              name: '--source-resource-id',
              description: 'Fully qualified identifier of the Azure resource whose event subscription needs to be shown',
              args: [
                Arg(
                name: 'source-resource-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an event subscription',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the event subscription',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
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
              name: '--advanced-filter',
              description: 'An advanced filter enables filtering of events based on a specific event property',
              args: [
                Arg(
                name: 'advanced-filte'
              )
              ]
            ),
            Option(
              name: '--deadletter-endpoint',
              description: 'The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription',
              args: [
                Arg(
                name: 'deadletter-endpoin'
              )
              ]
            ),
            Option(
              name: '--deadletter-identity',
              description: 'The identity type of the deadletter destination resource',
              args: [
                Arg(
                name: 'deadletter-identity',
                suggestions: [

                  FigSuggestion(name: 'systemassigned')
                ]
              )
              ]
            ),
            Option(
              name: '--deadletter-identity-endpoint',
              description: 'The Azure resource ID of an Azure Storage blob container destination with identity where EventGrid should deadletter undeliverable events for this event subscription',
              args: [
                Arg(
                name: 'deadletter-identity-endpoin'
              )
              ]
            ),
            Option(
              name: '--delivery-attribute-mapping',
              description: 'Add delivery attribute mapping to send additional information via HTTP headers when delivering events. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --delivery-attribute-mapping argument',
              args: [
                Arg(
                name: 'delivery-attribute-mappin'
              )
              ]
            ),
            Option(
              name: '--delivery-identity',
              description: 'The identity type of the delivery destination resource (e.g., storage queue, or eventhub)',
              args: [
                Arg(
                name: 'delivery-identity',
                suggestions: [

                  FigSuggestion(name: 'systemassigned')
                ]
              )
              ]
            ),
            Option(
              name: '--delivery-identity-endpoint',
              description: 'Endpoint with identity where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint',
              args: [
                Arg(
                name: 'delivery-identity-endpoin'
              )
              ]
            ),
            Option(
              name: '--delivery-identity-endpoint-type',
              description: 'The type of the destination endpoint with resource identity',
              args: [
                Arg(
                name: 'delivery-identity-endpoint-type',
                suggestions: [

                  FigSuggestion(name: 'azurefunction'),
                  FigSuggestion(name: 'eventhub'),
                  FigSuggestion(name: 'hybridconnection'),
                  FigSuggestion(name: 'servicebusqueue'),
                  FigSuggestion(name: 'servicebustopic'),
                  FigSuggestion(name: 'storagequeue'),
                  FigSuggestion(name: 'webhook')
                ]
              )
              ]
            ),
            Option(
              name: [
                '--enable-advanced-filtering-on-arrays',
                '--enable-af-arr',
              ],
              description: 'Allows advanced filters to be evaluated against an array of values instead of expecting a singular value',
              args: [
                Arg(
                name: 'enable-advanced-filtering-on-arrays',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'Endpoint where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint. It is expected that the destination endpoint to be already created and available for use before executing any Event Grid command',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--endpoint-type',
              description: 'The type of the destination endpoint',
              args: [
                Arg(
                name: 'endpoint-typ'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--included-event-types',
              description: 'A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command \'az eventgrid topic-type list-event-types\'',
              args: [
                Arg(
                name: 'included-event-type'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'A space-separated list of labels to associate with this event subscription',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: ['--storage-queue-msg-ttl', '--qttl'],
              description: 'Storage queue message time to live in seconds',
              args: [
                Arg(
                name: 'storage-queue-msg-tt'
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
              name: '--set',
              description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
              args: [
                Arg(
                name: 'se'
              )
              ]
            ),
            Option(
              name: '--source-resource-id',
              description: 'Fully qualified identifier of the Azure resource whose event subscription needs to be updated',
              args: [
                Arg(
                name: 'source-resource-i'
              )
              ]
            ),
            Option(
              name: '--subject-begins-with',
              description: 'An optional string to filter events for an event subscription based on a prefix. Wildcard characters are not supported',
              args: [
                Arg(
                name: 'subject-begins-wit'
              )
              ]
            ),
            Option(
              name: '--subject-ends-with',
              description: 'An optional string to filter events for an event subscription based on a suffix. Wildcard characters are not supported',
              args: [
                Arg(
                name: 'subject-ends-wit'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'extension-topic',
      description: 'Manage Azure Event Grid extension topics',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Get the details of an extension topic',
          options: [

            Option(
              name: '--scope',
              description: 'The identifier of the resource to which extension topic is queried. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace. For example, use \'/subscriptions/{subscriptionId}/\' for a subscription, \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}\' for a resource group, and \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}\' for Azure resource',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'partner',
      description: 'Manage partner resources',
      subcommands: [

        Subcommand(
          name: 'configuration',
          description: 'Manage partner configurations',
          subcommands: [

            Subcommand(
              name: 'authorize',
              description: 'Authorize a partner configuration',
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
                  name: ['--authorization-expiration-date', '--auth-exp-date'],
                  description: 'Date or datetime in UTC ISO 8601 format (e.g., \'2022-02-17T01:59:59+00:00\' or \'2022-02-17\') which is the expiration time of the partner authorization. If this timer expires, any request from this partner to create, update or delete resources in subscriber\'s context will fail. If specified, the allowed values are between 1 to the value of defaultMaximumExpirationTimeInDays specified in PartnerConfiguration. If not specified, the default value will be the value of defaultMaximumExpirationTimeInDays specified in PartnerConfiguration or 7 if this value is not specified',
                  args: [
                    Arg(
                    name: 'authorization-expiration-dat'
                  )
                  ]
                ),
                Option(
                  name: '--partner-name',
                  description: 'Official name of the partner',
                  args: [
                    Arg(
                    name: 'partner-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--partner-registration-immutable-id', '--pr-id'],
                  description: 'The immutable ID of the corresponding partner registration',
                  args: [
                    Arg(
                    name: 'partner-registration-immutable-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'create',
              description: 'Create a partner configuration',
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
                  name: '--authorized-partner',
                  description: 'Add authorized partner information. Multiple authorized partners can be specified by using more than one --authorized-partner argument',
                  args: [
                    Arg(
                    name: 'authorized-partne'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--default-maximum-expiration-time-in-days',
                    '--max-exp-days',
                  ],
                  description: 'Time used to validate the authorization expiration time for each authorized partner. If DefaultMaximumExpirationTimeInDays is not specified, the default is 7 days. Otherwise, allowed values are between 1 and 365 days',
                  args: [
                    Arg(
                    name: 'default-maximum-expiration-time-in-day'
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
              description: 'Delete a partner configuration',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List available partner configurations',
              options: [

                Option(
                  name: '--odata-query',
                  description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
                  args: [
                    Arg(
                    name: 'odata-quer'
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
              description: 'Get the details of a partner configuration',
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
              name: 'unauthorize',
              description: 'Unauthorize a partner configuration',
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
                  name: ['--authorization-expiration-date', '--auth-exp-date'],
                  description: 'Date or datetime in UTC ISO 8601 format (e.g., \'2022-02-17T01:59:59+00:00\' or \'2022-02-17\') which is the expiration time of the partner authorization. If this timer expires, any request from this partner to create, update or delete resources in subscriber\'s context will fail. If specified, the allowed values are between 1 to the value of defaultMaximumExpirationTimeInDays specified in PartnerConfiguration. If not specified, the default value will be the value of defaultMaximumExpirationTimeInDays specified in PartnerConfiguration or 7 if this value is not specified',
                  args: [
                    Arg(
                    name: 'authorization-expiration-dat'
                  )
                  ]
                ),
                Option(
                  name: '--partner-name',
                  description: 'Official name of the partner',
                  args: [
                    Arg(
                    name: 'partner-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--partner-registration-immutable-id', '--pr-id'],
                  description: 'The immutable ID of the corresponding partner registration',
                  args: [
                    Arg(
                    name: 'partner-registration-immutable-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a partner configuration',
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
                  name: [
                    '--default-maximum-expiration-time-in-days',
                    '--max-exp-days',
                  ],
                  description: 'Time used to validate the authorization expiration time for each authorized partner. If DefaultMaximumExpirationTimeInDays is not specified, the default is 7 days. Otherwise, allowed values are between 1 and 365 days',
                  args: [
                    Arg(
                    name: 'default-maximum-expiration-time-in-day'
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
          name: 'destination',
          description: 'Manage partner destinations',
          subcommands: [

            Subcommand(
              name: 'activate',
              description: 'Activate a partner destination',
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
                  description: 'Name of the partner destination',
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
              name: 'create',
              description: 'Create a partner destination',
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
                  description: 'Name of the partner destination',
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
                  name: ['--activation-expiration-date', '--act-exp-date'],
                  description: 'Date or datetime in UTC ISO 8601 format (e.g., \'2022-02-17T01:59:59+00:00\' or \'2022-02-17\') which is the expiration time of the partner destination. If this timer expires and the partner destination was never activated, the partner destination and corresponding channel are deleted',
                  args: [
                    Arg(
                    name: 'activation-expiration-dat'
                  )
                  ]
                ),
                Option(
                  name: ['--endpoint-service-context', '--ed-serv-cont'],
                  description: 'Endpoint context associated with this partner destination',
                  args: [
                    Arg(
                    name: 'endpoint-service-contex'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint-base-url',
                  description: 'Endpoint Base URL of the partner destination',
                  args: [
                    Arg(
                    name: 'endpoint-base-ur'
                  )
                  ]
                ),
                Option(
                  name: '--message-for-activation',
                  description: 'Context or helpful message that can be used during the approval process',
                  args: [
                    Arg(
                    name: 'message-for-activatio'
                  )
                  ]
                ),
                Option(
                  name: ['--partner-registration-immutable-id', '--pr-id'],
                  description: 'The immutable ID of the corresponding partner registration',
                  args: [
                    Arg(
                    name: 'partner-registration-immutable-i'
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
              description: 'Delete a partner destination',
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
                  description: 'Name of the partner destination',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List available partner destinations',
              options: [

                Option(
                  name: '--odata-query',
                  description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
                  args: [
                    Arg(
                    name: 'odata-quer'
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
              description: 'Get the details of a partner destination',
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
                  description: 'Name of the partner destination',
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
              description: 'Update the details of a partner destination',
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
                  description: 'Name of the partner destination',
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
          name: 'namespace',
          description: 'Manage partner namespaces',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a partner namespace',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the partner namespace',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--partner-registration-id',
                  description: 'The fully qualified ARM Id of the partner registration that should be associated with this partner namespace. This takes the following format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/partnerRegistrations/{partnerRegistrationName}',
                  args: [
                    Arg(
                    name: 'partner-registration-i'
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
                  name: ['--partner-topic-routing-mode', '--route-mode'],
                  description: 'This determines if events published to this partner namespace should use the source attribute in the event payload or use the channel name in the header when matching to the partner topic. If none is specified, source attribute routing will be used to match the partner topic',
                  args: [
                    Arg(
                    name: 'partner-topic-routing-mode',
                    suggestions: [

                      FigSuggestion(name: 'ChannelNameHeader'),
                      FigSuggestion(name: 'SourceEventAttribute')
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
              name: 'delete',
              description: 'Delete a partner namespace',
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
                  description: 'Name of the partner namespace',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List available partner namespaces',
              options: [

                Option(
                  name: '--odata-query',
                  description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
                  args: [
                    Arg(
                    name: 'odata-quer'
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
              description: 'Get the details of a partner namespace',
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
                  description: 'Name of the partner namespace',
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
              name: 'channel',
              description: 'Manage partner channels',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a new channel for a partner namespace',
                  options: [

                    Option(
                      name: '--channel-type',
                      description: 'The type of the event channel which represents the direction flow of events',
                      args: [
                        Arg(
                        name: 'channel-type',
                        suggestions: [

                          FigSuggestion(name: 'PartnerDestination'),
                          FigSuggestion(name: 'PartnerTopic')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--destination-rg',
                      description: 'Azure Resource Group of the subscriber requesting the creation of the channel resource by the publisher. The corresponding partner resource (either partner topic or partner destination) associated with the channel resource will be created under this resource group',
                      args: [
                        Arg(
                        name: 'destination-r'
                      )
                      ]
                    ),
                    Option(
                      name: '--destination-sub-id',
                      description: 'Azure subscription Id of the subscriber requesting the creation of the channel resource by the publisher. The corresponding partner resource (either partner topic or partner destination) associated with the channel resource will be created under this Azure subscription',
                      args: [
                        Arg(
                        name: 'destination-sub-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the channel',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-namespace-name',
                      description: 'Name of the partner namespace',
                      args: [
                        Arg(
                        name: 'partner-namespace-nam'
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
                      name: [
                        '--azure-active-directory-application-id-or-uri',
                        '--aad-app-id',
                      ],
                      description: 'The Azure Active Directory Application ID or URI to get the access token that will be included as the bearer token in delivery requests',
                      args: [
                        Arg(
                        name: 'azure-active-directory-application-id-or-uri'
                      )
                      ]
                    ),
                    Option(
                      name: [
                        '--azure-active-directory-tenant-id',
                        '--aad-tenant-id',
                      ],
                      description: 'The Azure Active Directory Tenant ID to get the access token that will be included as the bearer token in delivery requests',
                      args: [
                        Arg(
                        name: 'azure-active-directory-tenant-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--activation-expiration-date', '--act-exp-date'],
                      description: 'Date or datetime in UTC ISO 8601 format (e.g., \'2022-02-17T01:59:59+00:00\' or \'2022-02-17\') after which the channel and corresponding partner topic would expire and get auto deleted. If this time is not specified, the expiration date is set to seven days by default',
                      args: [
                        Arg(
                        name: 'activation-expiration-dat'
                      )
                      ]
                    ),
                    Option(
                      name: ['--endpoint-service-context', '--ed-serv-cont'],
                      description: 'Endpoint context associated with this partner destination',
                      args: [
                        Arg(
                        name: 'endpoint-service-contex'
                      )
                      ]
                    ),
                    Option(
                      name: '--endpoint-url',
                      description: 'The URL that represents the endpoint of the partner destination',
                      args: [
                        Arg(
                        name: 'endpoint-ur'
                      )
                      ]
                    ),
                    Option(
                      name: '--event-type-kind',
                      description: 'The kind of event type used',
                      args: [
                        Arg(
                        name: 'event-type-kind',
                        suggestions: [

                          FigSuggestion(name: 'inline')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--inline-event-type',
                      description: 'Create a channel for an existing partner namespace, either of type partner topic or partner destination. You can also add inline event type info if channel type is partner topic. Multiple attributes can be specified by using more than one --inline-event-type argument',
                      args: [
                        Arg(
                        name: 'inline-event-typ'
                      )
                      ]
                    ),
                    Option(
                      name: '--message-for-activation',
                      description: 'Context or helpful message that can be used during the approval process',
                      args: [
                        Arg(
                        name: 'message-for-activatio'
                      )
                      ]
                    ),
                    Option(
                      name: ['--partner-destination-name', '--pr-dest-n'],
                      description: 'Name of the partner destination',
                      args: [
                        Arg(
                        name: 'partner-destination-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-topic-name',
                      description: 'Name of the partner topic',
                      args: [
                        Arg(
                        name: 'partner-topic-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-topic-source',
                      description: 'The identifier of the resource that forms the partner source of the events. This represents a unique resource in the partner\'s resource model',
                      args: [
                        Arg(
                        name: 'partner-topic-sourc'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a partner namespace',
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
                      description: 'Name of the channel',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-namespace-name',
                      description: 'Name of the partner namespace',
                      args: [
                        Arg(
                        name: 'partner-namespace-nam'
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
                  name: 'list',
                  description: 'List available partner channels',
                  options: [

                    Option(
                      name: '--partner-namespace-name',
                      description: 'Name of the partner namespace',
                      args: [
                        Arg(
                        name: 'partner-namespace-nam'
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
                      name: '--odata-query',
                      description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
                      args: [
                        Arg(
                        name: 'odata-quer'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the details of a channel under a partner namespace',
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
                      description: 'Name of the channel',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-namespace-name',
                      description: 'Name of the partner namespace',
                      args: [
                        Arg(
                        name: 'partner-namespace-nam'
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
                  description: 'Update the details of a channel under a partner namespace',
                  options: [

                    Option(
                      name: [
                        '--azure-active-directory-application-id-or-uri',
                        '--aad-app-id',
                      ],
                      description: 'The Azure Active Directory Application ID or URI to get the access token that will be included as the bearer token in delivery requests',
                      args: [
                        Arg(
                        name: 'azure-active-directory-application-id-or-uri'
                      )
                      ]
                    ),
                    Option(
                      name: [
                        '--azure-active-directory-tenant-id',
                        '--aad-tenant-id',
                      ],
                      description: 'The Azure Active Directory Tenant ID to get the access token that will be included as the bearer token in delivery requests',
                      args: [
                        Arg(
                        name: 'azure-active-directory-tenant-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--activation-expiration-date', '--act-exp-date'],
                      description: 'Date or datetime in UTC ISO 8601 format (e.g., \'2022-02-17T01:59:59+00:00\' or \'2022-02-17\') after which the channel and corresponding partner topic would expire and get auto deleted. If this time is not specified, the expiration date is set to seven days by default',
                      args: [
                        Arg(
                        name: 'activation-expiration-dat'
                      )
                      ]
                    ),
                    Option(
                      name: '--endpoint-base-url',
                      description: 'Endpoint Base URL of the partner destination',
                      args: [
                        Arg(
                        name: 'endpoint-base-ur'
                      )
                      ]
                    ),
                    Option(
                      name: '--endpoint-url',
                      description: 'The URL that represents the endpoint of the partner destination',
                      args: [
                        Arg(
                        name: 'endpoint-ur'
                      )
                      ]
                    ),
                    Option(
                      name: '--event-type-kind',
                      description: 'The kind of event type used',
                      args: [
                        Arg(
                        name: 'event-type-kind',
                        suggestions: [

                          FigSuggestion(name: 'inline')
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
                      name: '--inline-event-type',
                      description: 'Add inline event type info. Multiple attributes can be specified by using more than one --inline-event-type argument',
                      args: [
                        Arg(
                        name: 'inline-event-typ'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the channel',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-namespace-name',
                      description: 'Name of the partner namespace',
                      args: [
                        Arg(
                        name: 'partner-namespace-nam'
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
                )
              ]
            ),
            Subcommand(
              name: 'event-channel',
              description: 'Manage partner event channels',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create an event channel under a partner namespace',
                  options: [

                    Option(
                      name: '--destination-rg',
                      description: 'Azure Resource Group of the subscriber requesting the creation of the channel resource by the publisher. The corresponding partner resource (either partner topic or partner destination) associated with the channel resource will be created under this resource group',
                      args: [
                        Arg(
                        name: 'destination-r'
                      )
                      ]
                    ),
                    Option(
                      name: '--destination-sub-id',
                      description: 'Azure subscription Id of the subscriber requesting the creation of the channel resource by the publisher. The corresponding partner resource (either partner topic or partner destination) associated with the channel resource will be created under this Azure subscription',
                      args: [
                        Arg(
                        name: 'destination-sub-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--destination-topic-name',
                      description: 'Name of the partner topic associated with the event channel',
                      args: [
                        Arg(
                        name: 'destination-topic-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the event channel',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-namespace-name',
                      description: 'Name of the partner namespace',
                      args: [
                        Arg(
                        name: 'partner-namespace-nam'
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
                      name: '--source',
                      description: 'The identifier of the resource that forms the partner source of the events. This represents a unique resource in the partner\'s resource model',
                      args: [
                        Arg(
                        name: 'sourc'
                      )
                      ]
                    ),
                    Option(
                      name: '--activation-expiration-date',
                      description: 'Date or datetime in UTC ISO 8601 format (e.g., \'2022-02-17T01:59:59+00:00\' or \'2022-02-17\') after which the event channel and corresponding partner topic would expire and get auto deleted. If this time is not specified, the expiration date is set to seven days by default',
                      args: [
                        Arg(
                        name: 'activation-expiration-dat'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-topic-description',
                      description: 'Friendly description of the corresponding partner topic. This will be helpful to remove any ambiguity of the origin of creation of the partner topic for the customer',
                      args: [
                        Arg(
                        name: 'partner-topic-descriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--publisher-filter',
                      description: 'Argument \'publisher_filter\' has been deprecated and will be removed in a future release. A publisher filter that is used to enable filtering of events based on a specific event property. This set of filters that are specified by the publisher in order to determine which events to be received by the subscriber',
                      args: [
                        Arg(
                        name: 'publisher-filte'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a partner namespace',
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
                      description: 'Name of the event channel',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-namespace-name',
                      description: 'Name of the partner namespace',
                      args: [
                        Arg(
                        name: 'partner-namespace-nam'
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
                  name: 'list',
                  description: 'List available partner event-channels',
                  options: [

                    Option(
                      name: '--partner-namespace-name',
                      description: 'Name of the partner namespace',
                      args: [
                        Arg(
                        name: 'partner-namespace-nam'
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
                      name: '--odata-query',
                      description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
                      args: [
                        Arg(
                        name: 'odata-quer'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the details of an event channel under a partner namespace',
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
                      description: 'Name of the event channel',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-namespace-name',
                      description: 'Name of the partner namespace',
                      args: [
                        Arg(
                        name: 'partner-namespace-nam'
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
                )
              ]
            ),
            Subcommand(
              name: 'key',
              description: 'Manage shared access keys of a partner namespace',
              subcommands: [

                Subcommand(
                  name: 'list',
                  description: 'List shared access keys of a partner namespace',
                  options: [

                    Option(
                      name: '--partner-namespace-name',
                      description: 'Name of the partner namespace',
                      args: [
                        Arg(
                        name: 'partner-namespace-nam'
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
                  description: 'Regenerate a shared access key of a partner namespace',
                  options: [

                    Option(
                      name: '--key-name',
                      description: 'Key name to regenerate key1 or key2',
                      args: [
                        Arg(
                        name: 'key-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-namespace-name',
                      description: 'Name of the partner namespace',
                      args: [
                        Arg(
                        name: 'partner-namespace-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'registration',
          description: 'Manage partner registrations',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new partner registration',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the partner registration',
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
                  name: '--authorized-subscription-ids',
                  description: 'A space-separated list of Azure subscription Ids that are authorized to create a partner namespace associated with this partner registration. This is an optional property. Creating partner namespaces is always permitted under the same Azure subscription as the one used for creating the partner registration',
                  args: [
                    Arg(
                    name: 'authorized-subscription-id'
                  )
                  ]
                ),
                Option(
                  name: '--customer-service-extension',
                  description: 'Argument \'customer_service_extension\' has been deprecated and will be removed in a future release. The extension of the customer service number of the publisher. Only digits are allowed and number of digits should not exceed 10',
                  args: [
                    Arg(
                    name: 'customer-service-extensio'
                  )
                  ]
                ),
                Option(
                  name: '--customer-service-number',
                  description: 'Argument \'customer_service_number\' has been deprecated and will be removed in a future release. The customer service number of the publisher. The expected phone format should start with a \'+\' sign followed by the country code. The remaining digits are then followed. Only digits and spaces are allowed and its length cannot exceed 16 digits including country code. Examples of valid phone numbers are: +1 515 123 4567 and +966 7 5115 2471. Examples of invalid phone numbers are: +1 (515) 123-4567, 1 515 123 4567 and +966 121 5115 24 7 551 1234 43',
                  args: [
                    Arg(
                    name: 'customer-service-numbe'
                  )
                  ]
                ),
                Option(
                  name: '--customer-service-uri',
                  description: 'Argument \'customer_service_uri\' has been deprecated and will be removed in a future release. The customer service URI of the publisher',
                  args: [
                    Arg(
                    name: 'customer-service-ur'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Argument \'description\' has been deprecated and will be removed in a future release. Description of the partner topic type',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Argument \'display_name\' has been deprecated and will be removed in a future release. Display name for the partner topic type',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--logo-uri',
                  description: 'Argument \'logo_uri\' has been deprecated and will be removed in a future release. URI of the partner logo',
                  args: [
                    Arg(
                    name: 'logo-ur'
                  )
                  ]
                ),
                Option(
                  name: '--long-description',
                  description: 'Argument \'long_description\' has been deprecated and will be removed in a future release. Description of the custom scenarios and integration. Length of this description should not exceed 2048 characters',
                  args: [
                    Arg(
                    name: 'long-descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--partner-name',
                  description: 'Argument \'partner_name\' has been deprecated and will be removed in a future release. Official name of the partner',
                  args: [
                    Arg(
                    name: 'partner-nam'
                  )
                  ]
                ),
                Option(
                  name: '--resource-type-name',
                  description: 'Argument \'resource_type_name\' has been deprecated and will be removed in a future release. Name of the partner topic resource type. This name should be unique among all partner topic types names',
                  args: [
                    Arg(
                    name: 'resource-type-nam'
                  )
                  ]
                ),
                Option(
                  name: '--setup-uri',
                  description: 'Argument \'setup_uri\' has been deprecated and will be removed in a future release. URI of the partner website that can be used by Azure customers to setup Event Grid integration on an event source',
                  args: [
                    Arg(
                    name: 'setup-ur'
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
              description: 'Delete a partner registration',
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
                  description: 'Name of the partner registration',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all partner registrations in specific resource group or all under the specified azure subscription',
              options: [

                Option(
                  name: '--odata-query',
                  description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
                  args: [
                    Arg(
                    name: 'odata-quer'
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
              description: 'Get a partner registration',
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
                  description: 'Name of the partner registration',
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
            )
          ]
        ),
        Subcommand(
          name: 'topic',
          description: 'Manage partner topics',
          subcommands: [

            Subcommand(
              name: 'activate',
              description: 'Activate a partner topic',
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
                  description: 'Name of the partner topic',
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
              name: 'deactivate',
              description: 'Deactivate a partner topic',
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
                  description: 'Name of the partner topic',
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
              name: 'delete',
              description: 'Delete a partner topic',
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
                  description: 'Name of the partner topic',
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
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List available partner topics',
              options: [

                Option(
                  name: '--odata-query',
                  description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
                  args: [
                    Arg(
                    name: 'odata-quer'
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
              description: 'Get the details of a partner topic',
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
                  description: 'Name of the partner topic',
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
              name: 'event-subscription',
              description: 'Manage event subscriptions of partner topic',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a new event subscription for a partner topic',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the event subscription',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-topic-name',
                      description: 'Name of the partner topic',
                      args: [
                        Arg(
                        name: 'partner-topic-nam'
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
                      name: [
                        '--azure-active-directory-tenant-id',
                        '--aad-tenant-id',
                      ],
                      description: 'The Azure Active Directory Tenant Id to get the access token that will be included as the bearer token in delivery requests. Applicable only for webhook as a destination',
                      args: [
                        Arg(
                        name: 'azure-active-directory-tenant-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--advanced-filter',
                      description: 'An advanced filter enables filtering of events based on a specific event property',
                      args: [
                        Arg(
                        name: 'advanced-filte'
                      )
                      ]
                    ),
                    Option(
                      name: '--azure-active-directory-application-id-or-uri',
                      description: 'The Azure Active Directory Application Id or Uri to get the access token that will be included as the bearer token in delivery requests. Applicable only for webhook as a destination',
                      args: [
                        Arg(
                        name: 'azure-active-directory-application-id-or-uri'
                      )
                      ]
                    ),
                    Option(
                      name: '--deadletter-endpoint',
                      description: 'The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription',
                      args: [
                        Arg(
                        name: 'deadletter-endpoin'
                      )
                      ]
                    ),
                    Option(
                      name: '--delivery-attribute-mapping',
                      description: 'Add delivery attribute mapping to send additional information via HTTP headers when delivering events. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --delivery-attribute-mapping argument',
                      args: [
                        Arg(
                        name: 'delivery-attribute-mappin'
                      )
                      ]
                    ),
                    Option(
                      name: [
                        '--enable-advanced-filtering-on-arrays',
                        '--enable-af-arr',
                      ],
                      description: 'Allows advanced filters to be evaluated against an array of values instead of expecting a singular value',
                      args: [
                        Arg(
                        name: 'enable-advanced-filtering-on-arrays',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--endpoint',
                      description: 'Endpoint where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint. It is expected that the destination endpoint to be already created and available for use before executing any Event Grid command',
                      args: [
                        Arg(
                        name: 'endpoin'
                      )
                      ]
                    ),
                    Option(
                      name: '--endpoint-type',
                      description: 'The type of the destination endpoint',
                      args: [
                        Arg(
                        name: 'endpoint-type',
                        suggestions: [

                          FigSuggestion(name: 'azurefunction'),
                          FigSuggestion(name: 'eventhub'),
                          FigSuggestion(name: 'hybridconnection'),
                          FigSuggestion(name: 'servicebusqueue'),
                          FigSuggestion(name: 'servicebustopic'),
                          FigSuggestion(name: 'storagequeue'),
                          FigSuggestion(name: 'webhook')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--event-delivery-schema',
                      description: 'The schema in which events should be delivered for this event subscription. By default, events will be delivered in the same schema in which they are published (based on the corresponding topic\'s input schema)',
                      args: [
                        Arg(
                        name: 'event-delivery-schema',
                        suggestions: [

                          FigSuggestion(name: 'cloudeventschemav1_0'),
                          FigSuggestion(name: 'custominputschema'),
                          FigSuggestion(name: 'eventgridschema')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--event-ttl',
                      description: 'Event time to live (in minutes). Must be a number between 1 and 1440',
                      args: [
                        Arg(
                        name: 'event-tt'
                      )
                      ]
                    ),
                    Option(
                      name: '--expiration-date',
                      description: 'Date or datetime (in UTC, e.g. \'2018-11-30T11:59:59+00:00\' or \'2018-11-30\') after which the event subscription would expire. By default, there is no expiration for the event subscription',
                      args: [
                        Arg(
                        name: 'expiration-dat'
                      )
                      ]
                    ),
                    Option(
                      name: '--included-event-types',
                      description: 'A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command \'az eventgrid topic-type list-event-types\'',
                      args: [
                        Arg(
                        name: 'included-event-type'
                      )
                      ]
                    ),
                    Option(
                      name: '--labels',
                      description: 'A space-separated list of labels to associate with this event subscription',
                      args: [
                        Arg(
                        name: 'label'
                      )
                      ]
                    ),
                    Option(
                      name: '--max-delivery-attempts',
                      description: 'Maximum number of delivery attempts. Must be a number between 1 and 30',
                      args: [
                        Arg(
                        name: 'max-delivery-attempt'
                      )
                      ]
                    ),
                    Option(
                      name: '--max-events-per-batch',
                      description: 'Maximum number of events in a batch. Must be a number between 1 and 5000',
                      args: [
                        Arg(
                        name: 'max-events-per-batc'
                      )
                      ]
                    ),
                    Option(
                      name: '--preferred-batch-size-in-kilobytes',
                      description: 'Preferred batch size in kilobytes. Must be a number between 1 and 1024',
                      args: [
                        Arg(
                        name: 'preferred-batch-size-in-kilobyte'
                      )
                      ]
                    ),
                    Option(
                      name: ['--storage-queue-msg-ttl', '--qttl'],
                      description: 'Storage queue message time to live in seconds',
                      args: [
                        Arg(
                        name: 'storage-queue-msg-tt'
                      )
                      ]
                    ),
                    Option(
                      name: '--subject-begins-with',
                      description: 'An optional string to filter events for an event subscription based on a prefix. Wildcard characters are not supported',
                      args: [
                        Arg(
                        name: 'subject-begins-wit'
                      )
                      ]
                    ),
                    Option(
                      name: '--subject-case-sensitive',
                      description: 'Specify to indicate whether the subject fields should be compared in a case sensitive manner. True if flag present'
                    ),
                    Option(
                      name: '--subject-ends-with',
                      description: 'An optional string to filter events for an event subscription based on a suffix. Wildcard characters are not supported',
                      args: [
                        Arg(
                        name: 'subject-ends-wit'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete an event subscription of a partner topic',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the event subscription',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-topic-name',
                      description: 'Name of the partner topic',
                      args: [
                        Arg(
                        name: 'partner-topic-nam'
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
                  description: 'List event subscriptions of a specific partner topic',
                  options: [

                    Option(
                      name: '--partner-topic-name',
                      description: 'Name of the partner topic',
                      args: [
                        Arg(
                        name: 'partner-topic-nam'
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
                      name: '--odata-query',
                      description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
                      args: [
                        Arg(
                        name: 'odata-quer'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the details of an event subscription of a partner topic',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the event subscription',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-topic-name',
                      description: 'Name of the partner topic',
                      args: [
                        Arg(
                        name: 'partner-topic-nam'
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
                      name: [
                        '--include-static-delivery-attribute-secret',
                        '--include-attrib-secret',
                      ],
                      description: 'Indicate whether any static delivery attribute secrets should be returned. True if flag present'
                    ),
                    Option(
                      name: '--include-full-endpoint-url',
                      description: 'Specify to indicate whether the full endpoint URL should be returned. True if flag present'
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update an event subscription of a partner topic',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the event subscription',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--partner-topic-name',
                      description: 'Name of the partner topic',
                      args: [
                        Arg(
                        name: 'partner-topic-nam'
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
                      name: '--advanced-filter',
                      description: 'An advanced filter enables filtering of events based on a specific event property',
                      args: [
                        Arg(
                        name: 'advanced-filte'
                      )
                      ]
                    ),
                    Option(
                      name: '--deadletter-endpoint',
                      description: 'The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription',
                      args: [
                        Arg(
                        name: 'deadletter-endpoin'
                      )
                      ]
                    ),
                    Option(
                      name: '--delivery-attribute-mapping',
                      description: 'Add delivery attribute mapping to send additional information via HTTP headers when delivering events. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --delivery-attribute-mapping argument',
                      args: [
                        Arg(
                        name: 'delivery-attribute-mappin'
                      )
                      ]
                    ),
                    Option(
                      name: [
                        '--enable-advanced-filtering-on-arrays',
                        '--enable-af-arr',
                      ],
                      description: 'Allows advanced filters to be evaluated against an array of values instead of expecting a singular value',
                      args: [
                        Arg(
                        name: 'enable-advanced-filtering-on-arrays',
                        suggestions: [

                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'true')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--endpoint',
                      description: 'Endpoint where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint. It is expected that the destination endpoint to be already created and available for use before executing any Event Grid command',
                      args: [
                        Arg(
                        name: 'endpoin'
                      )
                      ]
                    ),
                    Option(
                      name: '--endpoint-type',
                      description: 'The type of the destination endpoint',
                      args: [
                        Arg(
                        name: 'endpoint-type',
                        suggestions: [

                          FigSuggestion(name: 'azurefunction'),
                          FigSuggestion(name: 'eventhub'),
                          FigSuggestion(name: 'hybridconnection'),
                          FigSuggestion(name: 'servicebusqueue'),
                          FigSuggestion(name: 'servicebustopic'),
                          FigSuggestion(name: 'storagequeue'),
                          FigSuggestion(name: 'webhook')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--included-event-types',
                      description: 'A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command \'az eventgrid topic-type list-event-types\'',
                      args: [
                        Arg(
                        name: 'included-event-type'
                      )
                      ]
                    ),
                    Option(
                      name: '--labels',
                      description: 'A space-separated list of labels to associate with this event subscription',
                      args: [
                        Arg(
                        name: 'label'
                      )
                      ]
                    ),
                    Option(
                      name: ['--storage-queue-msg-ttl', '--qttl'],
                      description: 'Storage queue message time to live in seconds',
                      args: [
                        Arg(
                        name: 'storage-queue-msg-tt'
                      )
                      ]
                    ),
                    Option(
                      name: '--subject-begins-with',
                      description: 'An optional string to filter events for an event subscription based on a prefix. Wildcard characters are not supported',
                      args: [
                        Arg(
                        name: 'subject-begins-wit'
                      )
                      ]
                    ),
                    Option(
                      name: '--subject-ends-with',
                      description: 'An optional string to filter events for an event subscription based on a suffix. Wildcard characters are not supported',
                      args: [
                        Arg(
                        name: 'subject-ends-wit'
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
          name: 'verified-partner',
          description: 'Manage verified partners',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List available verified partners',
              options: [

                Option(
                  name: '--odata-query',
                  description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
                  args: [
                    Arg(
                    name: 'odata-quer'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a verified partner',
              options: [

                Option(
                  name: '--verified-partner-name',
                  description: 'Name of the verified partner',
                  args: [
                    Arg(
                    name: 'verified-partner-nam'
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
      name: 'system-topic',
      description: 'Manage system topics',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a system topic',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the system topic',
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
              name: '--source',
              description: 'The ARM Id for the topic, e.g., /subscriptions/{SubId}/resourceGroups/{RgName}/providers/Microsoft.Storage/storageAccounts/{AccountName}',
              args: [
                Arg(
                name: 'sourc'
              )
              ]
            ),
            Option(
              name: '--topic-type',
              description: 'Name of the topic type',
              args: [
                Arg(
                name: 'topic-typ'
              )
              ]
            ),
            Option(
              name: '--identity',
              description: 'Argument \'identity\' has been deprecated and will be removed in a future release. The managed identity type for the resource. Will be deprecated and replaced by --mi-system-assigned-identity in future',
              args: [
                Arg(
                name: 'identity',
                suggestions: [

                  FigSuggestion(name: 'noidentity'),
                  FigSuggestion(name: 'systemassigned')
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
              name: '--mi-system-assigned',
              description: 'Presence of this param indicates that SystemAssigned managed identity will be used',
              args: [
                Arg(
                name: 'mi-system-assigne'
              )
              ]
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'Add user assigned identities when identityType is user or mixed. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --mi-user-assigned argument',
              args: [
                Arg(
                name: 'mi-user-assigne'
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
          description: 'Delete a system topic',
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
              description: 'Name of the system topic',
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List available system topics',
          options: [

            Option(
              name: '--odata-query',
              description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
              args: [
                Arg(
                name: 'odata-quer'
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
          description: 'Get the details of a system topic',
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
              description: 'Name of the system topic',
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
          description: 'Update a system topic',
          options: [

            Option(
              name: '--identity',
              description: 'Argument \'identity\' has been deprecated and will be removed in a future release. The managed identity type for the resource. Will be deprecated and replaced by --mi-system-assigned-identity in future',
              args: [
                Arg(
                name: 'identity',
                suggestions: [

                  FigSuggestion(name: 'noidentity'),
                  FigSuggestion(name: 'systemassigned')
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
              name: '--mi-system-assigned',
              description: 'Presence of this param indicates that SystemAssigned managed identity will be used',
              args: [
                Arg(
                name: 'mi-system-assigne'
              )
              ]
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'Add user assigned identities when identityType is user or mixed. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --mi-user-assigned argument',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the system topic',
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
        ),
        Subcommand(
          name: 'event-subscription',
          description: 'Manage event subscriptions of system topic',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new event subscription for a system topic',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the event subscription',
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
                  name: '--system-topic-name',
                  description: 'Name of the system topic',
                  args: [
                    Arg(
                    name: 'system-topic-nam'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--azure-active-directory-tenant-id',
                    '--aad-tenant-id',
                  ],
                  description: 'The Azure Active Directory Tenant Id to get the access token that will be included as the bearer token in delivery requests. Applicable only for webhook as a destination',
                  args: [
                    Arg(
                    name: 'azure-active-directory-tenant-i'
                  )
                  ]
                ),
                Option(
                  name: '--advanced-filter',
                  description: 'An advanced filter enables filtering of events based on a specific event property',
                  args: [
                    Arg(
                    name: 'advanced-filte'
                  )
                  ]
                ),
                Option(
                  name: '--azure-active-directory-application-id-or-uri',
                  description: 'The Azure Active Directory Application Id or Uri to get the access token that will be included as the bearer token in delivery requests. Applicable only for webhook as a destination',
                  args: [
                    Arg(
                    name: 'azure-active-directory-application-id-or-uri'
                  )
                  ]
                ),
                Option(
                  name: '--deadletter-endpoint',
                  description: 'The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription',
                  args: [
                    Arg(
                    name: 'deadletter-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--delivery-attribute-mapping',
                  description: 'Add delivery attribute mapping to send additional information via HTTP headers when delivering events. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --delivery-attribute-mapping argument',
                  args: [
                    Arg(
                    name: 'delivery-attribute-mappin'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--enable-advanced-filtering-on-arrays',
                    '--enable-af-arr',
                  ],
                  description: 'Allows advanced filters to be evaluated against an array of values instead of expecting a singular value',
                  args: [
                    Arg(
                    name: 'enable-advanced-filtering-on-arrays',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Endpoint where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint. It is expected that the destination endpoint to be already created and available for use before executing any Event Grid command',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint-type',
                  description: 'The type of the destination endpoint',
                  args: [
                    Arg(
                    name: 'endpoint-type',
                    suggestions: [

                      FigSuggestion(name: 'azurefunction'),
                      FigSuggestion(name: 'eventhub'),
                      FigSuggestion(name: 'hybridconnection'),
                      FigSuggestion(name: 'servicebusqueue'),
                      FigSuggestion(name: 'servicebustopic'),
                      FigSuggestion(name: 'storagequeue'),
                      FigSuggestion(name: 'webhook')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-delivery-schema',
                  description: 'The schema in which events should be delivered for this event subscription. By default, events will be delivered in the same schema in which they are published (based on the corresponding topic\'s input schema)',
                  args: [
                    Arg(
                    name: 'event-delivery-schema',
                    suggestions: [

                      FigSuggestion(name: 'cloudeventschemav1_0'),
                      FigSuggestion(name: 'custominputschema'),
                      FigSuggestion(name: 'eventgridschema')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-ttl',
                  description: 'Event time to live (in minutes). Must be a number between 1 and 1440',
                  args: [
                    Arg(
                    name: 'event-tt'
                  )
                  ]
                ),
                Option(
                  name: '--expiration-date',
                  description: 'Date or datetime (in UTC, e.g. \'2018-11-30T11:59:59+00:00\' or \'2018-11-30\') after which the event subscription would expire. By default, there is no expiration for the event subscription',
                  args: [
                    Arg(
                    name: 'expiration-dat'
                  )
                  ]
                ),
                Option(
                  name: '--included-event-types',
                  description: 'A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command \'az eventgrid topic-type list-event-types\'',
                  args: [
                    Arg(
                    name: 'included-event-type'
                  )
                  ]
                ),
                Option(
                  name: '--labels',
                  description: 'A space-separated list of labels to associate with this event subscription',
                  args: [
                    Arg(
                    name: 'label'
                  )
                  ]
                ),
                Option(
                  name: '--max-delivery-attempts',
                  description: 'Maximum number of delivery attempts. Must be a number between 1 and 30',
                  args: [
                    Arg(
                    name: 'max-delivery-attempt'
                  )
                  ]
                ),
                Option(
                  name: '--max-events-per-batch',
                  description: 'Maximum number of events in a batch. Must be a number between 1 and 5000',
                  args: [
                    Arg(
                    name: 'max-events-per-batc'
                  )
                  ]
                ),
                Option(
                  name: '--preferred-batch-size-in-kilobytes',
                  description: 'Preferred batch size in kilobytes. Must be a number between 1 and 1024',
                  args: [
                    Arg(
                    name: 'preferred-batch-size-in-kilobyte'
                  )
                  ]
                ),
                Option(
                  name: ['--storage-queue-msg-ttl', '--qttl'],
                  description: 'Storage queue message time to live in seconds',
                  args: [
                    Arg(
                    name: 'storage-queue-msg-tt'
                  )
                  ]
                ),
                Option(
                  name: '--subject-begins-with',
                  description: 'An optional string to filter events for an event subscription based on a prefix. Wildcard characters are not supported',
                  args: [
                    Arg(
                    name: 'subject-begins-wit'
                  )
                  ]
                ),
                Option(
                  name: '--subject-case-sensitive',
                  description: 'Specify to indicate whether the subject fields should be compared in a case sensitive manner. True if flag present'
                ),
                Option(
                  name: '--subject-ends-with',
                  description: 'An optional string to filter events for an event subscription based on a suffix. Wildcard characters are not supported',
                  args: [
                    Arg(
                    name: 'subject-ends-wit'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an event subscription of a system topic',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the event subscription',
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
                  name: '--system-topic-name',
                  description: 'Name of the system topic',
                  args: [
                    Arg(
                    name: 'system-topic-nam'
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
              description: 'List event subscriptions of a specific system topic',
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
                  name: '--system-topic-name',
                  description: 'Name of the system topic',
                  args: [
                    Arg(
                    name: 'system-topic-nam'
                  )
                  ]
                ),
                Option(
                  name: '--odata-query',
                  description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
                  args: [
                    Arg(
                    name: 'odata-quer'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of an event subscription of a system topic',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the event subscription',
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
                  name: '--system-topic-name',
                  description: 'Name of the system topic',
                  args: [
                    Arg(
                    name: 'system-topic-nam'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--include-static-delivery-attribute-secret',
                    '--include-attrib-secret',
                  ],
                  description: 'Indicate whether any static delivery attribute secrets should be returned. True if flag present'
                ),
                Option(
                  name: '--include-full-endpoint-url',
                  description: 'Specify to indicate whether the full endpoint URL should be returned. True if flag present'
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an event subscription of a system topic',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the event subscription',
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
                  name: '--system-topic-name',
                  description: 'Name of the system topic',
                  args: [
                    Arg(
                    name: 'system-topic-nam'
                  )
                  ]
                ),
                Option(
                  name: '--advanced-filter',
                  description: 'An advanced filter enables filtering of events based on a specific event property',
                  args: [
                    Arg(
                    name: 'advanced-filte'
                  )
                  ]
                ),
                Option(
                  name: '--deadletter-endpoint',
                  description: 'The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription',
                  args: [
                    Arg(
                    name: 'deadletter-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--delivery-attribute-mapping',
                  description: 'Add delivery attribute mapping to send additional information via HTTP headers when delivering events. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --delivery-attribute-mapping argument',
                  args: [
                    Arg(
                    name: 'delivery-attribute-mappin'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--enable-advanced-filtering-on-arrays',
                    '--enable-af-arr',
                  ],
                  description: 'Allows advanced filters to be evaluated against an array of values instead of expecting a singular value',
                  args: [
                    Arg(
                    name: 'enable-advanced-filtering-on-arrays',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Endpoint where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint. It is expected that the destination endpoint to be already created and available for use before executing any Event Grid command',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint-type',
                  description: 'The type of the destination endpoint',
                  args: [
                    Arg(
                    name: 'endpoint-type',
                    suggestions: [

                      FigSuggestion(name: 'azurefunction'),
                      FigSuggestion(name: 'eventhub'),
                      FigSuggestion(name: 'hybridconnection'),
                      FigSuggestion(name: 'servicebusqueue'),
                      FigSuggestion(name: 'servicebustopic'),
                      FigSuggestion(name: 'storagequeue'),
                      FigSuggestion(name: 'webhook')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--included-event-types',
                  description: 'A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command \'az eventgrid topic-type list-event-types\'',
                  args: [
                    Arg(
                    name: 'included-event-type'
                  )
                  ]
                ),
                Option(
                  name: '--labels',
                  description: 'A space-separated list of labels to associate with this event subscription',
                  args: [
                    Arg(
                    name: 'label'
                  )
                  ]
                ),
                Option(
                  name: ['--storage-queue-msg-ttl', '--qttl'],
                  description: 'Storage queue message time to live in seconds',
                  args: [
                    Arg(
                    name: 'storage-queue-msg-tt'
                  )
                  ]
                ),
                Option(
                  name: '--subject-begins-with',
                  description: 'An optional string to filter events for an event subscription based on a prefix. Wildcard characters are not supported',
                  args: [
                    Arg(
                    name: 'subject-begins-wit'
                  )
                  ]
                ),
                Option(
                  name: '--subject-ends-with',
                  description: 'An optional string to filter events for an event subscription based on a suffix. Wildcard characters are not supported',
                  args: [
                    Arg(
                    name: 'subject-ends-wit'
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
      name: 'topic',
      description: 'Manage Azure Event Grid topics',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a topic',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the topic',
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
              name: '--extended-location-name',
              description: 'The extended location name if kind==azurearc',
              args: [
                Arg(
                name: 'extended-location-nam'
              )
              ]
            ),
            Option(
              name: '--extended-location-type',
              description: 'The extended location type if kind==azurearc',
              args: [
                Arg(
                name: 'extended-location-type',
                suggestions: [

                  FigSuggestion(name: 'customlocation')
                ]
              )
              ]
            ),
            Option(
              name: '--identity',
              description: 'Argument \'identity\' has been deprecated and will be removed in a future release. The managed identity type for the resource. Will be deprecated and replaced by --mi-system-assigned-identity in future',
              args: [
                Arg(
                name: 'identity',
                suggestions: [

                  FigSuggestion(name: 'noidentity'),
                  FigSuggestion(name: 'systemassigned')
                ]
              )
              ]
            ),
            Option(
              name: '--inbound-ip-rules',
              description: 'List of inbound IP rules',
              args: [
                Arg(
                name: 'inbound-ip-rule'
              )
              ]
            ),
            Option(
              name: '--input-mapping-default-values',
              description: 'When input-schema is specified as customeventschema, this parameter can be used to specify input mappings based on default values. You can use this parameter when your custom schema does not include a field that corresponds to one of the three fields supported by this parameter. Specify space separated mappings in \'key=value\' format. Allowed key names are \'subject\', \'eventtype\', \'dataversion\'. The corresponding value names should specify the default values to be used for the mapping and they will be used only when the published event doesn\'t have a valid mapping for a particular field',
              args: [
                Arg(
                name: 'input-mapping-default-value'
              )
              ]
            ),
            Option(
              name: '--input-mapping-fields',
              description: 'When input-schema is specified as customeventschema, this parameter is used to specify input mappings based on field names. Specify space separated mappings in \'key=value\' format. Allowed key names are \'id\', \'topic\', \'eventtime\', \'subject\', \'eventtype\', \'dataversion\'. The corresponding value names should specify the names of the fields in the custom input schema. If a mapping for either \'id\' or \'eventtime\' is not provided, Event Grid will auto-generate a default value for these two fields',
              args: [
                Arg(
                name: 'input-mapping-field'
              )
              ]
            ),
            Option(
              name: '--input-schema',
              description: 'Schema in which incoming events will be published to this topic/domain. If you specify customeventschema as the value for this parameter, you must also provide values for at least one of --input_mapping_default_values / --input_mapping_fields',
              args: [
                Arg(
                name: 'input-schema',
                suggestions: [

                  FigSuggestion(name: 'cloudeventschemav1_0'),
                  FigSuggestion(name: 'customeventschema'),
                  FigSuggestion(name: 'eventgridschema')
                ]
              )
              ]
            ),
            Option(
              name: '--kind',
              description: 'The kind of topic resource',
              args: [
                Arg(
                name: 'kind',
                suggestions: [

                  FigSuggestion(name: 'azure'),
                  FigSuggestion(name: 'azurearc')
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
              name: '--mi-system-assigned',
              description: 'Presence of this param indicates that SystemAssigned managed identity will be used',
              args: [
                Arg(
                name: 'mi-system-assigne'
              )
              ]
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'Add user assigned identities when identityType is user or mixed. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --mi-user-assigned argument',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: '--public-network-access',
              description: 'This determines if traffic is allowed over public network. By default it is enabled. You can further restrict to specific IPs by configuring',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'disabled'),
                  FigSuggestion(name: 'enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'The Sku name of the resource',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'basic'),
                  FigSuggestion(name: 'premium')
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
          name: 'delete',
          description: 'Delete a topic',
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
              description: 'Name of the topic',
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
          description: 'List available topics',
          options: [

            Option(
              name: '--odata-query',
              description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
              args: [
                Arg(
                name: 'odata-quer'
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
          description: 'Get the details of a topic',
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
              description: 'Name of the topic',
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
          description: 'Update a topic',
          options: [

            Option(
              name: '--identity',
              description: 'Argument \'identity\' has been deprecated and will be removed in a future release. The managed identity type for the resource. Will be deprecated and replaced by --mi-system-assigned-identity in future',
              args: [
                Arg(
                name: 'identity',
                suggestions: [

                  FigSuggestion(name: 'noidentity'),
                  FigSuggestion(name: 'systemassigned')
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
              name: '--inbound-ip-rules',
              description: 'List of inbound IP rules specifying IP Address in CIDR notation e.g., 10.0.0.0/8 along with corresponding Action to perform based on the match or no match of the IpMask. Possible values include - Allow',
              args: [
                Arg(
                name: 'inbound-ip-rule'
              )
              ]
            ),
            Option(
              name: '--mi-system-assigned',
              description: 'Presence of this param indicates that SystemAssigned managed identity will be used',
              args: [
                Arg(
                name: 'mi-system-assigne'
              )
              ]
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'Add user assigned identities when identityType is user or mixed. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --mi-user-assigned argument',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the topic',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--public-network-access',
              description: 'This determines if traffic is allowed over public network. By default it is enabled. You can further restrict to specific IPs by configuring',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'disabled'),
                  FigSuggestion(name: 'enabled')
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
              name: '--sku',
              description: 'The Sku name of the resource',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'basic'),
                  FigSuggestion(name: 'premium')
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
            )
          ]
        ),
        Subcommand(
          name: 'event-subscription',
          description: 'Manage event subscriptions of topic',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new event subscription for a topic',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the event subscription',
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
                  name: '--topic-name',
                  description: 'Name of the topic',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--azure-active-directory-application-id-or-uri',
                    '--aad-app-id',
                  ],
                  description: 'The Azure Active Directory Application Id or Uri to get the access token that will be included as the bearer token in delivery requests. Applicable only for webhook as a destination',
                  args: [
                    Arg(
                    name: 'azure-active-directory-application-id-or-uri'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--azure-active-directory-tenant-id',
                    '--aad-tenant-id',
                  ],
                  description: 'The Azure Active Directory Tenant Id to get the access token that will be included as the bearer token in delivery requests. Applicable only for webhook as a destination',
                  args: [
                    Arg(
                    name: 'azure-active-directory-tenant-i'
                  )
                  ]
                ),
                Option(
                  name: '--advanced-filter',
                  description: 'An advanced filter enables filtering of events based on a specific event property',
                  args: [
                    Arg(
                    name: 'advanced-filte'
                  )
                  ]
                ),
                Option(
                  name: '--deadletter-endpoint',
                  description: 'The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription',
                  args: [
                    Arg(
                    name: 'deadletter-endpoin'
                  )
                  ]
                ),
                Option(
                  name: ['--delivery-attribute-mapping', '-d'],
                  description: 'Add delivery attribute mapping to send additional information via HTTP headers when delivering events. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --delivery-attribute-mapping argument',
                  args: [
                    Arg(
                    name: 'delivery-attribute-mappin'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--enable-advanced-filtering-on-arrays',
                    '--enable-af-arr',
                  ],
                  description: 'Allows advanced filters to be evaluated against an array of values instead of expecting a singular value',
                  args: [
                    Arg(
                    name: 'enable-advanced-filtering-on-arrays',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Endpoint where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint. It is expected that the destination endpoint to be already created and available for use before executing any Event Grid command',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint-type',
                  description: 'The type of the destination endpoint',
                  args: [
                    Arg(
                    name: 'endpoint-type',
                    suggestions: [

                      FigSuggestion(name: 'azurefunction'),
                      FigSuggestion(name: 'eventhub'),
                      FigSuggestion(name: 'hybridconnection'),
                      FigSuggestion(name: 'servicebusqueue'),
                      FigSuggestion(name: 'servicebustopic'),
                      FigSuggestion(name: 'storagequeue'),
                      FigSuggestion(name: 'webhook')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-delivery-schema',
                  description: 'The schema in which events should be delivered for this event subscription. By default, events will be delivered in the same schema in which they are published (based on the corresponding topic\'s input schema)',
                  args: [
                    Arg(
                    name: 'event-delivery-schema',
                    suggestions: [

                      FigSuggestion(name: 'cloudeventschemav1_0'),
                      FigSuggestion(name: 'custominputschema'),
                      FigSuggestion(name: 'eventgridschema')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-ttl',
                  description: 'Event time to live (in minutes). Must be a number between 1 and 1440',
                  args: [
                    Arg(
                    name: 'event-tt'
                  )
                  ]
                ),
                Option(
                  name: '--expiration-date',
                  description: 'Date or datetime (in UTC, e.g. \'2018-11-30T11:59:59+00:00\' or \'2018-11-30\') after which the event subscription would expire. By default, there is no expiration for the event subscription',
                  args: [
                    Arg(
                    name: 'expiration-dat'
                  )
                  ]
                ),
                Option(
                  name: '--included-event-types',
                  description: 'A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command \'az eventgrid topic-type list-event-types\'',
                  args: [
                    Arg(
                    name: 'included-event-type'
                  )
                  ]
                ),
                Option(
                  name: '--labels',
                  description: 'A space-separated list of labels to associate with this event subscription',
                  args: [
                    Arg(
                    name: 'label'
                  )
                  ]
                ),
                Option(
                  name: '--max-delivery-attempts',
                  description: 'Maximum number of delivery attempts. Must be a number between 1 and 30',
                  args: [
                    Arg(
                    name: 'max-delivery-attempt'
                  )
                  ]
                ),
                Option(
                  name: '--max-events-per-batch',
                  description: 'Maximum number of events in a batch. Must be a number between 1 and 5000',
                  args: [
                    Arg(
                    name: 'max-events-per-batc'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--preferred-batch-size-in-kilobytes',
                    '--pref-batch-size-kb',
                  ],
                  description: 'Preferred batch size in kilobytes. Must be a number between 1 and 1024',
                  args: [
                    Arg(
                    name: 'preferred-batch-size-in-kilobyte'
                  )
                  ]
                ),
                Option(
                  name: ['--storage-queue-msg-ttl', '--qttl'],
                  description: 'Storage queue message time to live in seconds',
                  args: [
                    Arg(
                    name: 'storage-queue-msg-tt'
                  )
                  ]
                ),
                Option(
                  name: '--subject-begins-with',
                  description: 'An optional string to filter events for an event subscription based on a prefix. Wildcard characters are not supported',
                  args: [
                    Arg(
                    name: 'subject-begins-wit'
                  )
                  ]
                ),
                Option(
                  name: '--subject-case-sensitive',
                  description: 'Specify to indicate whether the subject fields should be compared in a case sensitive manner. True if flag present'
                ),
                Option(
                  name: '--subject-ends-with',
                  description: 'An optional string to filter events for an event subscription based on a suffix. Wildcard characters are not supported',
                  args: [
                    Arg(
                    name: 'subject-ends-wit'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an event subscription of a topic',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the event subscription',
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
                  name: '--topic-name',
                  description: 'Name of the topic',
                  args: [
                    Arg(
                    name: 'topic-nam'
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
              description: 'List event subscriptions of a specific topic',
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
                  name: '--topic-name',
                  description: 'Name of the topic',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                ),
                Option(
                  name: '--odata-query',
                  description: 'The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT',
                  args: [
                    Arg(
                    name: 'odata-quer'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of an event subscription of a topic',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the event subscription',
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
                  name: '--topic-name',
                  description: 'Name of the topic',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--include-full-endpoint-url', '--full-ed-url'],
                  description: 'Specify to indicate whether the full endpoint URL should be returned. True if flag present'
                ),
                Option(
                  name: [
                    '--include-static-delivery-attribute-secret',
                    '--include-attrib-secret',
                  ],
                  description: 'Indicate whether any static delivery attribute secrets should be returned. True if flag present'
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an event subscription of a topic',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the event subscription',
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
                  name: '--topic-name',
                  description: 'Name of the topic',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                ),
                Option(
                  name: '--advanced-filter',
                  description: 'An advanced filter enables filtering of events based on a specific event property',
                  args: [
                    Arg(
                    name: 'advanced-filte'
                  )
                  ]
                ),
                Option(
                  name: '--deadletter-endpoint',
                  description: 'The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription',
                  args: [
                    Arg(
                    name: 'deadletter-endpoin'
                  )
                  ]
                ),
                Option(
                  name: ['--delivery-attribute-mapping', '-d'],
                  description: 'Add delivery attribute mapping to send additional information via HTTP headers when delivering events. This attribute is valid for all destination types except StorageQueue. Multiple attributes can be specified by using more than one --delivery-attribute-mapping argument',
                  args: [
                    Arg(
                    name: 'delivery-attribute-mappin'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--enable-advanced-filtering-on-arrays',
                    '--enable-af-arr',
                  ],
                  description: 'Allows advanced filters to be evaluated against an array of values instead of expecting a singular value',
                  args: [
                    Arg(
                    name: 'enable-advanced-filtering-on-arrays',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Endpoint where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint. It is expected that the destination endpoint to be already created and available for use before executing any Event Grid command',
                  args: [
                    Arg(
                    name: 'endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--included-event-types',
                  description: 'A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command \'az eventgrid topic-type list-event-types\'',
                  args: [
                    Arg(
                    name: 'included-event-type'
                  )
                  ]
                ),
                Option(
                  name: '--labels',
                  description: 'A space-separated list of labels to associate with this event subscription',
                  args: [
                    Arg(
                    name: 'label'
                  )
                  ]
                ),
                Option(
                  name: ['--storage-queue-msg-ttl', '--qttl'],
                  description: 'Storage queue message time to live in seconds',
                  args: [
                    Arg(
                    name: 'storage-queue-msg-tt'
                  )
                  ]
                ),
                Option(
                  name: '--subject-begins-with',
                  description: 'An optional string to filter events for an event subscription based on a prefix. Wildcard characters are not supported',
                  args: [
                    Arg(
                    name: 'subject-begins-wit'
                  )
                  ]
                ),
                Option(
                  name: '--subject-ends-with',
                  description: 'An optional string to filter events for an event subscription based on a suffix. Wildcard characters are not supported',
                  args: [
                    Arg(
                    name: 'subject-ends-wit'
                  )
                  ]
                ),
                Option(
                  name: '--update-endpoint-type',
                  description: 'The type of the destination endpoint',
                  args: [
                    Arg(
                    name: 'update-endpoint-type',
                    suggestions: [

                      FigSuggestion(name: 'azurefunction'),
                      FigSuggestion(name: 'eventhub'),
                      FigSuggestion(name: 'hybridconnection'),
                      FigSuggestion(name: 'servicebusqueue'),
                      FigSuggestion(name: 'servicebustopic'),
                      FigSuggestion(name: 'storagequeue'),
                      FigSuggestion(name: 'webhook')
                    ]
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'key',
          description: 'Manage shared access keys of a topic',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List shared access keys of a topic',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the topic',
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
              description: 'Regenerate a shared access key of a topic',
              options: [

                Option(
                  name: '--key-name',
                  description: 'Key name to regenerate key1 or key2',
                  args: [
                    Arg(
                    name: 'key-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the topic',
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
          name: 'private-endpoint-connection',
          description: 'Manage private endpoint connections of a topic',
          subcommands: [

            Subcommand(
              name: 'approve',
              description: 'Approve a private endpoint connection request for a topic',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the private endpoint connection',
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
                  name: '--topic-name',
                  description: 'Name of the topic',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Comments for the approval',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a private endpoint connection for a topic',
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
                  description: 'Name of the private endpoint connection',
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
                  name: '--topic-name',
                  description: 'Name of the topic',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the properties of all the private endpoint connections for a topic',
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
                  name: '--topic-name',
                  description: 'Name of the topic',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'reject',
              description: 'Reject a private endpoint connection request for a topic',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the private endpoint connection',
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
                  name: '--topic-name',
                  description: 'Name of the topic',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Comments for the rejection',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Display the properties of a private endpoint connection for a topic',
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
                  description: 'Name of the private endpoint connection',
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
                  name: '--topic-name',
                  description: 'Name of the topic',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'private-link-resource',
          description: 'Manage private link resource of a topic',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the properties of all the private link resources for a topic',
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
                  name: '--topic-name',
                  description: 'Name of the topic',
                  args: [
                    Arg(
                    name: 'topic-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Display the properties of a private link resource for a topic',
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
                  description: 'Name of the private link resource',
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
                  name: '--topic-name',
                  description: 'Name of the topic',
                  args: [
                    Arg(
                    name: 'topic-nam'
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
      name: 'topic-type',
      description: 'Get details for topic types',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List registered topic types'
        ),
        Subcommand(
          name: 'list-event-types',
          description: 'List the event types supported by a topic type',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the topic type',
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
          description: 'Get the details for a topic type',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the topic type',
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
