// Auto-generated from TypeScript source: kusto.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `kusto` CLI
final FigSpec kustoSpec = FigSpec(
  name: 'kusto',
  description: 'Manage Azure Kusto resources',
  subcommands: [

    Subcommand(
      name: 'attached-database-configuration',
      description: 'Manage attached database configuration with kusto',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an attached database configuration',
          options: [

            Option(
              name: ['--attached-database-configuration-name', '--name', '-n'],
              description: 'The name of the attached database configuration',
              args: [
                Arg(
                name: 'attached-database-configuration-nam'
              )
              ]
            ),
            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
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
              name: '--cluster-resource-id',
              description: 'The resource id of the cluster where the databases you would like to attach reside',
              args: [
                Arg(
                name: 'cluster-resource-i'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database which you would like to attach, use * if you want to follow all current and future databases',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: '--default-principals-modification-kind',
              description: 'The default principals modification kind',
              args: [
                Arg(
                name: 'default-principals-modification-kind',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'Replace'),
                  FigSuggestion(name: 'Union')
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
              name: ['--table-level-sharing-properties', '--table-level'],
              description: 'Table level sharing specifications',
              args: [
                Arg(
                name: 'table-level-sharing-propertie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes the attached database configuration with the given name',
          options: [

            Option(
              name: ['--attached-database-configuration-name', '--name', '-n'],
              description: 'The name of the attached database configuration',
              args: [
                Arg(
                name: 'attached-database-configuration-nam'
              )
              ]
            ),
            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Returns the list of attached database configurations of the given Kusto cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
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
          description: 'Returns an attached database configuration',
          options: [

            Option(
              name: ['--attached-database-configuration-name', '--name', '-n'],
              description: 'The name of the attached database configuration',
              args: [
                Arg(
                name: 'attached-database-configuration-nam'
              )
              ]
            ),
            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an attached database configuration',
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
              name: ['--attached-database-configuration-name', '--name', '-n'],
              description: 'The name of the attached database configuration',
              args: [
                Arg(
                name: 'attached-database-configuration-nam'
              )
              ]
            ),
            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--cluster-resource-id',
              description: 'The resource id of the cluster where the databases you would like to attach reside',
              args: [
                Arg(
                name: 'cluster-resource-i'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database which you would like to attach, use * if you want to follow all current and future databases',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: '--default-principals-modification-kind',
              description: 'The default principals modification kind',
              args: [
                Arg(
                name: 'default-principals-modification-kind',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'Replace'),
                  FigSuggestion(name: 'Union')
                ]
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
              name: ['--table-level-sharing-properties', '--table-level'],
              description: 'Table level sharing specifications',
              args: [
                Arg(
                name: 'table-level-sharing-propertie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the kusto attached-database-configuration is met',
          options: [

            Option(
              name: ['--attached-database-configuration-name', '--name', '-n'],
              description: 'The name of the attached database configuration',
              args: [
                Arg(
                name: 'attached-database-configuration-nam'
              )
              ]
            ),
            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'cluster',
      description: 'Manage Azure Kusto clusters.\n\n\t\tThis module will not be supported starting January 1, 2021. Please execute "az extension add -n kusto" to install the supported Kusto extension',
      subcommands: [

        Subcommand(
          name: 'add-language-extension',
          description: 'Add a list of language extensions that can run within KQL queries',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: '--value',
              description: 'The list of language extensions',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a Kusto cluster',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the cluster',
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
              description: 'The name of the sku',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Dev(No SLA)_Standard_D11_v2'),
                  FigSuggestion(name: 'Dev(No SLA)_Standard_E2a_v4'),
                  FigSuggestion(name: 'Standard_D11_v2'),
                  FigSuggestion(name: 'Standard_D12_v2'),
                  FigSuggestion(name: 'Standard_D13_v2'),
                  FigSuggestion(name: 'Standard_D14_v2'),
                  FigSuggestion(name: 'Standard_DS13_v2+1TB_PS'),
                  FigSuggestion(name: 'Standard_DS13_v2+2TB_PS'),
                  FigSuggestion(name: 'Standard_DS14_v2+3TB_PS'),
                  FigSuggestion(name: 'Standard_DS14_v2+4TB_PS'),
                  FigSuggestion(name: 'Standard_E16a_v4'),
                  FigSuggestion(name: 'Standard_E16as_v4+3TB_PS'),
                  FigSuggestion(name: 'Standard_E16as_v4+4TB_PS'),
                  FigSuggestion(name: 'Standard_E2a_v4'),
                  FigSuggestion(name: 'Standard_E4a_v4'),
                  FigSuggestion(name: 'Standard_E8a_v4'),
                  FigSuggestion(name: 'Standard_E8as_v4+1TB_PS'),
                  FigSuggestion(name: 'Standard_E8as_v4+2TB_PS'),
                  FigSuggestion(name: 'Standard_L16s'),
                  FigSuggestion(name: 'Standard_L4s'),
                  FigSuggestion(name: 'Standard_L8s')
                ]
              )
              ]
            ),
            Option(
              name: '--capacity',
              description: 'The instance number of the VM',
              args: [
                Arg(
                name: 'capacit'
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
          description: 'Delete a Kusto cluster',
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
              description: 'The name of the cluster',
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
          name: 'detach-follower-database',
          description: 'Detaches all followers of a database owned by this cluster',
          options: [

            Option(
              name: '--attached-database-configuration-name',
              description: 'Resource name of the attached database configuration in the follower cluster',
              args: [
                Arg(
                name: 'attached-database-configuration-nam'
              )
              ]
            ),
            Option(
              name: '--cluster-resource-id',
              description: 'Resource id of the cluster that follows a database owned by this cluster',
              args: [
                Arg(
                name: 'cluster-resource-i'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'diagnose-virtual-network',
          description: 'Diagnoses network connectivity status for external resources on which the service is dependent on',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List a Kusto cluster',
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
          name: 'list-follower-database',
          description: 'Returns a list of databases that are owned by this cluster and were followed by another cluster',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
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
          name: 'list-language-extension',
          description: 'Returns a list of language extensions that can run within KQL queries',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
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
          name: 'list-outbound-network-dependency-endpoint',
          description: 'Gets the network endpoints of all outbound dependencies of a Kusto cluster',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
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
          name: 'list-sku',
          description: 'Returns the SKUs available for the provided resource. And Lists eligible SKUs for Kusto resource provider',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
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
          name: 'remove-language-extension',
          description: 'Remove a list of language extensions that can run within KQL queries',
          options: [

            Option(
              name: ['--cluster-name', '--name', '-n'],
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: '--value',
              description: 'The list of language extensions',
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
          description: 'Get a Kusto cluster',
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
              description: 'The name of the cluster',
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
          name: 'start',
          description: 'Start a Kusto cluster',
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
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'stop',
          description: 'Stop a Kusto cluster',
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
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a Kusto cluster',
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
              name: '--capacity',
              description: 'The instance number of the VM',
              args: [
                Arg(
                name: 'capacit'
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
              name: ['--name', '-n'],
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'nam'
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
              name: '--sku',
              description: 'The name of the sku',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'Dev(No SLA)_Standard_D11_v2'),
                  FigSuggestion(name: 'Dev(No SLA)_Standard_E2a_v4'),
                  FigSuggestion(name: 'Standard_D11_v2'),
                  FigSuggestion(name: 'Standard_D12_v2'),
                  FigSuggestion(name: 'Standard_D13_v2'),
                  FigSuggestion(name: 'Standard_D14_v2'),
                  FigSuggestion(name: 'Standard_DS13_v2+1TB_PS'),
                  FigSuggestion(name: 'Standard_DS13_v2+2TB_PS'),
                  FigSuggestion(name: 'Standard_DS14_v2+3TB_PS'),
                  FigSuggestion(name: 'Standard_DS14_v2+4TB_PS'),
                  FigSuggestion(name: 'Standard_E16a_v4'),
                  FigSuggestion(name: 'Standard_E16as_v4+3TB_PS'),
                  FigSuggestion(name: 'Standard_E16as_v4+4TB_PS'),
                  FigSuggestion(name: 'Standard_E2a_v4'),
                  FigSuggestion(name: 'Standard_E4a_v4'),
                  FigSuggestion(name: 'Standard_E8a_v4'),
                  FigSuggestion(name: 'Standard_E8as_v4+1TB_PS'),
                  FigSuggestion(name: 'Standard_E8as_v4+2TB_PS'),
                  FigSuggestion(name: 'Standard_L16s'),
                  FigSuggestion(name: 'Standard_L4s'),
                  FigSuggestion(name: 'Standard_L8s')
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
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Wait for a managed Kusto cluster to reach a desired state',
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
              description: 'The name of the cluster',
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
        )
      ]
    ),
    Subcommand(
      name: 'cluster-principal-assignment',
      description: 'Manage cluster principal assignment with kusto',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Kusto cluster principalAssignment',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--principal-assignment-name',
              description: 'The name of the Kusto principalAssignment',
              args: [
                Arg(
                name: 'principal-assignment-nam'
              )
              ]
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
              name: '--principal-id',
              description: 'The principal ID assigned to the cluster principal. It can be a user email, application ID, or security group name',
              args: [
                Arg(
                name: 'principal-i'
              )
              ]
            ),
            Option(
              name: '--principal-type',
              description: 'Principal type',
              args: [
                Arg(
                name: 'principal-type',
                suggestions: [

                  FigSuggestion(name: 'App'),
                  FigSuggestion(name: 'Group'),
                  FigSuggestion(name: 'User')
                ]
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'Cluster principal role',
              args: [
                Arg(
                name: 'role',
                suggestions: [

                  FigSuggestion(name: 'AllDatabasesAdmin'),
                  FigSuggestion(name: 'AllDatabasesViewer')
                ]
              )
              ]
            ),
            Option(
              name: '--tenant-id',
              description: 'The tenant id of the principal',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a Kusto cluster principalAssignment',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: '--principal-assignment-name',
              description: 'The name of the Kusto principalAssignment',
              args: [
                Arg(
                name: 'principal-assignment-nam'
              )
              ]
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
          description: 'Lists all Kusto cluster principalAssignments',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
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
          description: 'Gets a Kusto cluster principalAssignment',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: '--principal-assignment-name',
              description: 'The name of the Kusto principalAssignment',
              args: [
                Arg(
                name: 'principal-assignment-nam'
              )
              ]
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
          description: 'Update a Kusto cluster principalAssignment',
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
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--principal-assignment-name',
              description: 'The name of the Kusto principalAssignment',
              args: [
                Arg(
                name: 'principal-assignment-nam'
              )
              ]
            ),
            Option(
              name: '--principal-id',
              description: 'The principal ID assigned to the cluster principal. It can be a user email, application ID, or security group name',
              args: [
                Arg(
                name: 'principal-i'
              )
              ]
            ),
            Option(
              name: '--principal-type',
              description: 'Principal type',
              args: [
                Arg(
                name: 'principal-type',
                suggestions: [

                  FigSuggestion(name: 'App'),
                  FigSuggestion(name: 'Group'),
                  FigSuggestion(name: 'User')
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
              name: '--role',
              description: 'Cluster principal role',
              args: [
                Arg(
                name: 'role',
                suggestions: [

                  FigSuggestion(name: 'AllDatabasesAdmin'),
                  FigSuggestion(name: 'AllDatabasesViewer')
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tenant-id',
              description: 'The tenant id of the principal',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the kusto cluster-principal-assignment is met',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: '--principal-assignment-name',
              description: 'The name of the Kusto principalAssignment',
              args: [
                Arg(
                name: 'principal-assignment-nam'
              )
              ]
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
        )
      ]
    ),
    Subcommand(
      name: 'data-connection',
      description: 'Manage data connection with kusto',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Deletes the data connection with the given name',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--data-connection-name', '--name', '-n'],
              description: 'The name of the data connection',
              args: [
                Arg(
                name: 'data-connection-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Returns the list of data connections of the given Kusto database',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
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
          description: 'Returns a data connection',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--data-connection-name', '--name', '-n'],
              description: 'The name of the data connection',
              args: [
                Arg(
                name: 'data-connection-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the kusto data-connection is met',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: ['--data-connection-name', '--name', '-n'],
              description: 'The name of the data connection',
              args: [
                Arg(
                name: 'data-connection-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
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
          name: 'event-grid',
          description: 'Manage data connection with kusto sub group event-grid',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a data connection',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the Kusto cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--data-connection-name', '--name', '-n'],
                  description: 'The name of the data connection',
                  args: [
                    Arg(
                    name: 'data-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto cluster',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
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
                  name: '--blob-storage-event-type',
                  description: 'The name of blob storage event type to process',
                  args: [
                    Arg(
                    name: 'blob-storage-event-type',
                    suggestions: [

                      FigSuggestion(name: 'Microsoft.Storage.BlobCreated'),
                      FigSuggestion(name: 'Microsoft.Storage.BlobRenamed')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--consumer-group',
                  description: 'The event hub consumer group',
                  args: [
                    Arg(
                    name: 'consumer-grou'
                  )
                  ]
                ),
                Option(
                  name: '--data-format',
                  description: 'The data format of the message. Optionally the data format can be added to each message',
                  args: [
                    Arg(
                    name: 'data-format',
                    suggestions: [

                      FigSuggestion(name: 'APACHEAVRO'),
                      FigSuggestion(name: 'AVRO'),
                      FigSuggestion(name: 'CSV'),
                      FigSuggestion(name: 'JSON'),
                      FigSuggestion(name: 'MULTIJSON'),
                      FigSuggestion(name: 'ORC'),
                      FigSuggestion(name: 'PARQUET'),
                      FigSuggestion(name: 'PSV'),
                      FigSuggestion(name: 'RAW'),
                      FigSuggestion(name: 'SCSV'),
                      FigSuggestion(name: 'SINGLEJSON'),
                      FigSuggestion(name: 'SOHSV'),
                      FigSuggestion(name: 'TSV'),
                      FigSuggestion(name: 'TSVE'),
                      FigSuggestion(name: 'TXT'),
                      FigSuggestion(name: 'W3CLOGFILE')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--database-routing',
                  description: 'Indication for database routing information from the data connection, by default only database routing information is allowed',
                  args: [
                    Arg(
                    name: 'database-routing',
                    suggestions: [

                      FigSuggestion(name: 'Multi'),
                      FigSuggestion(name: 'Single')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-grid-resource-id',
                  description: 'The resource ID of the event grid that is subscribed to the storage account events',
                  args: [
                    Arg(
                    name: 'event-grid-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--event-hub-resource-id',
                  description: 'The resource ID where the event grid is configured to send events',
                  args: [
                    Arg(
                    name: 'event-hub-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--ignore-first-record',
                  description: 'A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file',
                  args: [
                    Arg(
                    name: 'ignore-first-record',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
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
                  name: [
                    '--managed-identity-resource-id',
                    '--managed-identity',
                  ],
                  description: 'Empty for non-managed identity based data connection. For system assigned identity, provide cluster resource Id. For user assigned identity (UAI) provide the UAI resource Id',
                  args: [
                    Arg(
                    name: 'managed-identity-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--mapping-rule-name',
                  description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                  args: [
                    Arg(
                    name: 'mapping-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--storage-account-resource-id',
                  description: 'The resource ID of the storage account where the data resides',
                  args: [
                    Arg(
                    name: 'storage-account-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--table-name',
                  description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                  args: [
                    Arg(
                    name: 'table-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'data-connection-validation',
              description: 'Checks that the data connection parameters are valid',
              options: [

                Option(
                  name: '--blob-storage-event-type',
                  description: 'The name of blob storage event type to process',
                  args: [
                    Arg(
                    name: 'blob-storage-event-type',
                    suggestions: [

                      FigSuggestion(name: 'Microsoft.Storage.BlobCreated'),
                      FigSuggestion(name: 'Microsoft.Storage.BlobRenamed')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--cluster-name',
                  description: 'The name of the Kusto cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--consumer-group',
                  description: 'The event hub consumer group',
                  args: [
                    Arg(
                    name: 'consumer-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--data-connection-name', '--name', '-n'],
                  description: 'The name of the data connection',
                  args: [
                    Arg(
                    name: 'data-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--data-format',
                  description: 'The data format of the message. Optionally the data format can be added to each message',
                  args: [
                    Arg(
                    name: 'data-format',
                    suggestions: [

                      FigSuggestion(name: 'APACHEAVRO'),
                      FigSuggestion(name: 'AVRO'),
                      FigSuggestion(name: 'CSV'),
                      FigSuggestion(name: 'JSON'),
                      FigSuggestion(name: 'MULTIJSON'),
                      FigSuggestion(name: 'ORC'),
                      FigSuggestion(name: 'PARQUET'),
                      FigSuggestion(name: 'PSV'),
                      FigSuggestion(name: 'RAW'),
                      FigSuggestion(name: 'SCSV'),
                      FigSuggestion(name: 'SINGLEJSON'),
                      FigSuggestion(name: 'SOHSV'),
                      FigSuggestion(name: 'TSV'),
                      FigSuggestion(name: 'TSVE'),
                      FigSuggestion(name: 'TXT'),
                      FigSuggestion(name: 'W3CLOGFILE')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto cluster',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-routing',
                  description: 'Indication for database routing information from the data connection, by default only database routing information is allowed',
                  args: [
                    Arg(
                    name: 'database-routing',
                    suggestions: [

                      FigSuggestion(name: 'Multi'),
                      FigSuggestion(name: 'Single')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-grid-resource-id',
                  description: 'The resource ID of the event grid that is subscribed to the storage account events',
                  args: [
                    Arg(
                    name: 'event-grid-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--event-hub-resource-id',
                  description: 'The resource ID where the event grid is configured to send events',
                  args: [
                    Arg(
                    name: 'event-hub-resource-i'
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
                  name: '--ignore-first-record',
                  description: 'A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file',
                  args: [
                    Arg(
                    name: 'ignore-first-record',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
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
                  name: [
                    '--managed-identity-resource-id',
                    '--managed-identity',
                  ],
                  description: 'Empty for non-managed identity based data connection. For system assigned identity, provide cluster resource Id. For user assigned identity (UAI) provide the UAI resource Id',
                  args: [
                    Arg(
                    name: 'managed-identity-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--mapping-rule-name',
                  description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                  args: [
                    Arg(
                    name: 'mapping-rule-nam'
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
                  name: '--storage-account-resource-id',
                  description: 'The resource ID of the storage account where the data resides',
                  args: [
                    Arg(
                    name: 'storage-account-resource-i'
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
                  name: '--table-name',
                  description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                  args: [
                    Arg(
                    name: 'table-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates a data connection',
              options: [

                Option(
                  name: '--blob-storage-event-type',
                  description: 'The name of blob storage event type to process',
                  args: [
                    Arg(
                    name: 'blob-storage-event-type',
                    suggestions: [

                      FigSuggestion(name: 'Microsoft.Storage.BlobCreated'),
                      FigSuggestion(name: 'Microsoft.Storage.BlobRenamed')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--cluster-name',
                  description: 'The name of the Kusto cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--consumer-group',
                  description: 'The event hub consumer group',
                  args: [
                    Arg(
                    name: 'consumer-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--data-connection-name', '--name', '-n'],
                  description: 'The name of the data connection',
                  args: [
                    Arg(
                    name: 'data-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--data-format',
                  description: 'The data format of the message. Optionally the data format can be added to each message',
                  args: [
                    Arg(
                    name: 'data-format',
                    suggestions: [

                      FigSuggestion(name: 'APACHEAVRO'),
                      FigSuggestion(name: 'AVRO'),
                      FigSuggestion(name: 'CSV'),
                      FigSuggestion(name: 'JSON'),
                      FigSuggestion(name: 'MULTIJSON'),
                      FigSuggestion(name: 'ORC'),
                      FigSuggestion(name: 'PARQUET'),
                      FigSuggestion(name: 'PSV'),
                      FigSuggestion(name: 'RAW'),
                      FigSuggestion(name: 'SCSV'),
                      FigSuggestion(name: 'SINGLEJSON'),
                      FigSuggestion(name: 'SOHSV'),
                      FigSuggestion(name: 'TSV'),
                      FigSuggestion(name: 'TSVE'),
                      FigSuggestion(name: 'TXT'),
                      FigSuggestion(name: 'W3CLOGFILE')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto cluster',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-routing',
                  description: 'Indication for database routing information from the data connection, by default only database routing information is allowed',
                  args: [
                    Arg(
                    name: 'database-routing',
                    suggestions: [

                      FigSuggestion(name: 'Multi'),
                      FigSuggestion(name: 'Single')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-grid-resource-id',
                  description: 'The resource ID of the event grid that is subscribed to the storage account events',
                  args: [
                    Arg(
                    name: 'event-grid-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--event-hub-resource-id',
                  description: 'The resource ID where the event grid is configured to send events',
                  args: [
                    Arg(
                    name: 'event-hub-resource-i'
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
                  name: '--ignore-first-record',
                  description: 'A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file',
                  args: [
                    Arg(
                    name: 'ignore-first-record',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
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
                  name: [
                    '--managed-identity-resource-id',
                    '--managed-identity',
                  ],
                  description: 'Empty for non-managed identity based data connection. For system assigned identity, provide cluster resource Id. For user assigned identity (UAI) provide the UAI resource Id',
                  args: [
                    Arg(
                    name: 'managed-identity-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--mapping-rule-name',
                  description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                  args: [
                    Arg(
                    name: 'mapping-rule-nam'
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
                  name: '--storage-account-resource-id',
                  description: 'The resource ID of the storage account where the data resides',
                  args: [
                    Arg(
                    name: 'storage-account-resource-i'
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
                  name: '--table-name',
                  description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                  args: [
                    Arg(
                    name: 'table-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'event-hub',
          description: 'Manage data connection with kusto sub group event-hub',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a data connection',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the Kusto cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--data-connection-name', '--name', '-n'],
                  description: 'The name of the data connection',
                  args: [
                    Arg(
                    name: 'data-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto cluster',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
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
                  name: '--compression',
                  description: 'The event hub messages compression type',
                  args: [
                    Arg(
                    name: 'compression',
                    suggestions: [

                      FigSuggestion(name: 'GZip'),
                      FigSuggestion(name: 'None')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--consumer-group',
                  description: 'The event hub consumer group',
                  args: [
                    Arg(
                    name: 'consumer-grou'
                  )
                  ]
                ),
                Option(
                  name: '--data-format',
                  description: 'The data format of the message. Optionally the data format can be added to each message',
                  args: [
                    Arg(
                    name: 'data-format',
                    suggestions: [

                      FigSuggestion(name: 'APACHEAVRO'),
                      FigSuggestion(name: 'AVRO'),
                      FigSuggestion(name: 'CSV'),
                      FigSuggestion(name: 'JSON'),
                      FigSuggestion(name: 'MULTIJSON'),
                      FigSuggestion(name: 'ORC'),
                      FigSuggestion(name: 'PARQUET'),
                      FigSuggestion(name: 'PSV'),
                      FigSuggestion(name: 'RAW'),
                      FigSuggestion(name: 'SCSV'),
                      FigSuggestion(name: 'SINGLEJSON'),
                      FigSuggestion(name: 'SOHSV'),
                      FigSuggestion(name: 'TSV'),
                      FigSuggestion(name: 'TSVE'),
                      FigSuggestion(name: 'TXT'),
                      FigSuggestion(name: 'W3CLOGFILE')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--database-routing',
                  description: 'Indication for database routing information from the data connection, by default only database routing information is allowed',
                  args: [
                    Arg(
                    name: 'database-routing',
                    suggestions: [

                      FigSuggestion(name: 'Multi'),
                      FigSuggestion(name: 'Single')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-hub-resource-id',
                  description: 'The resource ID of the event hub to be used to create a data connection',
                  args: [
                    Arg(
                    name: 'event-hub-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--event-system-properties',
                  description: 'System properties of the event hub',
                  args: [
                    Arg(
                    name: 'event-system-propertie'
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
                  name: [
                    '--managed-identity-resource-id',
                    '--managed-identity',
                  ],
                  description: 'Empty for non-managed identity based data connection. For system assigned identity, provide cluster resource Id. For user assigned identity (UAI) provide the UAI resource Id',
                  args: [
                    Arg(
                    name: 'managed-identity-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--mapping-rule-name',
                  description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                  args: [
                    Arg(
                    name: 'mapping-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--table-name',
                  description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                  args: [
                    Arg(
                    name: 'table-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'data-connection-validation',
              description: 'Checks that the data connection parameters are valid',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the Kusto cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--compression',
                  description: 'The event hub messages compression type',
                  args: [
                    Arg(
                    name: 'compression',
                    suggestions: [

                      FigSuggestion(name: 'GZip'),
                      FigSuggestion(name: 'None')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--consumer-group',
                  description: 'The event hub consumer group',
                  args: [
                    Arg(
                    name: 'consumer-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--data-connection-name', '--name', '-n'],
                  description: 'The name of the data connection',
                  args: [
                    Arg(
                    name: 'data-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--data-format',
                  description: 'The data format of the message. Optionally the data format can be added to each message',
                  args: [
                    Arg(
                    name: 'data-format',
                    suggestions: [

                      FigSuggestion(name: 'APACHEAVRO'),
                      FigSuggestion(name: 'AVRO'),
                      FigSuggestion(name: 'CSV'),
                      FigSuggestion(name: 'JSON'),
                      FigSuggestion(name: 'MULTIJSON'),
                      FigSuggestion(name: 'ORC'),
                      FigSuggestion(name: 'PARQUET'),
                      FigSuggestion(name: 'PSV'),
                      FigSuggestion(name: 'RAW'),
                      FigSuggestion(name: 'SCSV'),
                      FigSuggestion(name: 'SINGLEJSON'),
                      FigSuggestion(name: 'SOHSV'),
                      FigSuggestion(name: 'TSV'),
                      FigSuggestion(name: 'TSVE'),
                      FigSuggestion(name: 'TXT'),
                      FigSuggestion(name: 'W3CLOGFILE')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto cluster',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-routing',
                  description: 'Indication for database routing information from the data connection, by default only database routing information is allowed',
                  args: [
                    Arg(
                    name: 'database-routing',
                    suggestions: [

                      FigSuggestion(name: 'Multi'),
                      FigSuggestion(name: 'Single')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-hub-resource-id',
                  description: 'The resource ID of the event hub to be used to create a data connection',
                  args: [
                    Arg(
                    name: 'event-hub-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--event-system-properties',
                  description: 'System properties of the event hub',
                  args: [
                    Arg(
                    name: 'event-system-propertie'
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
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--managed-identity-resource-id',
                    '--managed-identity',
                  ],
                  description: 'Empty for non-managed identity based data connection. For system assigned identity, provide cluster resource Id. For user assigned identity (UAI) provide the UAI resource Id',
                  args: [
                    Arg(
                    name: 'managed-identity-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--mapping-rule-name',
                  description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                  args: [
                    Arg(
                    name: 'mapping-rule-nam'
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
                  name: '--table-name',
                  description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                  args: [
                    Arg(
                    name: 'table-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates a data connection',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the Kusto cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--compression',
                  description: 'The event hub messages compression type',
                  args: [
                    Arg(
                    name: 'compression',
                    suggestions: [

                      FigSuggestion(name: 'GZip'),
                      FigSuggestion(name: 'None')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--consumer-group',
                  description: 'The event hub consumer group',
                  args: [
                    Arg(
                    name: 'consumer-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--data-connection-name', '--name', '-n'],
                  description: 'The name of the data connection',
                  args: [
                    Arg(
                    name: 'data-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--data-format',
                  description: 'The data format of the message. Optionally the data format can be added to each message',
                  args: [
                    Arg(
                    name: 'data-format',
                    suggestions: [

                      FigSuggestion(name: 'APACHEAVRO'),
                      FigSuggestion(name: 'AVRO'),
                      FigSuggestion(name: 'CSV'),
                      FigSuggestion(name: 'JSON'),
                      FigSuggestion(name: 'MULTIJSON'),
                      FigSuggestion(name: 'ORC'),
                      FigSuggestion(name: 'PARQUET'),
                      FigSuggestion(name: 'PSV'),
                      FigSuggestion(name: 'RAW'),
                      FigSuggestion(name: 'SCSV'),
                      FigSuggestion(name: 'SINGLEJSON'),
                      FigSuggestion(name: 'SOHSV'),
                      FigSuggestion(name: 'TSV'),
                      FigSuggestion(name: 'TSVE'),
                      FigSuggestion(name: 'TXT'),
                      FigSuggestion(name: 'W3CLOGFILE')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto cluster',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-routing',
                  description: 'Indication for database routing information from the data connection, by default only database routing information is allowed',
                  args: [
                    Arg(
                    name: 'database-routing',
                    suggestions: [

                      FigSuggestion(name: 'Multi'),
                      FigSuggestion(name: 'Single')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-hub-resource-id',
                  description: 'The resource ID of the event hub to be used to create a data connection',
                  args: [
                    Arg(
                    name: 'event-hub-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--event-system-properties',
                  description: 'System properties of the event hub',
                  args: [
                    Arg(
                    name: 'event-system-propertie'
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
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--managed-identity-resource-id',
                    '--managed-identity',
                  ],
                  description: 'Empty for non-managed identity based data connection. For system assigned identity, provide cluster resource Id. For user assigned identity (UAI) provide the UAI resource Id',
                  args: [
                    Arg(
                    name: 'managed-identity-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--mapping-rule-name',
                  description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                  args: [
                    Arg(
                    name: 'mapping-rule-nam'
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
                  name: '--table-name',
                  description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                  args: [
                    Arg(
                    name: 'table-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'iot-hub',
          description: 'Manage data connection with kusto sub group iot-hub',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a data connection',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the Kusto cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--data-connection-name', '--name', '-n'],
                  description: 'The name of the data connection',
                  args: [
                    Arg(
                    name: 'data-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto cluster',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
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
                  name: '--consumer-group',
                  description: 'The iot hub consumer group',
                  args: [
                    Arg(
                    name: 'consumer-grou'
                  )
                  ]
                ),
                Option(
                  name: '--data-format',
                  description: 'The data format of the message. Optionally the data format can be added to each message',
                  args: [
                    Arg(
                    name: 'data-format',
                    suggestions: [

                      FigSuggestion(name: 'APACHEAVRO'),
                      FigSuggestion(name: 'AVRO'),
                      FigSuggestion(name: 'CSV'),
                      FigSuggestion(name: 'JSON'),
                      FigSuggestion(name: 'MULTIJSON'),
                      FigSuggestion(name: 'ORC'),
                      FigSuggestion(name: 'PARQUET'),
                      FigSuggestion(name: 'PSV'),
                      FigSuggestion(name: 'RAW'),
                      FigSuggestion(name: 'SCSV'),
                      FigSuggestion(name: 'SINGLEJSON'),
                      FigSuggestion(name: 'SOHSV'),
                      FigSuggestion(name: 'TSV'),
                      FigSuggestion(name: 'TSVE'),
                      FigSuggestion(name: 'TXT'),
                      FigSuggestion(name: 'W3CLOGFILE')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--database-routing',
                  description: 'Indication for database routing information from the data connection, by default only database routing information is allowed',
                  args: [
                    Arg(
                    name: 'database-routing',
                    suggestions: [

                      FigSuggestion(name: 'Multi'),
                      FigSuggestion(name: 'Single')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-system-properties',
                  description: 'System properties of the iot hub',
                  args: [
                    Arg(
                    name: 'event-system-propertie'
                  )
                  ]
                ),
                Option(
                  name: '--iot-hub-resource-id',
                  description: 'The resource ID of the Iot hub to be used to create a data connection',
                  args: [
                    Arg(
                    name: 'iot-hub-resource-i'
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
                  name: '--mapping-rule-name',
                  description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                  args: [
                    Arg(
                    name: 'mapping-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--shared-access-policy-name',
                  description: 'The name of the share access policy',
                  args: [
                    Arg(
                    name: 'shared-access-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: '--table-name',
                  description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                  args: [
                    Arg(
                    name: 'table-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'data-connection-validation',
              description: 'Checks that the data connection parameters are valid',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the Kusto cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--consumer-group',
                  description: 'The iot hub consumer group',
                  args: [
                    Arg(
                    name: 'consumer-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--data-connection-name', '--name', '-n'],
                  description: 'The name of the data connection',
                  args: [
                    Arg(
                    name: 'data-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--data-format',
                  description: 'The data format of the message. Optionally the data format can be added to each message',
                  args: [
                    Arg(
                    name: 'data-format',
                    suggestions: [

                      FigSuggestion(name: 'APACHEAVRO'),
                      FigSuggestion(name: 'AVRO'),
                      FigSuggestion(name: 'CSV'),
                      FigSuggestion(name: 'JSON'),
                      FigSuggestion(name: 'MULTIJSON'),
                      FigSuggestion(name: 'ORC'),
                      FigSuggestion(name: 'PARQUET'),
                      FigSuggestion(name: 'PSV'),
                      FigSuggestion(name: 'RAW'),
                      FigSuggestion(name: 'SCSV'),
                      FigSuggestion(name: 'SINGLEJSON'),
                      FigSuggestion(name: 'SOHSV'),
                      FigSuggestion(name: 'TSV'),
                      FigSuggestion(name: 'TSVE'),
                      FigSuggestion(name: 'TXT'),
                      FigSuggestion(name: 'W3CLOGFILE')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto cluster',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-routing',
                  description: 'Indication for database routing information from the data connection, by default only database routing information is allowed',
                  args: [
                    Arg(
                    name: 'database-routing',
                    suggestions: [

                      FigSuggestion(name: 'Multi'),
                      FigSuggestion(name: 'Single')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-system-properties',
                  description: 'System properties of the iot hub',
                  args: [
                    Arg(
                    name: 'event-system-propertie'
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
                  name: '--iot-hub-resource-id',
                  description: 'The resource ID of the Iot hub to be used to create a data connection',
                  args: [
                    Arg(
                    name: 'iot-hub-resource-i'
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
                  name: '--mapping-rule-name',
                  description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                  args: [
                    Arg(
                    name: 'mapping-rule-nam'
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
                  name: '--shared-access-policy-name',
                  description: 'The name of the share access policy',
                  args: [
                    Arg(
                    name: 'shared-access-policy-nam'
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
                  name: '--table-name',
                  description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                  args: [
                    Arg(
                    name: 'table-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates a data connection',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The name of the Kusto cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--consumer-group',
                  description: 'The iot hub consumer group',
                  args: [
                    Arg(
                    name: 'consumer-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--data-connection-name', '--name', '-n'],
                  description: 'The name of the data connection',
                  args: [
                    Arg(
                    name: 'data-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: '--data-format',
                  description: 'The data format of the message. Optionally the data format can be added to each message',
                  args: [
                    Arg(
                    name: 'data-format',
                    suggestions: [

                      FigSuggestion(name: 'APACHEAVRO'),
                      FigSuggestion(name: 'AVRO'),
                      FigSuggestion(name: 'CSV'),
                      FigSuggestion(name: 'JSON'),
                      FigSuggestion(name: 'MULTIJSON'),
                      FigSuggestion(name: 'ORC'),
                      FigSuggestion(name: 'PARQUET'),
                      FigSuggestion(name: 'PSV'),
                      FigSuggestion(name: 'RAW'),
                      FigSuggestion(name: 'SCSV'),
                      FigSuggestion(name: 'SINGLEJSON'),
                      FigSuggestion(name: 'SOHSV'),
                      FigSuggestion(name: 'TSV'),
                      FigSuggestion(name: 'TSVE'),
                      FigSuggestion(name: 'TXT'),
                      FigSuggestion(name: 'W3CLOGFILE')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--database-name',
                  description: 'The name of the database in the Kusto cluster',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--database-routing',
                  description: 'Indication for database routing information from the data connection, by default only database routing information is allowed',
                  args: [
                    Arg(
                    name: 'database-routing',
                    suggestions: [

                      FigSuggestion(name: 'Multi'),
                      FigSuggestion(name: 'Single')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--event-system-properties',
                  description: 'System properties of the iot hub',
                  args: [
                    Arg(
                    name: 'event-system-propertie'
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
                  name: '--iot-hub-resource-id',
                  description: 'The resource ID of the Iot hub to be used to create a data connection',
                  args: [
                    Arg(
                    name: 'iot-hub-resource-i'
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
                  name: '--mapping-rule-name',
                  description: 'The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message',
                  args: [
                    Arg(
                    name: 'mapping-rule-nam'
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
                  name: '--shared-access-policy-name',
                  description: 'The name of the share access policy',
                  args: [
                    Arg(
                    name: 'shared-access-policy-nam'
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
                  name: '--table-name',
                  description: 'The table where the data should be ingested. Optionally the table information can be added to each message',
                  args: [
                    Arg(
                    name: 'table-nam'
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
      name: 'database',
      description: 'Manage Azure Kusto databases.\n\n\t\tAzure CLI commands for Kusto are now an extension.  Execute "az extension add -n kusto" to install the extension.  The original core module for Kusto is no longer supported',
      subcommands: [

        Subcommand(
          name: 'add-principal',
          description: 'Add Database principals permissions',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
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
              name: '--value',
              description: 'The list of Kusto database principals',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a Kusto database',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the database',
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
              name: '--hot-cache-period',
              description: 'Amount of time that data should be kept in cache.Duration in ISO8601 format (for example, 100 days would be P100D)',
              args: [
                Arg(
                name: 'hot-cache-perio'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--soft-delete-period',
              description: 'Amount of time that data should be kept so it is available to query. Duration in ISO8601 format (for example, 100 days would be P100D)',
              args: [
                Arg(
                name: 'soft-delete-perio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Kusto database',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              description: 'The name of the database',
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
          description: 'List a Kusto database',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
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
          name: 'list-principal',
          description: 'Returns a list of database principals of the given Kusto cluster and database',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
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
          name: 'remove-principal',
          description: 'Remove Database principals permissions',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
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
              name: '--value',
              description: 'The list of Kusto database principals',
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
          description: 'Get a Kusto database',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              description: 'The name of the database',
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
          description: 'Update a Kusto database',
          options: [

            Option(
              name: '--soft-delete-period',
              description: 'Amount of time that data should be kept so it is available to query. Duration in ISO8601 format (for example, 100 days would be P100D)',
              args: [
                Arg(
                name: 'soft-delete-perio'
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
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--hot-cache-period',
              description: 'Amount of time that data should be kept in cache.Duration in ISO8601 format (for example, 100 days would be P100D)',
              args: [
                Arg(
                name: 'hot-cache-perio'
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
              description: 'The name of the database',
              args: [
                Arg(
                name: 'nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Wait for a managed Kusto database to reach a desired state',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              description: 'The name of the database',
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
        )
      ]
    ),
    Subcommand(
      name: 'database-principal-assignment',
      description: 'Manage database principal assignment with kusto',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a Kusto cluster database principalAssignment',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: '--principal-assignment-name',
              description: 'The name of the Kusto principalAssignment',
              args: [
                Arg(
                name: 'principal-assignment-nam'
              )
              ]
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
              name: '--principal-id',
              description: 'The principal ID assigned to the database principal. It can be a user email, application ID, or security group name',
              args: [
                Arg(
                name: 'principal-i'
              )
              ]
            ),
            Option(
              name: '--principal-type',
              description: 'Principal type',
              args: [
                Arg(
                name: 'principal-type',
                suggestions: [

                  FigSuggestion(name: 'App'),
                  FigSuggestion(name: 'Group'),
                  FigSuggestion(name: 'User')
                ]
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'Database principal role',
              args: [
                Arg(
                name: 'role',
                suggestions: [

                  FigSuggestion(name: 'Admin'),
                  FigSuggestion(name: 'Ingestor'),
                  FigSuggestion(name: 'Monitor'),
                  FigSuggestion(name: 'UnrestrictedViewer'),
                  FigSuggestion(name: 'User'),
                  FigSuggestion(name: 'Viewer')
                ]
              )
              ]
            ),
            Option(
              name: '--tenant-id',
              description: 'The tenant id of the principal',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a Kusto principalAssignment',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
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
              name: '--principal-assignment-name',
              description: 'The name of the Kusto principalAssignment',
              args: [
                Arg(
                name: 'principal-assignment-nam'
              )
              ]
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
          description: 'Lists all Kusto cluster database principalAssignments',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
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
          description: 'Gets a Kusto cluster database principalAssignment',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
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
              name: '--principal-assignment-name',
              description: 'The name of the Kusto principalAssignment',
              args: [
                Arg(
                name: 'principal-assignment-nam'
              )
              ]
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
          description: 'Update a Kusto cluster database principalAssignment',
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
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--principal-assignment-name',
              description: 'The name of the Kusto principalAssignment',
              args: [
                Arg(
                name: 'principal-assignment-nam'
              )
              ]
            ),
            Option(
              name: '--principal-id',
              description: 'The principal ID assigned to the database principal. It can be a user email, application ID, or security group name',
              args: [
                Arg(
                name: 'principal-i'
              )
              ]
            ),
            Option(
              name: '--principal-type',
              description: 'Principal type',
              args: [
                Arg(
                name: 'principal-type',
                suggestions: [

                  FigSuggestion(name: 'App'),
                  FigSuggestion(name: 'Group'),
                  FigSuggestion(name: 'User')
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
              name: '--role',
              description: 'Database principal role',
              args: [
                Arg(
                name: 'role',
                suggestions: [

                  FigSuggestion(name: 'Admin'),
                  FigSuggestion(name: 'Ingestor'),
                  FigSuggestion(name: 'Monitor'),
                  FigSuggestion(name: 'UnrestrictedViewer'),
                  FigSuggestion(name: 'User'),
                  FigSuggestion(name: 'Viewer')
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tenant-id',
              description: 'The tenant id of the principal',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the kusto database-principal-assignment is met',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
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
              name: '--principal-assignment-name',
              description: 'The name of the Kusto principalAssignment',
              args: [
                Arg(
                name: 'principal-assignment-nam'
              )
              ]
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
        )
      ]
    ),
    Subcommand(
      name: 'managed-private-endpoint',
      description: 'Manage managed private endpoint with kusto',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a managed private endpoint',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--managed-private-endpoint-name', '--name', '-n'],
              description: 'The name of the managed private endpoint',
              args: [
                Arg(
                name: 'managed-private-endpoint-nam'
              )
              ]
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
              name: '--group-id',
              description: 'The groupId in which the managed private endpoint is created',
              args: [
                Arg(
                name: 'group-i'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--private-link-resource-id', '--private-link'],
              description: 'The ARM resource ID of the resource for which the managed private endpoint is created',
              args: [
                Arg(
                name: 'private-link-resource-i'
              )
              ]
            ),
            Option(
              name: ['--private-link-resource-region', '--private-link-region'],
              description: 'The region of the resource to which the managed private endpoint is created',
              args: [
                Arg(
                name: 'private-link-resource-regio'
              )
              ]
            ),
            Option(
              name: '--request-message',
              description: 'The user request message',
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
          description: 'Deletes a managed private endpoint',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: ['--managed-private-endpoint-name', '--name', '-n'],
              description: 'The name of the managed private endpoint',
              args: [
                Arg(
                name: 'managed-private-endpoint-nam'
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
          description: 'Returns the list of managed private endpoints',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
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
          description: 'Gets a managed private endpoint',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: ['--managed-private-endpoint-name', '--name', '-n'],
              description: 'The name of the managed private endpoint',
              args: [
                Arg(
                name: 'managed-private-endpoint-nam'
              )
              ]
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
          description: 'Updates a managed private endpoint',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--group-id',
              description: 'The groupId in which the managed private endpoint is created',
              args: [
                Arg(
                name: 'group-i'
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
              name: ['--managed-private-endpoint-name', '--name', '-n'],
              description: 'The name of the managed private endpoint',
              args: [
                Arg(
                name: 'managed-private-endpoint-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--private-link-resource-id', '--private-link'],
              description: 'The ARM resource ID of the resource for which the managed private endpoint is created',
              args: [
                Arg(
                name: 'private-link-resource-i'
              )
              ]
            ),
            Option(
              name: ['--private-link-resource-region', '--private-link-region'],
              description: 'The region of the resource to which the managed private endpoint is created',
              args: [
                Arg(
                name: 'private-link-resource-regio'
              )
              ]
            ),
            Option(
              name: '--request-message',
              description: 'The user request message',
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
          description: 'Place the CLI in a waiting state until a condition of the kusto managed-private-endpoint is met',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: ['--managed-private-endpoint-name', '--name', '-n'],
              description: 'The name of the managed private endpoint',
              args: [
                Arg(
                name: 'managed-private-endpoint-nam'
              )
              ]
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
        )
      ]
    ),
    Subcommand(
      name: 'operation-result',
      description: 'Manage operation result with kusto',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Returns operation results',
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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--operation-id',
              description: 'The Guid of the operation ID',
              args: [
                Arg(
                name: 'operation-i'
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
      name: 'operation-result-location',
      description: 'Manage operation result location with kusto',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Returns operation results',
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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--operation-id',
              description: 'The Guid of the operation ID',
              args: [
                Arg(
                name: 'operation-i'
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
      description: 'Manage private endpoint connection with kusto',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Approve or reject a private endpoint connection with a given name',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--private-endpoint-connection-name', '--name', '-n'],
              description: 'The name of the private endpoint connection',
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
              name: [
                '--private-link-service-connection-state',
                '--connection-state',
              ],
              description: 'Connection State of the Private Endpoint Connection',
              args: [
                Arg(
                name: 'private-link-service-connection-stat'
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
          description: 'Deletes a private endpoint connection with a given name',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: ['--private-endpoint-connection-name', '--name', '-n'],
              description: 'The name of the private endpoint connection',
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Returns the list of private endpoint connections',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
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
          description: 'Gets a private endpoint connection',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: ['--private-endpoint-connection-name', '--name', '-n'],
              description: 'The name of the private endpoint connection',
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
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Approve or reject a private endpoint connection with a given name',
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
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: [
                '--private-link-service-connection-state',
                '--connection-state',
              ],
              description: 'Connection State of the Private Endpoint Connection',
              args: [
                Arg(
                name: 'private-link-service-connection-stat'
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
              description: 'The name of the private endpoint connection',
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
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the kusto private-endpoint-connection is met',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              description: 'The name of the private endpoint connection',
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'private-link-resource',
      description: 'Manage private link resource with kusto',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Returns the list of private link resources',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
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
          description: 'Gets a private link resource',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: ['--private-link-resource-name', '--name', '-n'],
              description: 'The name of the private link resource',
              args: [
                Arg(
                name: 'private-link-resource-nam'
              )
              ]
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
      name: 'script',
      description: 'Manage script with kusto',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a Kusto database script',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: ['--script-name', '--name', '-n'],
              description: 'The name of the Kusto database script',
              args: [
                Arg(
                name: 'script-nam'
              )
              ]
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
              name: '--continue-on-errors',
              description: 'Flag that indicates whether to continue if one of the command fails',
              args: [
                Arg(
                name: 'continue-on-errors',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--force-update-tag',
              description: 'A unique string. If changed the script will be applied again',
              args: [
                Arg(
                name: 'force-update-ta'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--script-content',
              description: 'The script content. This property should be used when the script is provide inline and not through file in a SA. Must not be used together with scriptUrl and scriptUrlSasToken properties',
              args: [
                Arg(
                name: 'script-conten'
              )
              ]
            ),
            Option(
              name: '--script-url',
              description: 'The url to the KQL script blob file. Must not be used together with scriptContent property',
              args: [
                Arg(
                name: 'script-ur'
              )
              ]
            ),
            Option(
              name: '--script-url-sas-token',
              description: 'The SaS token that provide read access to the file which contain the script. Must be provided when using scriptUrl property',
              args: [
                Arg(
                name: 'script-url-sas-toke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a Kusto principalAssignment',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
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
              name: ['--script-name', '--name', '-n'],
              description: 'The name of the Kusto database script',
              args: [
                Arg(
                name: 'script-nam'
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
          description: 'Returns the list of database scripts for given database',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
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
          description: 'Gets a Kusto cluster database script',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
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
              name: ['--script-name', '--name', '-n'],
              description: 'The name of the Kusto database script',
              args: [
                Arg(
                name: 'script-nam'
              )
              ]
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
          description: 'Updates a database script',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--continue-on-errors',
              description: 'Flag that indicates whether to continue if one of the command fails',
              args: [
                Arg(
                name: 'continue-on-errors',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: '--force-update-tag',
              description: 'A unique string. If changed the script will be applied again',
              args: [
                Arg(
                name: 'force-update-ta'
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
              name: ['--script-name', '--name', '-n'],
              description: 'The name of the Kusto database script',
              args: [
                Arg(
                name: 'script-nam'
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
              name: '--script-content',
              description: 'The script content. This property should be used when the script is provide inline and not through file in a SA. Must not be used together with scriptUrl and scriptUrlSasToken properties',
              args: [
                Arg(
                name: 'script-conten'
              )
              ]
            ),
            Option(
              name: '--script-url',
              description: 'The url to the KQL script blob file. Must not be used together with scriptContent property',
              args: [
                Arg(
                name: 'script-ur'
              )
              ]
            ),
            Option(
              name: '--script-url-sas-token',
              description: 'The SaS token that provide read access to the file which contain the script. Must be provided when using scriptUrl property',
              args: [
                Arg(
                name: 'script-url-sas-toke'
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
          description: 'Place the CLI in a waiting state until a condition of the kusto script is met',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The name of the Kusto cluster',
              args: [
                Arg(
                name: 'cluster-nam'
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
              name: '--database-name',
              description: 'The name of the database in the Kusto cluster',
              args: [
                Arg(
                name: 'database-nam'
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
              name: ['--script-name', '--name', '-n'],
              description: 'The name of the Kusto database script',
              args: [
                Arg(
                name: 'script-nam'
              )
              ]
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
        )
      ]
    )
  ]
);
