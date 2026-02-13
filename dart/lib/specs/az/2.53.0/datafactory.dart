// Auto-generated from TypeScript source: datafactory.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `datafactory` CLI
final FigSpec datafactorySpec = FigSpec(
  name: 'datafactory',
  description: 'Manage Data Factory',
  subcommands: [

    Subcommand(
      name: 'activity-run',
      description: 'Manage activity run with datafactory',
      subcommands: [

        Subcommand(
          name: 'query-by-pipeline-run',
          description: 'Query activity runs based on input filter conditions',
          options: [

            Option(
              name: '--last-updated-after',
              description: 'The time at or after which the run event was updated in \'ISO 8601\' format',
              args: [
                Arg(
                name: 'last-updated-afte'
              )
              ]
            ),
            Option(
              name: '--last-updated-before',
              description: 'The time at or before which the run event was updated in \'ISO 8601\' format',
              args: [
                Arg(
                name: 'last-updated-befor'
              )
              ]
            ),
            Option(
              name: '--continuation-token',
              description: 'The continuation token for getting the next page of results. Null for first page',
              args: [
                Arg(
                name: 'continuation-toke'
              )
              ]
            ),
            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: '--filters',
              description: 'List of filters',
              args: [
                Arg(
                name: 'filter'
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
              name: '--order-by',
              description: 'List of OrderBy option',
              args: [
                Arg(
                name: 'order-b'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--run-id',
              description: 'The pipeline run identifier',
              args: [
                Arg(
                name: 'run-i'
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
      name: 'configure-factory-repo',
      description: 'Updates a factory\'s repo information',
      options: [

        Option(
          name: ['--factory-git-hub-configuration', '--github-config'],
          description: 'Factory\'s GitHub repo information',
          args: [
            Arg(
            name: 'factory-git-hub-configuratio'
          )
          ]
        ),
        Option(
          name: '--factory-resource-id',
          description: 'The factory resource id',
          args: [
            Arg(
            name: 'factory-resource-i'
          )
          ]
        ),
        Option(
          name: ['--factory-vsts-configuration', '--vsts-config'],
          description: 'Factory\'s VSTS repo information',
          args: [
            Arg(
            name: 'factory-vsts-configuratio'
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
      description: 'Create a factory',
      options: [

        Option(
          name: ['--factory-name', '--name', '-n'],
          description: 'The factory name',
          args: [
            Arg(
            name: 'factory-nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--factory-git-hub-configuration', '--github-config'],
          description: 'Factory\'s GitHub repo information',
          args: [
            Arg(
            name: 'factory-git-hub-configuratio'
          )
          ]
        ),
        Option(
          name: ['--factory-vsts-configuration', '--vsts-config'],
          description: 'Factory\'s VSTS repo information',
          args: [
            Arg(
            name: 'factory-vsts-configuratio'
          )
          ]
        ),
        Option(
          name: '--global-parameters',
          description: 'List of parameters for factory. Expected value: json-string/json-file/@json-file',
          args: [
            Arg(
            name: 'global-parameter'
          )
          ]
        ),
        Option(
          name: '--if-match',
          description: 'ETag of the factory entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
          args: [
            Arg(
            name: 'if-matc'
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
      description: 'Deletes a factory',
      options: [

        Option(
          name: ['--factory-name', '--name', '-n'],
          description: 'The factory name',
          args: [
            Arg(
            name: 'factory-nam'
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
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'get-data-plane-access',
      description: 'Get Data Plane access',
      options: [

        Option(
          name: '--access-resource-path',
          description: 'The resource path to get access relative to factory. Currently only empty string is supported which corresponds to the factory resource',
          args: [
            Arg(
            name: 'access-resource-pat'
          )
          ]
        ),
        Option(
          name: '--expire-time',
          description: 'Expiration time for the token. Maximum duration for the token is eight hours and by default the token will expire in eight hours',
          args: [
            Arg(
            name: 'expire-tim'
          )
          ]
        ),
        Option(
          name: ['--factory-name', '--name', '-n'],
          description: 'The factory name',
          args: [
            Arg(
            name: 'factory-nam'
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
          name: '--permissions',
          description: 'The string with permissions for Data Plane access. Currently only \'r\' is supported which grants read only access',
          args: [
            Arg(
            name: 'permission'
          )
          ]
        ),
        Option(
          name: '--profile-name',
          description: 'The name of the profile. Currently only the default is supported. The default value is DefaultProfile',
          args: [
            Arg(
            name: 'profile-nam'
          )
          ]
        ),
        Option(
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
          description: 'Start time for the token. If not specified the current time will be used',
          args: [
            Arg(
            name: 'start-tim'
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
      name: 'get-git-hub-access-token',
      description: 'Get GitHub Access Token',
      options: [

        Option(
          name: '--git-hub-access-code',
          description: 'GitHub access code',
          args: [
            Arg(
            name: 'git-hub-access-cod'
          )
          ]
        ),
        Option(
          name: '--git-hub-access-token-base-url',
          description: 'GitHub access token base URL',
          args: [
            Arg(
            name: 'git-hub-access-token-base-ur'
          )
          ]
        ),
        Option(
          name: ['--factory-name', '--name', '-n'],
          description: 'The factory name',
          args: [
            Arg(
            name: 'factory-nam'
          )
          ]
        ),
        Option(
          name: '--git-hub-client-id',
          description: 'GitHub application client ID',
          args: [
            Arg(
            name: 'git-hub-client-i'
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
      name: 'list',
      description: 'Lists factories. And Lists factories under the specified subscription',
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
      description: 'Gets a factory',
      options: [

        Option(
          name: ['--factory-name', '--name', '-n'],
          description: 'The factory name',
          args: [
            Arg(
            name: 'factory-nam'
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
          name: '--if-none-match',
          description: 'ETag of the factory entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned',
          args: [
            Arg(
            name: 'if-none-matc'
          )
          ]
        ),
        Option(
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
      description: 'Updates a factory',
      options: [

        Option(
          name: ['--factory-name', '--name', '-n'],
          description: 'The factory name',
          args: [
            Arg(
            name: 'factory-nam'
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
      name: 'data-flow',
      description: 'Managing and configuring Data Flows in Azure Data Factory',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a data flow within a factory',
          options: [

            Option(
              name: ['--data-flow-name', '--name', '-n'],
              description: 'The data flow name',
              args: [
                Arg(
                name: 'data-flow-nam'
              )
              ]
            ),
            Option(
              name: ['--factory-name', '-f'],
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: ['--flow-type', '-t'],
              description: 'The data flow type. Valid choices: MappingDataFlow, Flowlet',
              args: [
                Arg(
                name: 'flow-typ'
              )
              ]
            ),
            Option(
              name: '--properties',
              description: 'Specified properties for the dataflow. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'ETag of the data flow entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a specific data flow in a given factory',
          options: [

            Option(
              name: ['--data-flow-name', '--name', '-n'],
              description: 'The data flow name',
              args: [
                Arg(
                name: 'data-flow-nam'
              )
              ]
            ),
            Option(
              name: ['--factory-name', '-f'],
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
          name: 'list',
          description: 'List data flows within a provided factory',
          options: [

            Option(
              name: ['--factory-name', '-f'],
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
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
          description: 'Show information about the specified data flow',
          options: [

            Option(
              name: ['--data-flow-name', '--name', '-n'],
              description: 'The data flow name',
              args: [
                Arg(
                name: 'data-flow-nam'
              )
              ]
            ),
            Option(
              name: ['--factory-name', '-f'],
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--if-none-match',
              description: 'ETag of the pipeline entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
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
          description: 'Updates a specified data flow within a factory',
          options: [

            Option(
              name: '--properties',
              description: 'Specified properties for the dataflow. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            ),
            Option(
              name: ['--data-flow-name', '--name', '-n'],
              description: 'The data flow name',
              args: [
                Arg(
                name: 'data-flow-nam'
              )
              ]
            ),
            Option(
              name: ['--factory-name', '-f'],
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
        )
      ]
    ),
    Subcommand(
      name: 'dataset',
      description: 'Manage dataset with datafactory',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a dataset',
          options: [

            Option(
              name: ['--dataset-name', '--name', '-n'],
              description: 'The dataset name',
              args: [
                Arg(
                name: 'dataset-nam'
              )
              ]
            ),
            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: '--properties',
              description: 'Dataset properties. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'ETag of the dataset entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a dataset',
          options: [

            Option(
              name: ['--dataset-name', '--name', '-n'],
              description: 'The dataset name',
              args: [
                Arg(
                name: 'dataset-nam'
              )
              ]
            ),
            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Lists datasets',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
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
          description: 'Gets a dataset',
          options: [

            Option(
              name: ['--dataset-name', '--name', '-n'],
              description: 'The dataset name',
              args: [
                Arg(
                name: 'dataset-nam'
              )
              ]
            ),
            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--if-none-match',
              description: 'ETag of the dataset entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
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
          description: 'Update a dataset',
          options: [

            Option(
              name: '--linked-service-name',
              description: 'Linked service reference. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'linked-service-nam'
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
              name: '--annotations',
              description: 'List of tags that can be used for describing the Dataset. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'annotation'
              )
              ]
            ),
            Option(
              name: ['--dataset-name', '--name', '-n'],
              description: 'The dataset name',
              args: [
                Arg(
                name: 'dataset-nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Dataset description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: '--folder',
              description: 'The folder that this Dataset is in. If not specified, Dataset will appear at the root level',
              args: [
                Arg(
                name: 'folde'
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
              name: '--if-match',
              description: 'ETag of the dataset entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'ETag of the dataset entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned. Default value is None',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'Parameters for dataset. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'parameter'
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
              name: '--schema',
              description: 'Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'schem'
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
              name: '--structure',
              description: 'Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'structur'
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
      name: 'integration-runtime',
      description: 'Manage integration runtime with datafactory',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Deletes an integration runtime',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--integration-runtime-name', '--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
            ),
            Option(
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
          name: 'get-connection-info',
          description: 'Gets the on-premises integration runtime connection information for encrypting the on-premises data source credentials',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--integration-runtime-name', '--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
            ),
            Option(
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
          name: 'get-monitoring-data',
          description: 'Get the integration runtime monitoring data, which includes the monitor data for all the nodes under this integration runtime',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--integration-runtime-name', '--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
            ),
            Option(
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
          name: 'get-status',
          description: 'Gets detailed status information for an integration runtime',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--integration-runtime-name', '--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
            ),
            Option(
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
          description: 'Lists integration runtimes',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
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
          name: 'list-auth-key',
          description: 'Retrieves the authentication keys for an integration runtime',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: ['--integration-runtime-name', '--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
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
          name: 'regenerate-auth-key',
          description: 'Regenerates the authentication key for an integration runtime',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--integration-runtime-name', '--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
            ),
            Option(
              name: '--key-name',
              description: 'The name of the authentication key to regenerate',
              args: [
                Arg(
                name: 'key-name',
                suggestions: [

                  FigSuggestion(name: 'authKey1'),
                  FigSuggestion(name: 'authKey2')
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
            )
          ]
        ),
        Subcommand(
          name: 'remove-link',
          description: 'Remove all linked integration runtimes under specific data factory in a self-hosted integration runtime',
          options: [

            Option(
              name: '--linked-factory-name',
              description: 'The data factory name for linked integration runtime',
              args: [
                Arg(
                name: 'linked-factory-nam'
              )
              ]
            ),
            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--integration-runtime-name', '--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
            ),
            Option(
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
          description: 'Gets an integration runtime',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--if-none-match',
              description: 'ETag of the integration runtime entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: ['--integration-runtime-name', '--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
            ),
            Option(
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
          description: 'Starts a ManagedReserved type integration runtime',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--integration-runtime-name', '--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
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
          description: 'Stops a ManagedReserved type integration runtime',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--integration-runtime-name', '--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
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
          name: 'sync-credentials',
          description: 'Force the integration runtime to synchronize credentials across integration runtime nodes, and this will override the credentials across all worker nodes with those available on the dispatcher node. If you already have the latest credential backup file, you should manually import it (preferred) on any self-hosted integration runtime node than using this API directly',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--integration-runtime-name', '--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
            ),
            Option(
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
          description: 'Updates an integration runtime',
          options: [

            Option(
              name: '--auto-update',
              description: 'Enables or disables the auto-update feature of the self-hosted integration runtime. See https://go.microsoft.com/fwlink/?linkid=854189',
              args: [
                Arg(
                name: 'auto-update',
                suggestions: [

                  FigSuggestion(name: 'Off'),
                  FigSuggestion(name: 'On')
                ]
              )
              ]
            ),
            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--integration-runtime-name', '--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
            ),
            Option(
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
              name: '--update-delay-offset',
              description: 'The time offset (in hours) in the day, e.g., PT03H is 3 hours. The integration runtime auto update will happen on that time',
              args: [
                Arg(
                name: 'update-delay-offse'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade self-hosted integration runtime to latest version if availability',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--integration-runtime-name', '--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
            ),
            Option(
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
          description: 'Place the CLI in a waiting state until a condition of the datafactory integration-runtime is met',
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
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--if-none-match',
              description: 'ETag of the integration runtime entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: ['--integration-runtime-name', '--name', '-n'],
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
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
          name: 'linked-integration-runtime',
          description: 'Manage integration runtime with datafactory sub group linked-integration-runtime',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a linked integration runtime entry in a shared integration runtime',
              options: [

                Option(
                  name: '--factory-name',
                  description: 'The factory name',
                  args: [
                    Arg(
                    name: 'factory-nam'
                  )
                  ]
                ),
                Option(
                  name: '--integration-runtime-name',
                  description: 'The integration runtime name',
                  args: [
                    Arg(
                    name: 'integration-runtime-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--data-factory-name',
                  description: 'The name of the data factory that the linked integration runtime belongs to',
                  args: [
                    Arg(
                    name: 'data-factory-nam'
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
                  name: '--name',
                  description: 'The name of the linked integration runtime',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'The ID of the subscription that the linked integration runtime belongs to',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'managed',
          description: 'Manage integration runtime with datafactory sub group managed',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an integration runtime',
              options: [

                Option(
                  name: '--factory-name',
                  description: 'The factory name',
                  args: [
                    Arg(
                    name: 'factory-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--integration-runtime-name', '--name', '-n'],
                  description: 'The integration runtime name',
                  args: [
                    Arg(
                    name: 'integration-runtime-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--compute-properties',
                  description: 'The compute resource for managed integration runtime. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'compute-propertie'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Integration runtime description',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the integration runtime entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                ),
                Option(
                  name: '--ssis-properties',
                  description: 'SSIS properties for managed integration runtime. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'ssis-propertie'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'self-hosted',
          description: 'Manage integration runtime with datafactory sub group self-hosted',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an integration runtime',
              options: [

                Option(
                  name: '--factory-name',
                  description: 'The factory name',
                  args: [
                    Arg(
                    name: 'factory-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--integration-runtime-name', '--name', '-n'],
                  description: 'The integration runtime name',
                  args: [
                    Arg(
                    name: 'integration-runtime-nam'
                  )
                  ]
                ),
                Option(
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
                  description: 'Integration runtime description',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--if-match',
                  description: 'ETag of the integration runtime entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
                  args: [
                    Arg(
                    name: 'if-matc'
                  )
                  ]
                ),
                Option(
                  name: '--linked-info',
                  description: 'The base definition of a linked integration runtime. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'linked-inf'
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
      name: 'integration-runtime-node',
      description: 'Manage integration runtime node with datafactory',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Deletes a self-hosted integration runtime node',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--integration-runtime-name',
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
            ),
            Option(
              name: '--node-name',
              description: 'The integration runtime node name',
              args: [
                Arg(
                name: 'node-nam'
              )
              ]
            ),
            Option(
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
          name: 'get-ip-address',
          description: 'Get the IP address of self-hosted integration runtime node',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--integration-runtime-name',
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
            ),
            Option(
              name: '--node-name',
              description: 'The integration runtime node name',
              args: [
                Arg(
                name: 'node-nam'
              )
              ]
            ),
            Option(
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
          description: 'Gets a self-hosted integration runtime node',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--integration-runtime-name',
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
            ),
            Option(
              name: '--node-name',
              description: 'The integration runtime node name',
              args: [
                Arg(
                name: 'node-nam'
              )
              ]
            ),
            Option(
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
          description: 'Updates a self-hosted integration runtime node',
          options: [

            Option(
              name: '--concurrent-jobs-limit',
              description: 'The number of concurrent jobs permitted to run on the integration runtime node. Values between 1 and maxConcurrentJobs(inclusive) are allowed',
              args: [
                Arg(
                name: 'concurrent-jobs-limi'
              )
              ]
            ),
            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--integration-runtime-name',
              description: 'The integration runtime name',
              args: [
                Arg(
                name: 'integration-runtime-nam'
              )
              ]
            ),
            Option(
              name: '--node-name',
              description: 'The integration runtime node name',
              args: [
                Arg(
                name: 'node-nam'
              )
              ]
            ),
            Option(
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
      name: 'linked-service',
      description: 'Manage linked service with datafactory',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a linked service',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: ['--linked-service-name', '--name', '-n'],
              description: 'The linked service name',
              args: [
                Arg(
                name: 'linked-service-nam'
              )
              ]
            ),
            Option(
              name: '--properties',
              description: 'Properties of linked service. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'ETag of the linkedService entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a linked service',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--linked-service-name', '--name', '-n'],
              description: 'The linked service name',
              args: [
                Arg(
                name: 'linked-service-nam'
              )
              ]
            ),
            Option(
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
          description: 'Lists linked services',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
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
          description: 'Gets a linked service',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--if-none-match',
              description: 'ETag of the linked service entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: ['--linked-service-name', '--name', '-n'],
              description: 'The linked service name',
              args: [
                Arg(
                name: 'linked-service-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update a linked service',
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
              name: '--annotations',
              description: 'List of tags that can be used for describing the linked service. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'annotation'
              )
              ]
            ),
            Option(
              name: '--connect-via',
              description: 'The integration runtime reference. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'connect-vi'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Linked service description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--if-match',
              description: 'ETag of the linkedService entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'ETag of the linked service entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned. Default value is None',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: ['--linked-service-name', '--name', '-n'],
              description: 'The linked service name',
              args: [
                Arg(
                name: 'linked-service-nam'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'Parameters for linked service. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'parameter'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'managed-private-endpoint',
      description: 'Manage managed private endpoint with datafactory',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a managed private endpoint',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: ['--managed-private-endpoint-name', '--name', '-n'],
              description: 'Managed private endpoint name',
              args: [
                Arg(
                name: 'managed-private-endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--managed-virtual-network-name', '--mvnet-name'],
              description: 'Managed virtual network name',
              args: [
                Arg(
                name: 'managed-virtual-network-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--fqdns',
              description: 'Fully qualified domain names',
              args: [
                Arg(
                name: 'fqdn'
              )
              ]
            ),
            Option(
              name: '--group-id',
              description: 'The groupId to which the managed private endpoint is created',
              args: [
                Arg(
                name: 'group-i'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'ETag of the managed private endpoint entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: ['--private-link-resource-id', '--private-link'],
              description: 'The ARM resource ID of the resource to which the managed private endpoint is created',
              args: [
                Arg(
                name: 'private-link-resource-i'
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
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              description: 'Managed private endpoint name',
              args: [
                Arg(
                name: 'managed-private-endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--managed-virtual-network-name', '--mvnet-name'],
              description: 'Managed virtual network name',
              args: [
                Arg(
                name: 'managed-virtual-network-nam'
              )
              ]
            ),
            Option(
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
          description: 'Lists managed private endpoints',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: ['--managed-virtual-network-name', '--mvnet-name'],
              description: 'Managed virtual network name',
              args: [
                Arg(
                name: 'managed-virtual-network-nam'
              )
              ]
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
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--if-none-match',
              description: 'ETag of the managed private endpoint entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: ['--managed-private-endpoint-name', '--name', '-n'],
              description: 'Managed private endpoint name',
              args: [
                Arg(
                name: 'managed-private-endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--managed-virtual-network-name', '--mvnet-name'],
              description: 'Managed virtual network name',
              args: [
                Arg(
                name: 'managed-virtual-network-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update a managed private endpoint',
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
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--fqdns',
              description: 'Fully qualified domain names',
              args: [
                Arg(
                name: 'fqdn'
              )
              ]
            ),
            Option(
              name: '--group-id',
              description: 'The groupId to which the managed private endpoint is created',
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
              name: '--if-match',
              description: 'ETag of the managed private endpoint entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'ETag of the managed private endpoint entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned. Default value is None',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: ['--managed-private-endpoint-name', '--name', '-n'],
              description: 'Managed private endpoint name',
              args: [
                Arg(
                name: 'managed-private-endpoint-nam'
              )
              ]
            ),
            Option(
              name: ['--managed-virtual-network-name', '--mvnet-name'],
              description: 'Managed virtual network name',
              args: [
                Arg(
                name: 'managed-virtual-network-nam'
              )
              ]
            ),
            Option(
              name: ['--private-link-resource-id', '--private-link'],
              description: 'The ARM resource ID of the resource to which the managed private endpoint is created',
              args: [
                Arg(
                name: 'private-link-resource-i'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'managed-virtual-network',
      description: 'Manage managed virtual network with datafactory',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a managed Virtual Network',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: ['--managed-virtual-network-name', '--name', '-n'],
              description: 'Managed virtual network name',
              args: [
                Arg(
                name: 'managed-virtual-network-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'ETag of the managed Virtual Network entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
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
          description: 'Lists managed Virtual Networks',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
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
          description: 'Gets a managed Virtual Network',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--if-none-match',
              description: 'ETag of the managed Virtual Network entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: ['--managed-virtual-network-name', '--name', '-n'],
              description: 'Managed virtual network name',
              args: [
                Arg(
                name: 'managed-virtual-network-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update a managed Virtual Network',
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
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--if-match',
              description: 'ETag of the managed Virtual Network entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'ETag of the managed Virtual Network entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned. Default value is None',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: ['--managed-virtual-network-name', '--name', '-n'],
              description: 'Managed virtual network name',
              args: [
                Arg(
                name: 'managed-virtual-network-nam'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pipeline',
      description: 'Manage pipeline with datafactory',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a pipeline',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: ['--pipeline-name', '--name', '-n'],
              description: 'The pipeline name',
              args: [
                Arg(
                name: 'pipeline-nam'
              )
              ]
            ),
            Option(
              name: '--pipeline',
              description: 'Pipeline resource definition. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'pipelin'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'ETag of the pipeline entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create-run',
          description: 'Creates a run of a pipeline',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: ['--pipeline-name', '--name', '-n'],
              description: 'The pipeline name',
              args: [
                Arg(
                name: 'pipeline-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--is-recovery',
              description: 'Recovery mode flag. If recovery mode is set to true, the specified referenced pipeline run and the new run will be grouped under the same groupId',
              args: [
                Arg(
                name: 'is-recovery',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'Parameters of the pipeline run. These parameters will be used only if the runId is not specified. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: '--reference-pipeline-run-id',
              description: 'The pipeline run identifier. If run ID is specified the parameters of the specified run will be used to create a new run',
              args: [
                Arg(
                name: 'reference-pipeline-run-i'
              )
              ]
            ),
            Option(
              name: '--start-activity-name',
              description: 'In recovery mode, the rerun will start from this activity. If not specified, all activities will run',
              args: [
                Arg(
                name: 'start-activity-nam'
              )
              ]
            ),
            Option(
              name: '--start-from-failure',
              description: 'In recovery mode, if set to true, the rerun will start from failed activities. The property will be used only if startActivityName is not specified',
              args: [
                Arg(
                name: 'start-from-failure',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a pipeline',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--pipeline-name', '--name', '-n'],
              description: 'The pipeline name',
              args: [
                Arg(
                name: 'pipeline-nam'
              )
              ]
            ),
            Option(
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
          description: 'Lists pipelines',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
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
          description: 'Gets a pipeline',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--if-none-match',
              description: 'ETag of the pipeline entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: ['--pipeline-name', '--name', '-n'],
              description: 'The pipeline name',
              args: [
                Arg(
                name: 'pipeline-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update a pipeline',
          options: [

            Option(
              name: '--activities',
              description: 'List of activities in pipeline. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'activitie'
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
              name: '--annotations',
              description: 'List of tags that can be used for describing the Pipeline. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'annotation'
              )
              ]
            ),
            Option(
              name: '--concurrency',
              description: 'The max number of concurrent runs for the pipeline',
              args: [
                Arg(
                name: 'concurrenc'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'The description of the pipeline',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--duration',
              description: 'TimeSpan value, after which an Azure Monitoring Metric is fired. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'duratio'
              )
              ]
            ),
            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: '--folder-name',
              description: 'The name of the folder that this Pipeline is in',
              args: [
                Arg(
                name: 'folder-nam'
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
              name: '--if-match',
              description: 'ETag of the pipeline entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'ETag of the pipeline entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned. Default value is None',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: ['--pipeline-name', '--name', '-n'],
              description: 'The pipeline name',
              args: [
                Arg(
                name: 'pipeline-nam'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'List of parameters for pipeline. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'parameter'
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
              name: '--run-dimensions',
              description: 'Dimensions emitted by Pipeline. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'run-dimension'
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
              name: '--variables',
              description: 'List of variables for pipeline. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'variable'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pipeline-run',
      description: 'Manage pipeline run with datafactory',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel a pipeline run by its run ID',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--is-recursive',
              description: 'If true, cancel all the Child pipelines that are triggered by the current pipeline',
              args: [
                Arg(
                name: 'is-recursive',
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
              name: '--run-id',
              description: 'The pipeline run identifier',
              args: [
                Arg(
                name: 'run-i'
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
          name: 'query-by-factory',
          description: 'Query pipeline runs in the factory based on input filter conditions',
          options: [

            Option(
              name: '--last-updated-after',
              description: 'The time at or after which the run event was updated in \'ISO 8601\' format',
              args: [
                Arg(
                name: 'last-updated-afte'
              )
              ]
            ),
            Option(
              name: '--last-updated-before',
              description: 'The time at or before which the run event was updated in \'ISO 8601\' format',
              args: [
                Arg(
                name: 'last-updated-befor'
              )
              ]
            ),
            Option(
              name: '--continuation-token',
              description: 'The continuation token for getting the next page of results. Null for first page',
              args: [
                Arg(
                name: 'continuation-toke'
              )
              ]
            ),
            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: '--filters',
              description: 'List of filters',
              args: [
                Arg(
                name: 'filter'
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
              name: '--order-by',
              description: 'List of OrderBy option',
              args: [
                Arg(
                name: 'order-b'
              )
              ]
            ),
            Option(
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
          description: 'Get a pipeline run by its run ID',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--run-id',
              description: 'The pipeline run identifier',
              args: [
                Arg(
                name: 'run-i'
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
      name: 'trigger',
      description: 'Manage trigger with datafactory',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a trigger',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: ['--trigger-name', '--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'trigger-nam'
              )
              ]
            ),
            Option(
              name: '--properties',
              description: 'Properties of the trigger. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--if-match',
              description: 'ETag of the trigger entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a trigger',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--trigger-name', '--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'trigger-nam'
              )
              ]
            ),
            Option(
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
          name: 'get-event-subscription-status',
          description: 'Get a trigger\'s event subscription status',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--trigger-name', '--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'trigger-nam'
              )
              ]
            ),
            Option(
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
          description: 'Lists triggers',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
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
          name: 'query-by-factory',
          description: 'Query triggers',
          options: [

            Option(
              name: '--continuation-token',
              description: 'The continuation token for getting the next page of results. Null for first page',
              args: [
                Arg(
                name: 'continuation-toke'
              )
              ]
            ),
            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--parent-trigger-name',
              description: 'The name of the parent TumblingWindowTrigger to get the child rerun triggers',
              args: [
                Arg(
                name: 'parent-trigger-nam'
              )
              ]
            ),
            Option(
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
          description: 'Gets a trigger',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--if-none-match',
              description: 'ETag of the trigger entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: ['--trigger-name', '--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'trigger-nam'
              )
              ]
            ),
            Option(
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
          description: 'Starts a trigger',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--trigger-name', '--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'trigger-nam'
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
          description: 'Stops a trigger',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--trigger-name', '--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'trigger-nam'
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
          name: 'subscribe-to-event',
          description: 'Subscribe event trigger to events',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--trigger-name', '--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'trigger-nam'
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
          name: 'unsubscribe-from-event',
          description: 'Unsubscribe event trigger from events',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: ['--trigger-name', '--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'trigger-nam'
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
          description: 'Update a trigger',
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
              name: '--annotations',
              description: 'List of tags that can be used for describing the trigger. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'annotation'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Trigger description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--if-match',
              description: 'ETag of the trigger entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update',
              args: [
                Arg(
                name: 'if-matc'
              )
              ]
            ),
            Option(
              name: '--if-none-match',
              description: 'ETag of the trigger entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned. Default value is None',
              args: [
                Arg(
                name: 'if-none-matc'
              )
              ]
            ),
            Option(
              name: ['--trigger-name', '--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'trigger-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the datafactory trigger is met',
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
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--if-none-match',
              description: 'ETag of the trigger entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned',
              args: [
                Arg(
                name: 'if-none-matc'
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
              name: ['--trigger-name', '--name', '-n'],
              description: 'The trigger name',
              args: [
                Arg(
                name: 'trigger-nam'
              )
              ]
            ),
            Option(
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
      name: 'trigger-run',
      description: 'Manage trigger run with datafactory',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel a single trigger instance by runId',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--run-id',
              description: 'The pipeline run identifier',
              args: [
                Arg(
                name: 'run-i'
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
              name: '--trigger-name',
              description: 'The trigger name',
              args: [
                Arg(
                name: 'trigger-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'query-by-factory',
          description: 'Query trigger runs',
          options: [

            Option(
              name: '--last-updated-after',
              description: 'The time at or after which the run event was updated in \'ISO 8601\' format',
              args: [
                Arg(
                name: 'last-updated-afte'
              )
              ]
            ),
            Option(
              name: '--last-updated-before',
              description: 'The time at or before which the run event was updated in \'ISO 8601\' format',
              args: [
                Arg(
                name: 'last-updated-befor'
              )
              ]
            ),
            Option(
              name: '--continuation-token',
              description: 'The continuation token for getting the next page of results. Null for first page',
              args: [
                Arg(
                name: 'continuation-toke'
              )
              ]
            ),
            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
              )
              ]
            ),
            Option(
              name: '--filters',
              description: 'List of filters',
              args: [
                Arg(
                name: 'filter'
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
              name: '--order-by',
              description: 'List of OrderBy option',
              args: [
                Arg(
                name: 'order-b'
              )
              ]
            ),
            Option(
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
          name: 'rerun',
          description: 'Rerun single trigger instance by runId',
          options: [

            Option(
              name: '--factory-name',
              description: 'The factory name',
              args: [
                Arg(
                name: 'factory-nam'
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
              name: '--run-id',
              description: 'The pipeline run identifier',
              args: [
                Arg(
                name: 'run-i'
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
              name: '--trigger-name',
              description: 'The trigger name',
              args: [
                Arg(
                name: 'trigger-nam'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
