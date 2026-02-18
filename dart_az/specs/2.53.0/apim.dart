// Auto-generated from TypeScript source: apim.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `apim` CLI
final FigSpec apimSpec = FigSpec(
  name: 'apim',
  description: 'Manage Azure API Management services',
  subcommands: [

    Subcommand(
      name: 'api',
      description: 'Manage Azure API Management API\'s',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an API Management API',
          options: [

            Option(
              name: '--api-id',
              description: 'Unique name of the api to be created',
              args: [
                Arg(
                name: 'api-i'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of the API to be created',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to the API',
              args: [
                Arg(
                name: 'pat'
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
              name: ['--service-name', '-n'],
              description: 'The name of the API Management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: '--api-type',
              description: 'The type of the API',
              args: [
                Arg(
                name: 'api-type',
                suggestions: [

                  FigSuggestion(name: 'graphql'),
                  FigSuggestion(name: 'http'),
                  FigSuggestion(name: 'soap'),
                  FigSuggestion(name: 'websocket')
                ]
              )
              ]
            ),
            Option(
              name: '--authorization-scope',
              description: 'Specifies the OAuth operations scope',
              args: [
                Arg(
                name: 'authorization-scop'
              )
              ]
            ),
            Option(
              name: '--authorization-server-id',
              description: 'Specifies the OAuth authorization server ID',
              args: [
                Arg(
                name: 'authorization-server-i'
              )
              ]
            ),
            Option(
              name: '--bearer-token-sending-methods',
              description: 'Specifies the sending methods for bearer token',
              args: [
                Arg(
                name: 'bearer-token-sending-method'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the API. May include HTML formatting tags',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--open-id-provider-id',
              description: 'Specifies the openid in the authentication setting',
              args: [
                Arg(
                name: 'open-id-provider-i'
              )
              ]
            ),
            Option(
              name: '--protocols',
              description: 'Describes on which protocols the operations in this API can be invoked',
              args: [
                Arg(
                name: 'protocols',
                suggestions: [

                  FigSuggestion(name: 'http'),
                  FigSuggestion(name: 'https'),
                  FigSuggestion(name: 'ws'),
                  FigSuggestion(name: 'wss')
                ]
              )
              ]
            ),
            Option(
              name: '--service-url',
              description: 'Absolute URL of the backend service implementing this API. Cannot be more than 2000 characters long',
              args: [
                Arg(
                name: 'service-ur'
              )
              ]
            ),
            Option(
              name: '--subscription-key-header-name',
              description: 'Specifies the subscription key header name',
              args: [
                Arg(
                name: 'subscription-key-header-nam'
              )
              ]
            ),
            Option(
              name: '--subscription-key-query-param-name',
              description: 'Specifies the subscription key query string parameter name',
              args: [
                Arg(
                name: 'subscription-key-query-param-nam'
              )
              ]
            ),
            Option(
              name: '--subscription-key-required',
              description: 'Specifies whether subscription key is required during call to this API, true - API is included into closed products only, false - API is included into open products alone, null - there is a mix of products',
              args: [
                Arg(
                name: 'subscription-key-require'
              )
              ]
            ),
            Option(
              name: '--subscription-required',
              description: 'If true, the API requires a subscription key on requests'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an API Management API',
          options: [

            Option(
              name: '--api-id',
              description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
              args: [
                Arg(
                name: 'api-i'
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
              name: ['--service-name', '-n'],
              description: 'The name of the API Management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: '--delete-revisions',
              description: 'Delete all revisions of the Api',
              args: [
                Arg(
                name: 'delete-revision'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'ETag of the Entity',
              args: [
                Arg(
                name: 'if-matc'
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
          name: 'import',
          description: 'Import an API Management API',
          options: [

            Option(
              name: '--path',
              description: 'Required. Relative URL uniquely identifying this API and all of its resource paths within the API Management service instance',
              args: [
                Arg(
                name: 'pat'
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
              name: ['--service-name', '-n'],
              description: 'The name of the api management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: '--specification-format',
              description: 'Specify the format of the imported API',
              args: [
                Arg(
                name: 'specification-format',
                suggestions: [

                  FigSuggestion(name: 'GraphQL'),
                  FigSuggestion(name: 'OpenApi'),
                  FigSuggestion(name: 'OpenApiJson'),
                  FigSuggestion(name: 'Swagger'),
                  FigSuggestion(name: 'Wadl'),
                  FigSuggestion(name: 'Wsdl')
                ]
              )
              ]
            ),
            Option(
              name: '--api-id',
              description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
              args: [
                Arg(
                name: 'api-i'
              )
              ]
            ),
            Option(
              name: '--api-revision',
              description: 'Describes the Revision of the Api. If no value is provided, default revision 1 is created',
              args: [
                Arg(
                name: 'api-revisio'
              )
              ]
            ),
            Option(
              name: '--api-type',
              description: 'The type of the API',
              args: [
                Arg(
                name: 'api-type',
                suggestions: [

                  FigSuggestion(name: 'graphql'),
                  FigSuggestion(name: 'http'),
                  FigSuggestion(name: 'soap'),
                  FigSuggestion(name: 'websocket')
                ]
              )
              ]
            ),
            Option(
              name: '--api-version',
              description: 'Describes the Version of the Api. If you add a version to a non-versioned API, an Original version will be automatically created and will respond on the default URL',
              args: [
                Arg(
                name: 'api-versio'
              )
              ]
            ),
            Option(
              name: '--api-version-set-id',
              description: 'Describes the Version Set to be used with the API',
              args: [
                Arg(
                name: 'api-version-set-i'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the API. May include HTML formatting tags',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'Display name of this API',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--protocols',
              description: 'Describes on which protocols(one or more) the operations in this API can be invoked',
              args: [
                Arg(
                name: 'protocols',
                suggestions: [

                  FigSuggestion(name: 'http'),
                  FigSuggestion(name: 'https'),
                  FigSuggestion(name: 'ws'),
                  FigSuggestion(name: 'wss')
                ]
              )
              ]
            ),
            Option(
              name: '--service-url',
              description: 'Absolute URL of the backend service implementing this API. Cannot be more than 2000 characters long',
              args: [
                Arg(
                name: 'service-ur'
              )
              ]
            ),
            Option(
              name: '--soap-api-type',
              description: 'The type of API when file format is WSDL',
              args: [
                Arg(
                name: 'soap-api-typ'
              )
              ]
            ),
            Option(
              name: '--specification-path',
              description: 'File path specified to import the API',
              args: [
                Arg(
                name: 'specification-pat'
              )
              ]
            ),
            Option(
              name: '--specification-url',
              description: 'Url specified to import the API',
              args: [
                Arg(
                name: 'specification-ur'
              )
              ]
            ),
            Option(
              name: '--subscription-key-header-name',
              description: 'Specifies the subscription key header name',
              args: [
                Arg(
                name: 'subscription-key-header-nam'
              )
              ]
            ),
            Option(
              name: '--subscription-key-query-param-name',
              description: 'Specifies the subscription key query string parameter name',
              args: [
                Arg(
                name: 'subscription-key-query-param-nam'
              )
              ]
            ),
            Option(
              name: '--subscription-required',
              description: 'If true, the API requires a subscription key on requests',
              args: [
                Arg(
                name: 'subscription-required',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--wsdl-endpoint-name',
              description: 'Local name of WSDL Endpoint (port) to be imported',
              args: [
                Arg(
                name: 'wsdl-endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--wsdl-service-name',
              description: 'Local name of WSDL Service to be imported',
              args: [
                Arg(
                name: 'wsdl-service-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List API Management API\'s',
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
              name: ['--service-name', '-n'],
              description: 'The name of the API Management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: '--filter-display-name',
              description: 'Filter of APIs by displayName',
              args: [
                Arg(
                name: 'filter-display-nam'
              )
              ]
            ),
            Option(
              name: '--skip',
              description: 'Number of records to skip',
              args: [
                Arg(
                name: 'ski'
              )
              ]
            ),
            Option(
              name: '--top',
              description: 'Number of records to return',
              args: [
                Arg(
                name: 'to'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of an API Management API',
          options: [

            Option(
              name: '--api-id',
              description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
              args: [
                Arg(
                name: 'api-i'
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
              name: '--service-name',
              description: 'The name of the API Management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an API Management API',
          options: [

            Option(
              name: '--api-id',
              description: 'Unique name of the api to be created',
              args: [
                Arg(
                name: 'api-i'
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
              name: ['--service-name', '-n'],
              description: 'The name of the API Management service instance',
              args: [
                Arg(
                name: 'service-nam'
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
              name: '--api-type',
              description: 'The type of the API',
              args: [
                Arg(
                name: 'api-type',
                suggestions: [

                  FigSuggestion(name: 'graphql'),
                  FigSuggestion(name: 'http'),
                  FigSuggestion(name: 'soap'),
                  FigSuggestion(name: 'websocket')
                ]
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the API. May include HTML formatting tags',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--display-name',
              description: 'API name. Must be 1 to 300 characters long',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--if-match',
              description: 'ETag of the Entity. Not required when creating an entity, but required when updating an entity. Default value is None',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--path',
              description: 'Required. Relative URL uniquely identifying this API and all of its resource paths within the API Management service instance',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--protocols',
              description: 'Describes on which protocols the operations in this API can be invoked',
              args: [
                Arg(
                name: 'protocols',
                suggestions: [

                  FigSuggestion(name: 'http'),
                  FigSuggestion(name: 'https'),
                  FigSuggestion(name: 'ws'),
                  FigSuggestion(name: 'wss')
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
              name: '--service-url',
              description: 'Absolute URL of the backend service implementing this API. Cannot be more than 2000 characters long',
              args: [
                Arg(
                name: 'service-ur'
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
              name: '--subscription-key-header-name',
              description: 'Specifies the subscription key header name',
              args: [
                Arg(
                name: 'subscription-key-header-nam'
              )
              ]
            ),
            Option(
              name: '--subscription-key-query-param-name',
              description: 'Specifies the subscription key query string parameter name',
              args: [
                Arg(
                name: 'subscription-key-query-param-nam'
              )
              ]
            ),
            Option(
              name: '--subscription-required',
              description: 'If true, the API requires a subscription key on requests',
              args: [
                Arg(
                name: 'subscription-required',
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
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of an apim api is met',
          options: [

            Option(
              name: '--api-id',
              description: 'API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number. Required',
              args: [
                Arg(
                name: 'api-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the api management service instance',
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
        ),
        Subcommand(
          name: 'operation',
          description: 'Manage Azure API Management API Operations',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a new operation in the API',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Required. Operation Name',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--method',
                  description: 'Required. A Valid HTTP Operation Method. Typical Http Methods like GET, PUT, POST but not limited by only them',
                  args: [
                    Arg(
                    name: 'metho'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--url-template',
                  description: 'Relative URL template identifying the target resource for this operation. May include parameters',
                  args: [
                    Arg(
                    name: 'url-templat'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of the operation. May include HTML formatting tags',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the Entity',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                ),
                Option(
                  name: '--operation-id',
                  description: 'Operation identifier within an API. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'operation-i'
                  )
                  ]
                ),
                Option(
                  name: ['--template-parameters', '--params', '-p'],
                  description: 'Collection of URL template parameters',
                  args: [
                    Arg(
                    name: 'template-parameter'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes the specified operation in the API',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--operation-id',
                  description: 'Operation identifier within an API. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'operation-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the Entity',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List a collection of the operations for the specified API',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets the details of the API Operation specified by its identifier',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--operation-id',
                  description: 'Operation identifier within an API. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'operation-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates the details of the operation in the API specified by its identifier',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--operation-id',
                  description: 'Operation identifier within an API. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'operation-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
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
                  name: '--description',
                  description: 'Description of the operation. May include HTML formatting tags',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Required. Operation Name',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the Entity',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                ),
                Option(
                  name: '--method',
                  description: 'Required. A Valid HTTP Operation Method. Typical Http Methods like GET, PUT, POST but not limited by only them',
                  args: [
                    Arg(
                    name: 'metho'
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
                  name: '--url-template',
                  description: 'Relative URL template identifying the target resource for this operation. May include parameters',
                  args: [
                    Arg(
                    name: 'url-templat'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'release',
          description: 'Manage Azure API Management API Release',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a new Release for the API',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--api-revision',
                  description: 'API revision number',
                  args: [
                    Arg(
                    name: 'api-revisio'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the Entity',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                ),
                Option(
                  name: '--notes',
                  description: 'Release Notes',
                  args: [
                    Arg(
                    name: 'note'
                  )
                  ]
                ),
                Option(
                  name: '--release-id',
                  description: 'Release identifier within an API. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'release-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes the specified release in the API',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--release-id',
                  description: 'Release identifier within an API. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'release-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the Entity',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists all releases of an API',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Returns the details of an API release',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--release-id',
                  description: 'Release identifier within an API. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'release-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates the details of the release of the API specified by its identifier',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--release-id',
                  description: 'Release identifier within an API. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'release-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
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
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the Entity',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                ),
                Option(
                  name: '--notes',
                  description: 'Release Notes',
                  args: [
                    Arg(
                    name: 'note'
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
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'revision',
          description: 'Manage Azure API Management API Revision',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create API revision',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--api-revision',
                  description: 'Describes the Revision of the Api',
                  args: [
                    Arg(
                    name: 'api-revisio'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--api-revision-description', '--rev-description'],
                  description: 'Description of the Api Revision',
                  args: [
                    Arg(
                    name: 'api-revision-descriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists all revisions of an API',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'schema',
          description: 'Manage Azure API Management API Schema\'s',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an API Management API Schema',
              options: [

                Option(
                  name: '--api-id',
                  description: 'Unique name of the api for which schema needs to be created',
                  args: [
                    Arg(
                    name: 'api-i'
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
                  name: '--schema-id',
                  description: 'Unique name of the api schema to be created',
                  args: [
                    Arg(
                    name: 'schema-i'
                  )
                  ]
                ),
                Option(
                  name: '--schema-type',
                  description: 'Schema type (e.g. application/json, application/vnd.ms-azure-apim.graphql.schema)',
                  args: [
                    Arg(
                    name: 'schema-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--resource-type',
                  description: 'The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"',
                  args: [
                    Arg(
                    name: 'resource-typ'
                  )
                  ]
                ),
                Option(
                  name: '--schema-content',
                  description: 'Json escaped string defining the document representing the Schema',
                  args: [
                    Arg(
                    name: 'schema-conten'
                  )
                  ]
                ),
                Option(
                  name: '--schema-name',
                  description: 'The name of the schema resource',
                  args: [
                    Arg(
                    name: 'schema-nam'
                  )
                  ]
                ),
                Option(
                  name: '--schema-path',
                  description: 'File path specified to import schema of the API',
                  args: [
                    Arg(
                    name: 'schema-pat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an API Management API Schema',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
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
                  name: '--schema-id',
                  description: 'Schema identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'schema-i'
                  )
                  ]
                ),
                Option(
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the Entity',
                  args: [
                    Arg(
                    name: 'if-matc'
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
              name: 'get-etag',
              description: 'Get etag of an API Management API schema',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
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
                  name: '--schema-id',
                  description: 'Schema identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'schema-i'
                  )
                  ]
                ),
                Option(
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List API Management API schema\'s',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--filter-display-name',
                  description: 'Filter of APIs by displayName',
                  args: [
                    Arg(
                    name: 'filter-display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--skip',
                  description: 'Number of records to skip',
                  args: [
                    Arg(
                    name: 'ski'
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'Number of records to return',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show details of an API Management API Schema',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
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
                  name: '--schema-id',
                  description: 'Schema identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'schema-i'
                  )
                  ]
                ),
                Option(
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of an apim api schema is met',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number. Required',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the api management service instance',
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
                  name: '--schema-id',
                  description: 'Schema id identifier. Must be unique in the current API Management service instance. Required',
                  args: [
                    Arg(
                    name: 'schema-i'
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
          name: 'versionset',
          description: 'Manage Azure API Management API Version Set',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a Api Version Set',
              options: [

                Option(
                  name: '--display-name',
                  description: 'Required. Name of API Version Set',
                  args: [
                    Arg(
                    name: 'display-nam'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--versioning-scheme',
                  description: 'Required. An value that determines where the API Version identifer will be located in a HTTP request. Possible values include: \'Segment\', \'Query\', \'Header\'',
                  args: [
                    Arg(
                    name: 'versioning-schem'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of API Version Set',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the Entity',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                ),
                Option(
                  name: '--version-header-name',
                  description: 'Name of HTTP header parameter that indicates the API Version if versioningScheme is set to header',
                  args: [
                    Arg(
                    name: 'version-header-nam'
                  )
                  ]
                ),
                Option(
                  name: '--version-query-name',
                  description: 'Name of query parameter that indicates the API Version if versioningScheme is set to query',
                  args: [
                    Arg(
                    name: 'version-query-nam'
                  )
                  ]
                ),
                Option(
                  name: '--version-set-id',
                  description: 'A resource identifier for the related ApiVersionSet',
                  args: [
                    Arg(
                    name: 'version-set-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes specific Api Version Set',
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--version-set-id',
                  description: 'A resource identifier for the related ApiVersionSet',
                  args: [
                    Arg(
                    name: 'version-set-i'
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the Entity',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists a collection of API Version Sets in the specified service instance',
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets the details of the Api Version Set specified by its identifier',
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--version-set-id',
                  description: 'A resource identifier for the related ApiVersionSet',
                  args: [
                    Arg(
                    name: 'version-set-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates the details of the Api VersionSet specified by its identifier',
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--version-set-id',
                  description: 'A resource identifier for the related ApiVersionSet',
                  args: [
                    Arg(
                    name: 'version-set-i'
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
                  name: '--description',
                  description: 'Description of API Version Set',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Required. Name of API Version Set',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the Entity',
                  args: [
                    Arg(
                    name: 'if-matc'
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
                  name: '--version-header-name',
                  description: 'Name of HTTP header parameter that indicates the API Version if versioningScheme is set to header',
                  args: [
                    Arg(
                    name: 'version-header-nam'
                  )
                  ]
                ),
                Option(
                  name: '--version-query-name',
                  description: 'Name of query parameter that indicates the API Version if versioningScheme is set to query',
                  args: [
                    Arg(
                    name: 'version-query-nam'
                  )
                  ]
                ),
                Option(
                  name: '--versioning-scheme',
                  description: 'Required. An value that determines where the API Version identifer will be located in a HTTP request. Possible values include: \'Segment\', \'Query\', \'Header\'',
                  args: [
                    Arg(
                    name: 'versioning-schem'
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
      name: 'apply-network-updates',
      description: 'Update the API Management resource running in the virtual network to pick the updated network settings',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the api management service instance',
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
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        )
      ]
    ),
    Subcommand(
      name: 'backup',
      description: 'Creates a backup of the API Management service to the given Azure Storage Account. This is long running operation and could take several minutes to complete',
      options: [

        Option(
          name: '--backup-name',
          description: 'The name of the backup file to create',
          args: [
            Arg(
            name: 'backup-nam'
          )
          ]
        ),
        Option(
          name: ['--storage-account-container', '--container-name'],
          description: 'The name of the storage account container used to place the backup',
          args: [
            Arg(
            name: 'storage-account-containe'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the api management service instance',
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
          name: '--storage-account-key',
          description: 'The access key of the storage account used to place the backup',
          args: [
            Arg(
            name: 'storage-account-ke'
          )
          ]
        ),
        Option(
          name: '--storage-account-name',
          description: 'The name of the storage account used to place the backup',
          args: [
            Arg(
            name: 'storage-account-nam'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        )
      ]
    ),
    Subcommand(
      name: 'check-name',
      description: 'Checks to see if a service name is available to use',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the api management service instance',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create an API Management service instance',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Unique name of the service instance to be created',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--publisher-email',
          description: 'The e-mail address to receive all system notifications',
          args: [
            Arg(
            name: 'publisher-emai'
          )
          ]
        ),
        Option(
          name: '--publisher-name',
          description: 'The name of your organization for use in the developer portal and e-mail notifications',
          args: [
            Arg(
            name: 'publisher-nam'
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
          name: '--disable-gateway',
          description: 'Disable gateway in the master region. Only valid for an Api Management service deployed in multiple locations',
          args: [
            Arg(
            name: 'disable-gateway',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-client-certificate',
          description: 'Enforces a client certificate to be presented on each request to the gateway and also enables the ability to authenticate the certificate in the policy on the gateway',
          args: [
            Arg(
            name: 'enable-client-certificate',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-managed-identity',
          description: 'Create a managed identity for the API Management service to access other Azure resources. Only meant to be used for Consumption SKU Service'
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
          name: '--public-network-access',
          description: 'Whether or not public endpoint access is allowed for this API Management service. If set to true, private endpoints are the exclusive access method',
          args: [
            Arg(
            name: 'public-network-access',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--sku-capacity',
          description: 'The number of deployed units of the SKU',
          args: [
            Arg(
            name: 'sku-capacit'
          )
          ]
        ),
        Option(
          name: '--sku-name',
          description: 'The sku of the api management instance',
          args: [
            Arg(
            name: 'sku-name',
            suggestions: [

              FigSuggestion(name: 'Basic'),
              FigSuggestion(name: 'Consumption'),
              FigSuggestion(name: 'Developer'),
              FigSuggestion(name: 'Isolated'),
              FigSuggestion(name: 'Premium'),
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
          name: ['--virtual-network', '-v'],
          description: 'The virtual network type',
          args: [
            Arg(
            name: 'virtual-network',
            suggestions: [

              FigSuggestion(name: 'External'),
              FigSuggestion(name: 'Internal'),
              FigSuggestion(name: 'None')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Deletes an API Management service',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the api management service instance',
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
      description: 'List API Management service instances',
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
      name: 'restore',
      description: 'Restores a backup of an API Management service created using the ApiManagementService_Backup operation on the current service. This is a long running operation and could take several minutes to complete',
      options: [

        Option(
          name: '--backup-name',
          description: 'The name of the backup file to restore',
          args: [
            Arg(
            name: 'backup-nam'
          )
          ]
        ),
        Option(
          name: ['--storage-account-container', '--container-name'],
          description: 'The name of the storage account container used to retrieve the backup from',
          args: [
            Arg(
            name: 'storage-account-containe'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the api management service instance',
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
          name: '--storage-account-key',
          description: 'The access key of the storage account used to retrieve the backup from',
          args: [
            Arg(
            name: 'storage-account-ke'
          )
          ]
        ),
        Option(
          name: '--storage-account-name',
          description: 'The name of the storage account used to retrieve the backup from',
          args: [
            Arg(
            name: 'storage-account-nam'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Show details of an API Management service instance',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the api management service instance',
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
      description: 'Update an API Management service instance',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the api management service instance',
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
          name: '--add',
          description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
          args: [
            Arg(
            name: 'ad'
          )
          ]
        ),
        Option(
          name: '--disable-gateway',
          description: 'Disable gateway in the master region. Only valid for an Api Management service deployed in multiple locations',
          args: [
            Arg(
            name: 'disable-gateway',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-client-certificate',
          description: 'Enforces a client certificate to be presented on each request to the gateway and also enables the ability to authenticate the certificate in the policy on the gateway',
          args: [
            Arg(
            name: 'enable-client-certificate',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-managed-identity',
          description: 'Create a managed identity for the API Management service to access other Azure resources. Only meant to be used for Consumption SKU Service',
          args: [
            Arg(
            name: 'enable-managed-identity',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--force-string',
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--public-network-access',
          description: 'Whether or not public endpoint access is allowed for this API Management service. If set to true, private endpoints are the exclusive access method',
          args: [
            Arg(
            name: 'public-network-access',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--publisher-email',
          description: 'The e-mail address to receive all system notifications',
          args: [
            Arg(
            name: 'publisher-emai'
          )
          ]
        ),
        Option(
          name: '--publisher-name',
          description: 'The name of your organization for use in the developer portal and e-mail notifications',
          args: [
            Arg(
            name: 'publisher-nam'
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
          name: '--sku-capacity',
          description: 'The number of deployed units of the SKU',
          args: [
            Arg(
            name: 'sku-capacit'
          )
          ]
        ),
        Option(
          name: '--sku-name',
          description: 'The sku of the api management instance',
          args: [
            Arg(
            name: 'sku-name',
            suggestions: [

              FigSuggestion(name: 'Basic'),
              FigSuggestion(name: 'Consumption'),
              FigSuggestion(name: 'Developer'),
              FigSuggestion(name: 'Isolated'),
              FigSuggestion(name: 'Premium'),
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
          name: ['--virtual-network', '-v'],
          description: 'The virtual network type',
          args: [
            Arg(
            name: 'virtual-network',
            suggestions: [

              FigSuggestion(name: 'External'),
              FigSuggestion(name: 'Internal'),
              FigSuggestion(name: 'None')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'wait',
      description: 'Place the CLI in a waiting state until a condition of an apim is met',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the api management service instance',
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
    ),
    Subcommand(
      name: 'deletedservice',
      description: 'Manage soft-deleted Azure API Management services',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all soft-deleted Api Management services instances available for undelete for the given subscription'
        ),
        Subcommand(
          name: 'purge',
          description: 'Purge soft-deleted Api Management service instance (deletes it with no option to undelete)',
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
              name: ['--service-name', '-n'],
              description: 'The name of the soft deleted API Management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get soft-deleted Api Management service instances available for undelete by name',
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
              name: ['--service-name', '-n'],
              description: 'The name of the soft deleted API Management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'graphql',
      description: 'Manage Azure API Management GraphQL API\'s',
      subcommands: [

        Subcommand(
          name: 'resolver',
          description: 'Manage Azure API Management GraphQL API\'s Resolvers',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new resolver in the GraphQL API or updates an existing one',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--display-name',
                  description: 'Resolver Name',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--resolver-id',
                  description: 'Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'resolver-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of the resolver. May include HTML formatting tags',
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
              description: 'Delete the specified resolver in the GraphQL API',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--resolver-id',
                  description: 'Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'resolver-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the Entity',
                  args: [
                    Arg(
                    name: 'if-matc'
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
              description: 'List a collection of the resolvers for the specified GraphQL API',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of the GraphQL API Resolver specified by its identifier',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--resolver-id',
                  description: 'Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'resolver-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the API Management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'policy',
              description: 'Manage Azure API Management GraphQL API\'s Resolvers Policies',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create or updates policy configuration for the GraphQL API Resolver level',
                  options: [

                    Option(
                      name: '--api-id',
                      description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                      args: [
                        Arg(
                        name: 'api-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--resolver-id',
                      description: 'Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance',
                      args: [
                        Arg(
                        name: 'resolver-i'
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
                      name: ['--service-name', '-n'],
                      description: 'The name of the API Management service instance',
                      args: [
                        Arg(
                        name: 'service-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--value-path',
                      description: 'Contents of the Policy as defined by the format',
                      args: [
                        Arg(
                        name: 'value-pat'
                      )
                      ]
                    ),
                    Option(
                      name: '--policy-format',
                      description: 'Format of the policyContent',
                      args: [
                        Arg(
                        name: 'policy-forma'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete the policy configuration at the GraphQL Api Resolver',
                  options: [

                    Option(
                      name: '--api-id',
                      description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                      args: [
                        Arg(
                        name: 'api-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--resolver-id',
                      description: 'Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance',
                      args: [
                        Arg(
                        name: 'resolver-i'
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
                      name: ['--service-name', '-n'],
                      description: 'The name of the API Management service instance',
                      args: [
                        Arg(
                        name: 'service-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--if-match',
                      description: 'ETag of the Entity',
                      args: [
                        Arg(
                        name: 'if-matc'
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
                  description: 'Get the list of policy configuration at the GraphQL API Resolver level',
                  options: [

                    Option(
                      name: '--api-id',
                      description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                      args: [
                        Arg(
                        name: 'api-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--resolver-id',
                      description: 'Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance',
                      args: [
                        Arg(
                        name: 'resolver-i'
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
                      name: ['--service-name', '-n'],
                      description: 'The name of the API Management service instance',
                      args: [
                        Arg(
                        name: 'service-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the policy configuration at the GraphQL API Resolver level',
                  options: [

                    Option(
                      name: '--api-id',
                      description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                      args: [
                        Arg(
                        name: 'api-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--resolver-id',
                      description: 'Resolver identifier within a GraphQL API. Must be unique in the current API Management service instance',
                      args: [
                        Arg(
                        name: 'resolver-i'
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
                      name: ['--service-name', '-n'],
                      description: 'The name of the API Management service instance',
                      args: [
                        Arg(
                        name: 'service-nam'
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
      name: 'nv',
      description: 'Manage Azure API Management Named Values',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an API Management Named Value',
          options: [

            Option(
              name: '--display-name',
              description: 'The Display name of the Named Value',
              args: [
                Arg(
                name: 'display-nam'
              )
              ]
            ),
            Option(
              name: '--named-value-id',
              description: 'Unique name for the Named Value to be created',
              args: [
                Arg(
                name: 'named-value-i'
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
              name: ['--service-name', '-n'],
              description: 'The name of the API Management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'ETag of the Entity',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--secret',
              description: 'Determines whether the value is a secret and should be encrypted or not. Default value is false'
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
              name: '--value',
              description: 'The value of the Named Value',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an API Management Named Value',
          options: [

            Option(
              name: '--named-value-id',
              description: 'Identifier of the NamedValue',
              args: [
                Arg(
                name: 'named-value-i'
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
              name: ['--service-name', '-n'],
              description: 'The name of the API Management service instance',
              args: [
                Arg(
                name: 'service-nam'
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
          description: 'List API Management Named Values',
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
              name: ['--service-name', '-n'],
              description: 'The name of the API Management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of an API Management Named Value',
          options: [

            Option(
              name: '--named-value-id',
              description: 'Identifier of the NamedValue',
              args: [
                Arg(
                name: 'named-value-i'
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
              name: ['--service-name', '-n'],
              description: 'The name of the API Management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-secret',
          description: 'Gets the secret of an API Management Named Value',
          options: [

            Option(
              name: '--named-value-id',
              description: 'Identifier of the NamedValue',
              args: [
                Arg(
                name: 'named-value-i'
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
              name: ['--service-name', '-n'],
              description: 'The name of the API Management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an API Management Named Value',
          options: [

            Option(
              name: '--named-value-id',
              description: 'Unique name of the api to be created',
              args: [
                Arg(
                name: 'named-value-i'
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
              name: ['--service-name', '-n'],
              description: 'The name of the API Management service instance',
              args: [
                Arg(
                name: 'service-nam'
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
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--if-match',
              description: 'ETag of the Entity',
              args: [
                Arg(
                name: 'if-matc'
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
              name: '--secret',
              description: 'Determines whether the value is a secret and should be encrypted or not. Default value is false',
              args: [
                Arg(
                name: 'secret',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
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
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--value',
              description: 'The value of the Named Value',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of an apim named value is met',
          options: [

            Option(
              name: '--named-value-id',
              description: 'Identifier of the NamedValue',
              args: [
                Arg(
                name: 'named-value-i'
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
              name: ['--service-name', '-n'],
              description: 'The name of the API Management service instance',
              args: [
                Arg(
                name: 'service-nam'
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
      name: 'product',
      description: 'Manage Azure API Management Product\'s',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a product',
          options: [

            Option(
              name: '--product-name',
              description: 'Product name',
              args: [
                Arg(
                name: 'product-nam'
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
              name: ['--service-name', '-n'],
              description: 'The name of the api management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: '--approval-required',
              description: 'Whether subscription approval is required. If false, new subscriptions will be approved automatically enabling developers to call the product’s APIs immediately after subscribing. If true, administrators must manually approve the subscription before the developer can use any of the product’s APIs. Can be present only if subscriptionRequired property is present and has a value of false',
              args: [
                Arg(
                name: 'approval-required',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Product description. May include HTML formatting tags',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--legal-terms',
              description: 'Product terms of use. Developers trying to subscribe to the product will be presented and required to accept these terms before they can complete the subscription process',
              args: [
                Arg(
                name: 'legal-term'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--product-id',
              description: 'Product identifier. Must be unique in the current API Management service instance',
              args: [
                Arg(
                name: 'product-i'
              )
              ]
            ),
            Option(
              name: '--state',
              description: 'Whether product is published or not. Published products are discoverable by users of developer portal. Non published products are visible only to administrators. Default state of Product is notPublished. Possible values include: \'notPublished\', \'published\'',
              args: [
                Arg(
                name: 'state',
                suggestions: [

                  FigSuggestion(name: 'notPublished'),
                  FigSuggestion(name: 'published')
                ]
              )
              ]
            ),
            Option(
              name: ['--subscription-required', '-s'],
              description: 'Whether a product subscription is required for accessing APIs included in this product',
              args: [
                Arg(
                name: 'subscription-required',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--subscriptions-limit',
              description: 'Whether the number of subscriptions a user can have to this product at the same time. Set to null or omit to allow unlimited per user subscriptions. Can be present only if subscriptionRequired property is present and has a value of false',
              args: [
                Arg(
                name: 'subscriptions-limi'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete product',
          options: [

            Option(
              name: '--product-id',
              description: 'Product identifier. Must be unique in the current API Management service instance',
              args: [
                Arg(
                name: 'product-i'
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
              name: ['--service-name', '-n'],
              description: 'The name of the api management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: '--delete-subscriptions',
              description: 'Delete existing subscriptions associated with the product or not',
              args: [
                Arg(
                name: 'delete-subscription'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'ETag of the Entity',
              args: [
                Arg(
                name: 'if-matc'
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
          description: 'Lists a collection of products in the specified service instance',
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
              name: ['--service-name', '-n'],
              description: 'The name of the api management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets the details of the product specified by its identifier',
          options: [

            Option(
              name: '--product-id',
              description: 'Product identifier. Must be unique in the current API Management service instance',
              args: [
                Arg(
                name: 'product-i'
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
              name: ['--service-name', '-n'],
              description: 'The name of the api management service instance',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update existing product details',
          options: [

            Option(
              name: '--product-id',
              description: 'Product identifier. Must be unique in the current API Management service instance',
              args: [
                Arg(
                name: 'product-i'
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
              name: ['--service-name', '-n'],
              description: 'The name of the api management service instance',
              args: [
                Arg(
                name: 'service-nam'
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
              name: '--approval-required',
              description: 'Whether subscription approval is required. If false, new subscriptions will be approved automatically enabling developers to call the product’s APIs immediately after subscribing. If true, administrators must manually approve the subscription before the developer can use any of the product’s APIs. Can be present only if subscriptionRequired property is present and has a value of false',
              args: [
                Arg(
                name: 'approval-required',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Product description. May include HTML formatting tags',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--if-match',
              description: 'ETag of the Entity',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--legal-terms',
              description: 'Product terms of use. Developers trying to subscribe to the product will be presented and required to accept these terms before they can complete the subscription process',
              args: [
                Arg(
                name: 'legal-term'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--product-name',
              description: 'Product name',
              args: [
                Arg(
                name: 'product-nam'
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
              name: '--state',
              description: 'Whether product is published or not. Published products are discoverable by users of developer portal. Non published products are visible only to administrators. Default state of Product is notPublished. Possible values include: \'notPublished\', \'published\'',
              args: [
                Arg(
                name: 'state',
                suggestions: [

                  FigSuggestion(name: 'notPublished'),
                  FigSuggestion(name: 'published')
                ]
              )
              ]
            ),
            Option(
              name: ['--subscription-required', '-s'],
              description: 'Whether a product subscription is required for accessing APIs included in this product',
              args: [
                Arg(
                name: 'subscription-required',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--subscriptions-limit',
              description: 'Whether the number of subscriptions a user can have to this product at the same time. Set to null or omit to allow unlimited per user subscriptions. Can be present only if subscriptionRequired property is present and has a value of false',
              args: [
                Arg(
                name: 'subscriptions-limi'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of an apim product is met',
          options: [

            Option(
              name: '--product-id',
              description: 'Product identifier. Must be unique in the current API Management service instance',
              args: [
                Arg(
                name: 'product-i'
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
              name: ['--service-name', '-n'],
              description: 'The name of the api management service instance',
              args: [
                Arg(
                name: 'service-nam'
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
        ),
        Subcommand(
          name: 'api',
          description: 'Manage Azure API Management Product\'s APIs',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add an API to the specified product',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--product-id',
                  description: 'Product identifier. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'product-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the api management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'check',
              description: 'Checks that API entity specified by identifier is associated with the Product entity',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--product-id',
                  description: 'Product identifier. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'product-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the api management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes the specified API from the specified product',
              options: [

                Option(
                  name: '--api-id',
                  description: 'API identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number',
                  args: [
                    Arg(
                    name: 'api-i'
                  )
                  ]
                ),
                Option(
                  name: '--product-id',
                  description: 'Product identifier. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'product-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the api management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists a collection of the APIs associated with a product',
              options: [

                Option(
                  name: '--product-id',
                  description: 'Product identifier. Must be unique in the current API Management service instance',
                  args: [
                    Arg(
                    name: 'product-i'
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
                  name: ['--service-name', '-n'],
                  description: 'The name of the api management service instance',
                  args: [
                    Arg(
                    name: 'service-nam'
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
);
