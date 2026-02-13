// Auto-generated from TypeScript source: healthcareapis.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `healthcareapis` CLI
final FigSpec healthcareapisSpec = FigSpec(
  name: 'healthcareapis',
  description: 'Manage Healthcare Apis',
  subcommands: [

    Subcommand(
      name: 'acr',
      description: 'Healthcareapis acr',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add a list of registries to the service, repeated ones will be ignored',
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
              name: '--login-servers',
              description: 'The list of login servers that shallbe added to the service instance',
              args: [
                Arg(
                name: 'login-server'
              )
              ]
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
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
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
          description: 'Lists all container registries associated with the service',
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
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove a list of registries from the service, non-existing ones will be ignored',
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
              name: '--login-servers',
              description: 'The list of login servers that shallbe removed from the service instance',
              args: [
                Arg(
                name: 'login-server'
              )
              ]
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
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
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
          name: 'reset',
          description: 'Reset the container registries associated with the service to a new list',
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
              name: '--login-servers',
              description: 'The list of login servers to substitute for the existing one',
              args: [
                Arg(
                name: 'login-server'
              )
              ]
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
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
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
      name: 'operation-result',
      description: 'Healthcareapis operation-result',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Get the operation result for a long running operation',
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
              name: '--location-name',
              description: 'The location of the operation',
              args: [
                Arg(
                name: 'location-nam'
              )
              ]
            ),
            Option(
              name: '--operation-result-id',
              description: 'The ID of the operation result to get',
              args: [
                Arg(
                name: 'operation-result-i'
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
      name: 'private-endpoint-connection',
      description: 'Healthcareapis private-endpoint-connection',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Update the state of the specified private endpoint connection associated with the service',
          options: [

            Option(
              name: ['--private-endpoint-connection-name', '--name', '-n'],
              description: 'The name of the private endpoint connection associated with the Azure resource',
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
              name: '--resource-name',
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--private-link-service-connection-state', '-s'],
              description: 'A collection of information about the state of the connection between service consumer and provider',
              args: [
                Arg(
                name: 'private-link-service-connection-stat'
              )
              ]
            ),
            Option(
              name: '--private-link-service-connection-state-actions-required',
              description: 'Argument \'private_link_service_connection_state_actions_required\' has been deprecated and will be removed in a future release. Use \'--private-link-service-connection-state\' instead. A message indicating if changes on the service provider require any updates on the consumer',
              args: [
                Arg(
                name: 'private-link-service-connection-state-actions-required'
              )
              ]
            ),
            Option(
              name: '--private-link-service-connection-state-description',
              description: 'Argument \'private_link_service_connection_state_description\' has been deprecated and will be removed in a future release. Use \'--private-link-service-connection-state\' instead. The reason for approval/rejection of the connection',
              args: [
                Arg(
                name: 'private-link-service-connection-state-description'
              )
              ]
            ),
            Option(
              name: '--private-link-service-connection-state-status',
              description: 'Argument \'private_link_service_connection_state_status\' has been deprecated and will be removed in a future release. Use \'--private-link-service-connection-state\' instead. Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service',
              args: [
                Arg(
                name: 'private-link-service-connection-state-status',
                suggestions: [

                  FigSuggestion(name: 'Approved'),
                  FigSuggestion(name: 'Pending'),
                  FigSuggestion(name: 'Rejected')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a private endpoint connection',
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
              name: ['--private-endpoint-connection-name', '--name', '-n'],
              description: 'The name of the private endpoint connection associated with the Azure resource',
              args: [
                Arg(
                name: 'private-endpoint-connection-nam'
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
              name: '--resource-name',
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
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
          description: 'Lists all private endpoint connections for a service',
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
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets the specified private endpoint connection associated with the service',
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
              name: ['--private-endpoint-connection-name', '--name', '-n'],
              description: 'The name of the private endpoint connection associated with the Azure resource',
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
              name: '--resource-name',
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
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
          description: 'Update the state of the specified private endpoint connection associated with the service',
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
              name: ['--private-endpoint-connection-name', '--name', '-n'],
              description: 'The name of the private endpoint connection associated with the Azure resource',
              args: [
                Arg(
                name: 'private-endpoint-connection-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--private-link-service-connection-state', '-s'],
              description: 'A collection of information about the state of the connection between service consumer and provider',
              args: [
                Arg(
                name: 'private-link-service-connection-stat'
              )
              ]
            ),
            Option(
              name: '--private-link-service-connection-state-actions-required',
              description: 'Argument \'private_link_service_connection_state_actions_required\' has been deprecated and will be removed in a future release. Use \'--private-link-service-connection-state\' instead. A message indicating if changes on the service provider require any updates on the consumer',
              args: [
                Arg(
                name: 'private-link-service-connection-state-actions-required'
              )
              ]
            ),
            Option(
              name: '--private-link-service-connection-state-description',
              description: 'Argument \'private_link_service_connection_state_description\' has been deprecated and will be removed in a future release. Use \'--private-link-service-connection-state\' instead. The reason for approval/rejection of the connection',
              args: [
                Arg(
                name: 'private-link-service-connection-state-description'
              )
              ]
            ),
            Option(
              name: '--private-link-service-connection-state-status',
              description: 'Argument \'private_link_service_connection_state_status\' has been deprecated and will be removed in a future release. Use \'--private-link-service-connection-state\' instead. Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service',
              args: [
                Arg(
                name: 'private-link-service-connection-state-status',
                suggestions: [

                  FigSuggestion(name: 'Approved'),
                  FigSuggestion(name: 'Pending'),
                  FigSuggestion(name: 'Rejected')
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
              name: '--resource-name',
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
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
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the healthcareapis private-endpoint-connection is met',
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
              name: ['--private-endpoint-connection-name', '--name', '-n'],
              description: 'The name of the private endpoint connection associated with the Azure resource',
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
              name: '--resource-name',
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
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
        )
      ]
    ),
    Subcommand(
      name: 'private-link-resource',
      description: 'Healthcareapis private-link-resource',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Gets the private link resources that need to be created for a service',
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
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets a private link resource that need to be created for a service',
          options: [

            Option(
              name: '--group-name',
              description: 'The name of the private link resource group',
              args: [
                Arg(
                name: 'group-nam'
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
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
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
      name: 'service',
      description: 'Healthcareapis service',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create the metadata of a service instance',
          options: [

            Option(
              name: '--kind',
              description: 'The kind of the service',
              args: [
                Arg(
                name: 'kind',
                suggestions: [

                  FigSuggestion(name: 'fhir'),
                  FigSuggestion(name: 'fhir-R4'),
                  FigSuggestion(name: 'fhir-Stu3')
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
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--access-policies',
              description: 'The access policies of the service instance',
              args: [
                Arg(
                name: 'access-policie'
              )
              ]
            ),
            Option(
              name: ['--authentication-configuration', '-c'],
              description: 'The authentication configuration for the service instance',
              args: [
                Arg(
                name: 'authentication-configuratio'
              )
              ]
            ),
            Option(
              name: '--cors-configuration',
              description: 'The settings for the CORS configuration of the service instance',
              args: [
                Arg(
                name: 'cors-configuratio'
              )
              ]
            ),
            Option(
              name: '--cosmos-db-configuration',
              description: 'The settings for the Cosmos DB database backing the service',
              args: [
                Arg(
                name: 'cosmos-db-configuratio'
              )
              ]
            ),
            Option(
              name: '--etag',
              description: 'An etag associated with the resource, used for optimistic concurrency when editing it',
              args: [
                Arg(
                name: 'eta'
              )
              ]
            ),
            Option(
              name: ['--export-configuration-storage-account-name', '-s'],
              description: 'The name of the default export storage account',
              args: [
                Arg(
                name: 'export-configuration-storage-account-nam'
              )
              ]
            ),
            Option(
              name: '--identity-type',
              description: 'Type of identity being specified, currently SystemAssigned and None are allowed',
              args: [
                Arg(
                name: 'identity-type',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'SystemAssigned')
                ]
              )
              ]
            ),
            Option(
              name: '--login-servers',
              description: 'The list of login servers that shallbe added to the service instance',
              args: [
                Arg(
                name: 'login-server'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--oci-artifacts',
              description: 'The list of Open Container Initiative (OCI) artifacts',
              args: [
                Arg(
                name: 'oci-artifact'
              )
              ]
            ),
            Option(
              name: '--private-endpoint-connections',
              description: 'The list of private endpoint connections that are set up for this resource',
              args: [
                Arg(
                name: 'private-endpoint-connection'
              )
              ]
            ),
            Option(
              name: '--public-network-access',
              description: 'Control permission for data plane traffic coming from public networks while private endpoint is enabled',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
          description: 'Delete a service instance',
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
              name: '--resource-name',
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
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
          description: 'Get all the service instances in a resource group. And Get all the service instances in a subscription',
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
          description: 'Get the metadata of a service instance',
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
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
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
          description: 'Update the metadata of a service instance',
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--public-network-access',
              description: 'Control permission for data plane traffic coming from public networks while private endpoint is enabled',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
              name: '--resource-name',
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
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
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the healthcareapis service is met',
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
              description: 'The name of the service instance',
              args: [
                Arg(
                name: 'resource-nam'
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
        )
      ]
    ),
    Subcommand(
      name: 'workspace',
      description: 'Manage workspace with healthcareapis',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a workspace resource with the specified parameters',
          options: [

            Option(
              name: ['--workspace-name', '--name', '-n'],
              description: 'The name of workspace resource',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
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
              name: '--etag',
              description: 'An etag associated with the resource, used for optimistic concurrency when editing it',
              args: [
                Arg(
                name: 'eta'
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
              name: '--public-network-access',
              description: 'Control permission for data plane traffic coming from public networks while private endpoint is enabled',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
          description: 'Deletes a specified workspace',
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
              name: ['--workspace-name', '--name', '-n'],
              description: 'The name of workspace resource',
              args: [
                Arg(
                name: 'workspace-nam'
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
          description: 'Lists all the available workspaces under the specified resource group. And Lists all the available workspaces under the specified subscription',
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
          description: 'Gets the properties of the specified workspace',
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
              name: ['--workspace-name', '--name', '-n'],
              description: 'The name of workspace resource',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
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
          description: 'Patch workspace details',
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
              name: ['--workspace-name', '--name', '-n'],
              description: 'The name of workspace resource',
              args: [
                Arg(
                name: 'workspace-nam'
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
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the healthcareapis workspace is met',
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
              name: ['--workspace-name', '--name', '-n'],
              description: 'The name of workspace resource',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
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
          name: 'dicom-service',
          description: 'Manage dicom service with healthcareapis',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a DICOM Service resource with the specified parameters',
              options: [

                Option(
                  name: ['--dicom-service-name', '--name', '-n'],
                  description: 'The name of DICOM Service resource',
                  args: [
                    Arg(
                    name: 'dicom-service-nam'
                  )
                  ]
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
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--etag',
                  description: 'An etag associated with the resource, used for optimistic concurrency when editing it',
                  args: [
                    Arg(
                    name: 'eta'
                  )
                  ]
                ),
                Option(
                  name: '--identity-type',
                  description: 'Type of identity being specified, currently SystemAssigned and None are allowed',
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
                  description: 'Control permission for data plane traffic coming from public networks while private endpoint is enabled',
                  args: [
                    Arg(
                    name: 'public-network-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
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
                  name: ['--user-assigned-identities', '-i'],
                  description: 'The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'user-assigned-identitie'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a DICOM Service',
              options: [

                Option(
                  name: ['--dicom-service-name', '--name', '-n'],
                  description: 'The name of DICOM Service resource',
                  args: [
                    Arg(
                    name: 'dicom-service-nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
              description: 'Lists all DICOM Services for the given workspace',
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
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets the properties of the specified DICOM Service',
              options: [

                Option(
                  name: ['--dicom-service-name', '--name', '-n'],
                  description: 'The name of DICOM Service resource',
                  args: [
                    Arg(
                    name: 'dicom-service-nam'
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
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Patch DICOM Service details',
              options: [

                Option(
                  name: ['--dicom-service-name', '--name', '-n'],
                  description: 'The name of DICOM Service resource',
                  args: [
                    Arg(
                    name: 'dicom-service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--identity-type',
                  description: 'Type of identity being specified, currently SystemAssigned and None are allowed',
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
                  name: ['--user-assigned-identities', '-i'],
                  description: 'The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'user-assigned-identitie'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the healthcareapis workspace dicom-service is met',
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
                  name: ['--dicom-service-name', '--name', '-n'],
                  description: 'The name of DICOM Service resource',
                  args: [
                    Arg(
                    name: 'dicom-service-nam'
                  )
                  ]
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
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'fhir-service',
          description: 'Manage fhir service with healthcareapis',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a FHIR Service resource with the specified parameters',
              options: [

                Option(
                  name: ['--fhir-service-name', '--name', '-n'],
                  description: 'The name of FHIR Service resource',
                  args: [
                    Arg(
                    name: 'fhir-service-nam'
                  )
                  ]
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
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--access-policies',
                  description: 'Fhir Service access policies',
                  args: [
                    Arg(
                    name: 'access-policie'
                  )
                  ]
                ),
                Option(
                  name: ['--authentication-configuration', '-c'],
                  description: 'Fhir Service authentication configuration',
                  args: [
                    Arg(
                    name: 'authentication-configuratio'
                  )
                  ]
                ),
                Option(
                  name: '--cors-configuration',
                  description: 'Fhir Service Cors configuration',
                  args: [
                    Arg(
                    name: 'cors-configuratio'
                  )
                  ]
                ),
                Option(
                  name: '--default',
                  description: 'The default value for tracking history across all resources',
                  args: [
                    Arg(
                    name: 'default',
                    suggestions: [

                      FigSuggestion(name: 'no-version'),
                      FigSuggestion(name: 'versioned'),
                      FigSuggestion(name: 'versioned-update')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--etag',
                  description: 'An etag associated with the resource, used for optimistic concurrency when editing it',
                  args: [
                    Arg(
                    name: 'eta'
                  )
                  ]
                ),
                Option(
                  name: ['--export-configuration-storage-account-name', '-s'],
                  description: 'The name of the default export storage account',
                  args: [
                    Arg(
                    name: 'export-configuration-storage-account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--identity-type',
                  description: 'Type of identity being specified, currently SystemAssigned and None are allowed',
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
                  name: '--kind',
                  description: 'The kind of the service',
                  args: [
                    Arg(
                    name: 'kind',
                    suggestions: [

                      FigSuggestion(name: 'fhir-R4'),
                      FigSuggestion(name: 'fhir-Stu3')
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
                  name: '--login-servers',
                  description: 'The list of the Azure container registry login servers',
                  args: [
                    Arg(
                    name: 'login-server'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--oci-artifacts',
                  description: 'The list of Open Container Initiative (OCI) artifacts',
                  args: [
                    Arg(
                    name: 'oci-artifact'
                  )
                  ]
                ),
                Option(
                  name: '--public-network-access',
                  description: 'Control permission for data plane traffic coming from public networks while private endpoint is enabled',
                  args: [
                    Arg(
                    name: 'public-network-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-type-overrides', '-r'],
                  description: 'A list of FHIR Resources and their version policy overrides. Expect value: KEY1=VALUE1 KEY2=VALUE2',
                  args: [
                    Arg(
                    name: 'resource-type-override'
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
                  name: ['--user-assigned-identities', '-i'],
                  description: 'The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'user-assigned-identitie'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a FHIR Service',
              options: [

                Option(
                  name: ['--fhir-service-name', '--name', '-n'],
                  description: 'The name of FHIR Service resource',
                  args: [
                    Arg(
                    name: 'fhir-service-nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
              description: 'Lists all FHIR Services for the given workspace',
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
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets the properties of the specified FHIR Service',
              options: [

                Option(
                  name: ['--fhir-service-name', '--name', '-n'],
                  description: 'The name of FHIR Service resource',
                  args: [
                    Arg(
                    name: 'fhir-service-nam'
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
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Patch FHIR Service details',
              options: [

                Option(
                  name: ['--fhir-service-name', '--name', '-n'],
                  description: 'The name of FHIR Service resource',
                  args: [
                    Arg(
                    name: 'fhir-service-nam'
                  )
                  ]
                ),
                Option(
                  name: '--identity-type',
                  description: 'Type of identity being specified, currently SystemAssigned and None are allowed',
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
                  name: ['--user-assigned-identities', '-i'],
                  description: 'The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'user-assigned-identitie'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the healthcareapis workspace fhir-service is met',
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
                  name: ['--fhir-service-name', '--name', '-n'],
                  description: 'The name of FHIR Service resource',
                  args: [
                    Arg(
                    name: 'fhir-service-nam'
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
                  name: '--interval',
                  description: 'Polling interval in seconds',
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
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'iot-connector',
          description: 'Manage iot connector with healthcareapis',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an IoT Connector resource with the specified parameters',
              options: [

                Option(
                  name: ['--iot-connector-name', '--name', '-n'],
                  description: 'The name of IoT Connector resource',
                  args: [
                    Arg(
                    name: 'iot-connector-nam'
                  )
                  ]
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
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--content',
                  description: 'The mapping. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'conten'
                  )
                  ]
                ),
                Option(
                  name: '--etag',
                  description: 'An etag associated with the resource, used for optimistic concurrency when editing it',
                  args: [
                    Arg(
                    name: 'eta'
                  )
                  ]
                ),
                Option(
                  name: '--identity-type',
                  description: 'Type of identity being specified, currently SystemAssigned and None are allowed',
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
                  name: ['--ingestion-endpoint-configuration', '-c'],
                  description: 'Source configuration',
                  args: [
                    Arg(
                    name: 'ingestion-endpoint-configuratio'
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
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: ['--user-assigned-identities', '-i'],
                  description: 'The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'user-assigned-identitie'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes an IoT Connector',
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
                  name: ['--iot-connector-name', '--name', '-n'],
                  description: 'The name of IoT Connector resource',
                  args: [
                    Arg(
                    name: 'iot-connector-nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
              description: 'Lists all IoT Connectors for the given workspace',
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
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets the properties of the specified IoT Connector',
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
                  name: ['--iot-connector-name', '--name', '-n'],
                  description: 'The name of IoT Connector resource',
                  args: [
                    Arg(
                    name: 'iot-connector-nam'
                  )
                  ]
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
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Patch an IoT Connector',
              options: [

                Option(
                  name: '--identity-type',
                  description: 'Type of identity being specified, currently SystemAssigned and None are allowed',
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
                  name: ['--iot-connector-name', '--name', '-n'],
                  description: 'The name of IoT Connector resource',
                  args: [
                    Arg(
                    name: 'iot-connector-nam'
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
                  name: ['--user-assigned-identities', '-i'],
                  description: 'The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: \'/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'user-assigned-identitie'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the healthcareapis workspace iot-connector is met',
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
                  name: ['--iot-connector-name', '--name', '-n'],
                  description: 'The name of IoT Connector resource',
                  args: [
                    Arg(
                    name: 'iot-connector-nam'
                  )
                  ]
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
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'fhir-destination',
              description: 'Manage iot connector fhir destination with healthcareapis',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create an IoT Connector FHIR destination resource with the specified parameters',
                  options: [

                    Option(
                      name: '--fhir-destination-name',
                      description: 'The name of IoT Connector FHIR destination resource',
                      args: [
                        Arg(
                        name: 'fhir-destination-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--fhir-service-resource-id', '-r'],
                      description: 'Fully qualified resource id of the FHIR service to connect to',
                      args: [
                        Arg(
                        name: 'fhir-service-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--iot-connector-name',
                      description: 'The name of IoT Connector resource',
                      args: [
                        Arg(
                        name: 'iot-connector-nam'
                      )
                      ]
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
                      name: ['--resource-identity-resolution-type', '-t'],
                      description: 'Determines how resource identity is resolved on the destination',
                      args: [
                        Arg(
                        name: 'resource-identity-resolution-type',
                        suggestions: [

                          FigSuggestion(name: 'Create'),
                          FigSuggestion(name: 'Lookup')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of workspace resource',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--content',
                      description: 'The mapping. Expected value: json-string/json-file/@json-file',
                      args: [
                        Arg(
                        name: 'conten'
                      )
                      ]
                    ),
                    Option(
                      name: '--etag',
                      description: 'An etag associated with the resource, used for optimistic concurrency when editing it',
                      args: [
                        Arg(
                        name: 'eta'
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
                  name: 'delete',
                  description: 'Deletes an IoT Connector FHIR destination',
                  options: [

                    Option(
                      name: '--fhir-destination-name',
                      description: 'The name of IoT Connector FHIR destination resource',
                      args: [
                        Arg(
                        name: 'fhir-destination-nam'
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
                      name: '--iot-connector-name',
                      description: 'The name of IoT Connector resource',
                      args: [
                        Arg(
                        name: 'iot-connector-nam'
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of workspace resource',
                      args: [
                        Arg(
                        name: 'workspace-nam'
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
                  description: 'Lists all FHIR destinations for the given IoT Connector',
                  options: [

                    Option(
                      name: '--iot-connector-name',
                      description: 'The name of IoT Connector resource',
                      args: [
                        Arg(
                        name: 'iot-connector-nam'
                      )
                      ]
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
                      name: '--workspace-name',
                      description: 'The name of workspace resource',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Gets the properties of the specified Iot Connector FHIR destination',
                  options: [

                    Option(
                      name: '--fhir-destination-name',
                      description: 'The name of IoT Connector FHIR destination resource',
                      args: [
                        Arg(
                        name: 'fhir-destination-nam'
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
                      name: '--iot-connector-name',
                      description: 'The name of IoT Connector resource',
                      args: [
                        Arg(
                        name: 'iot-connector-nam'
                      )
                      ]
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
                      name: '--workspace-name',
                      description: 'The name of workspace resource',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update an IoT Connector FHIR destination resource with the specified parameters',
                  options: [

                    Option(
                      name: ['--fhir-service-resource-id', '-r'],
                      description: 'Fully qualified resource id of the FHIR service to connect to',
                      args: [
                        Arg(
                        name: 'fhir-service-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-identity-resolution-type', '-t'],
                      description: 'Determines how resource identity is resolved on the destination',
                      args: [
                        Arg(
                        name: 'resource-identity-resolution-type',
                        suggestions: [

                          FigSuggestion(name: 'Create'),
                          FigSuggestion(name: 'Lookup')
                        ]
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
                      name: '--content',
                      description: 'The mapping. Expected value: json-string/json-file/@json-file',
                      args: [
                        Arg(
                        name: 'conten'
                      )
                      ]
                    ),
                    Option(
                      name: '--etag',
                      description: 'An etag associated with the resource, used for optimistic concurrency when editing it',
                      args: [
                        Arg(
                        name: 'eta'
                      )
                      ]
                    ),
                    Option(
                      name: '--fhir-destination-name',
                      description: 'The name of IoT Connector FHIR destination resource',
                      args: [
                        Arg(
                        name: 'fhir-destination-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--force-string',
                      description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
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
                      name: '--iot-connector-name',
                      description: 'The name of IoT Connector resource',
                      args: [
                        Arg(
                        name: 'iot-connector-nam'
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
                      name: '--workspace-name',
                      description: 'The name of workspace resource',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'wait',
                  description: 'Place the CLI in a waiting state until a condition of the healthcareapis workspace iot-connector fhir-destination is met',
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
                      name: '--fhir-destination-name',
                      description: 'The name of IoT Connector FHIR destination resource',
                      args: [
                        Arg(
                        name: 'fhir-destination-nam'
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
                      name: '--interval',
                      description: 'Polling interval in seconds',
                      args: [
                        Arg(
                        name: 'interva'
                      )
                      ]
                    ),
                    Option(
                      name: '--iot-connector-name',
                      description: 'The name of IoT Connector resource',
                      args: [
                        Arg(
                        name: 'iot-connector-nam'
                      )
                      ]
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
                    ),
                    Option(
                      name: '--workspace-name',
                      description: 'The name of workspace resource',
                      args: [
                        Arg(
                        name: 'workspace-nam'
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
          name: 'private-endpoint-connection',
          description: 'Manage workspace private endpoint connection with healthcareapis',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Update the state of the specified private endpoint connection associated with the workspace',
              options: [

                Option(
                  name: ['--private-endpoint-connection-name', '--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the Azure resource',
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
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--private-link-service-connection-state', '-s'],
                  description: 'A collection of information about the state of the connection between service consumer and provider',
                  args: [
                    Arg(
                    name: 'private-link-service-connection-stat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a private endpoint connection',
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
                  name: ['--private-endpoint-connection-name', '--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the Azure resource',
                  args: [
                    Arg(
                    name: 'private-endpoint-connection-nam'
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
              description: 'Lists all private endpoint connections for a workspace',
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
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets the specified private endpoint connection associated with the workspace',
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
                  name: ['--private-endpoint-connection-name', '--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the Azure resource',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the state of the specified private endpoint connection associated with the workspace',
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
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
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
                  name: ['--private-endpoint-connection-name', '--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the Azure resource',
                  args: [
                    Arg(
                    name: 'private-endpoint-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--private-link-service-connection-state', '-s'],
                  description: 'A collection of information about the state of the connection between service consumer and provider',
                  args: [
                    Arg(
                    name: 'private-link-service-connection-stat'
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
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the healthcareapis workspace private-endpoint-connection is met',
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
                  name: ['--private-endpoint-connection-name', '--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the Azure resource',
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
                ),
                Option(
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'private-link-resource',
          description: 'Manage workspace private link resource with healthcareapis',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Gets the private link resources that need to be created for a workspace',
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
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets a private link resource that need to be created for a workspace',
              options: [

                Option(
                  name: '--group-name',
                  description: 'The name of the private link resource group',
                  args: [
                    Arg(
                    name: 'group-nam'
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
                  name: '--workspace-name',
                  description: 'The name of workspace resource',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
