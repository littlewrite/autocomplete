// Auto-generated from TypeScript source: search.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `search` CLI
final FigSpec searchSpec = FigSpec(
  name: 'search',
  description: 'Manage Azure Search services, admin keys and query keys',
  subcommands: [

    Subcommand(
      name: 'admin-key',
      description: 'Manage Azure Search admin keys',
      subcommands: [

        Subcommand(
          name: 'renew',
          description: 'Regenerates either the primary or secondary admin API key',
          options: [

            Option(
              name: '--key-kind',
              description: 'The type (primary or secondary) of the admin key',
              args: [
                Arg(
                name: 'key-kin'
              )
              ]
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
              description: 'The name of the search service',
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
          description: 'Gets the primary and secondary admin API keys for the specified Azure Cognitive Search service',
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
              name: '--service-name',
              description: 'The name of the search service',
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
      name: 'private-endpoint-connection',
      description: 'Manage Azure Search private endpoint connections',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Disconnects the private endpoint connection and deletes it from the search service',
          options: [

            Option(
              name: ['--private-endpoint-connection-name', '--name', '-n'],
              description: 'The name of the private endpoint connection to the Azure Cognitive Search service with the specified resource group. Required',
              args: [
                Arg(
                name: 'private-endpoint-connection-nam'
              )
              ]
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
              description: 'The name of the search service',
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
          description: 'Gets a list of all private endpoint connections in the given service',
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
              name: '--service-name',
              description: 'The name of the search service',
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
          description: 'Gets the details of the private endpoint connection to the search service in the given resource group',
          options: [

            Option(
              name: ['--private-endpoint-connection-name', '--name', '-n'],
              description: 'The name of the private endpoint connection to the Azure Cognitive Search service with the specified resource group. Required',
              args: [
                Arg(
                name: 'private-endpoint-connection-nam'
              )
              ]
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
              description: 'The name of the search service',
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
          description: 'Update an existing private endpoint connection in a Search service in the given resource group',
          options: [

            Option(
              name: '--actions-required',
              description: 'Custom \'actions required\' message when updating the private endpoint connection resource',
              args: [
                Arg(
                name: 'actions-require'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Custom description when updating the private endpoint connection resource',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the private endpoint connection resource; for example: {the name of the private endpoint resource}.{guid}',
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
              name: '--service-name',
              description: 'The name of the search service',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'The updated status of the private endpoint connection resource. Possible values include: "Pending", "Approved", "Rejected", "Disconnected"',
              args: [
                Arg(
                name: 'statu'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'private-link-resource',
      description: 'Manage Azure Search private link resources',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Gets a list of all supported private link resource types for the given service',
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
              name: '--service-name',
              description: 'The name of the search service',
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
      name: 'query-key',
      description: 'Manage Azure Search query keys',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Generates a new query key for the specified search service',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the query key',
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
              name: '--service-name',
              description: 'The name of the search service',
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
          description: 'Deletes the specified query key',
          options: [

            Option(
              name: '--key-value',
              description: 'The value of the query key',
              args: [
                Arg(
                name: 'key-valu'
              )
              ]
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
              description: 'The name of the search service',
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
          description: 'Returns the list of query API keys for the given Azure Cognitive Search service',
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
              name: '--service-name',
              description: 'The name of the search service',
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
      name: 'service',
      description: 'Manage Azure Search services',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a Search service in the given resource group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the search service',
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
              name: '--sku',
              description: 'The SKU of the search service, which determines price tier and capacity limits. Accepted Values: Free, Basic, Standard, Standard2, Standard3',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Basic'),
                  FigSuggestion(name: 'Free'),
                  FigSuggestion(name: 'Standard'),
                  FigSuggestion(name: 'Standard2'),
                  FigSuggestion(name: 'Standard3')
                ]
              )
              ]
            ),
            Option(
              name: '--aad-auth-failure-mode',
              description: 'Describes response code from calls to the search service that failed authentication; possible values include "http401WithBearerChallenge", "http403"; This cannot be combined with disable_local_auth',
              args: [
                Arg(
                name: 'aad-auth-failure-mod'
              )
              ]
            ),
            Option(
              name: '--auth-options',
              description: 'Options for authenticating calls to the search service; possible values include"aadOrApiKey", "apiKeyOnly"; This cannot be combined with disable_local_auth',
              args: [
                Arg(
                name: 'auth-option'
              )
              ]
            ),
            Option(
              name: '--disable-local-auth',
              description: 'If calls to the search service will not be permitted to utilize API keys for authentication; This cannot be combined with auth_options',
              args: [
                Arg(
                name: 'disable-local-auth',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--hosting-mode',
              description: 'The hosting mode; possible values include: "default", "highDensity"; Note that "highDensity" is only applicable to the standard3 SKU',
              args: [
                Arg(
                name: 'hosting-mod'
              )
              ]
            ),
            Option(
              name: '--identity-type',
              description: 'The identity type; possible values include: "None", "SystemAssigned"',
              args: [
                Arg(
                name: 'identity-typ'
              )
              ]
            ),
            Option(
              name: '--ip-rules',
              description: 'Public IP(v4) addresses or CIDR ranges to the search service, seperated by comma or semicolon; these IP rules are applicable only when --public-network-access is "enabled"',
              args: [
                Arg(
                name: 'ip-rule'
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
              name: '--partition-count',
              description: 'Number of partitions in the search service',
              args: [
                Arg(
                name: 'partition-coun'
              )
              ]
            ),
            Option(
              name: ['--public-network-access', '--public-access'],
              description: 'Public accessibility to the search service; allowed values are "enabled" or "disabled"',
              args: [
                Arg(
                name: 'public-network-acces'
              )
              ]
            ),
            Option(
              name: '--replica-count',
              description: 'Number of replicas in the search service',
              args: [
                Arg(
                name: 'replica-coun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a search service in the given resource group, along with its associated resources',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the search service',
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
          description: 'Gets a list of all Search services in the given resource group',
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
          description: 'Gets the search service with the given name in the given resource group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the search service',
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
          description: 'Update partition and replica of the given search service',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the search service',
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
              name: '--aad-auth-failure-mode',
              description: 'Describes response code from calls to the search service that failed authentication; possible values include "http401WithBearerChallenge", "http403"; This cannot be combined with disable_local_auth',
              args: [
                Arg(
                name: 'aad-auth-failure-mod'
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
              name: '--auth-options',
              description: 'Options for authenticating calls to the search service; possible values include "aadOrApiKey", "apiKeyOnly"; This cannot be combined with disable_local_auth',
              args: [
                Arg(
                name: 'auth-option'
              )
              ]
            ),
            Option(
              name: '--disable-local-auth',
              description: 'If calls to the search service will not be permitted to utilize API keys for authentication. This cannot be combined with auth_options',
              args: [
                Arg(
                name: 'disable-local-auth',
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
              name: '--identity-type',
              description: 'The identity type; possible values include: "None", "SystemAssigned"',
              args: [
                Arg(
                name: 'identity-typ'
              )
              ]
            ),
            Option(
              name: '--ip-rules',
              description: 'Public IP(v4) addresses or CIDR ranges to the search service, seperated by comma(\',\') or semicolon(\';\'); If spaces (\' \'), \',\' or \';\' is provided, any existing IP rule will be nullified and no public IP rule is applied. These IP rules are applicable only when public_network_access is "enabled"',
              args: [
                Arg(
                name: 'ip-rule'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--partition-count',
              description: 'Number of partitions in the search service',
              args: [
                Arg(
                name: 'partition-coun'
              )
              ]
            ),
            Option(
              name: ['--public-network-access', '--public-access'],
              description: 'Public accessibility to the search service; allowed values are "enabled" or "disabled"',
              args: [
                Arg(
                name: 'public-network-acces'
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
              name: '--replica-count',
              description: 'Number of replicas in the search service',
              args: [
                Arg(
                name: 'replica-coun'
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
        ),
        Subcommand(
          name: 'wait',
          description: 'Wait for async service operations',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the search service',
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
      name: 'shared-private-link-resource',
      description: 'Manage Azure Search shared private link resources',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create shared privatelink resources in a Search service in the given resource group',
          options: [

            Option(
              name: '--group-id',
              description: 'The group id of the resource; for example: blob, sql or vault',
              args: [
                Arg(
                name: 'group-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the shared private link resource',
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
              description: 'Fully qualified resource ID for the resource. for example: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/ {resourceProviderNamespace}/{resourceType}/{resourceName}',
              args: [
                Arg(
                name: 'resource-i'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the search service',
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
              name: '--request-message',
              description: 'Custom request message when creating or updating the shared privatelink resources',
              args: [
                Arg(
                name: 'request-messag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Initiates the deletion of the shared private link resource from the search service',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the shared private link resource managed by the Azure Cognitive Search service within the specified resource group. Required',
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
              name: '--service-name',
              description: 'The name of the search service',
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
          description: 'Gets a list of all shared private link resources managed by the given service',
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
              name: '--service-name',
              description: 'The name of the search service',
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
          description: 'Gets the details of the shared private link resource managed by the search service in the given resource group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the shared private link resource managed by the Azure Cognitive Search service within the specified resource group. Required',
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
              name: '--service-name',
              description: 'The name of the search service',
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
          description: 'Update shared privatelink resources in a Search service in the given resource group',
          options: [

            Option(
              name: '--group-id',
              description: 'The group id of the resource; for example: blob, sql or vault',
              args: [
                Arg(
                name: 'group-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the shared private link resource',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--request-message',
              description: 'Custom request message when creating or updating the shared privatelink resources',
              args: [
                Arg(
                name: 'request-messag'
              )
              ]
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
              description: 'Fully qualified resource ID for the resource; for example: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/ {resourceProviderNamespace}/{resourceType}/{resourceName}',
              args: [
                Arg(
                name: 'resource-i'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the search service',
              args: [
                Arg(
                name: 'service-nam'
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
          name: 'wait',
          description: 'Wait for async shared private link resource operations',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the shared private link resource managed by the Azure Cognitive Search service within the specified resource group. Required',
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
              name: '--service-name',
              description: 'The name of the search service',
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
    )
  ]
);
