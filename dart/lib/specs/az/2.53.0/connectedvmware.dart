// Auto-generated from TypeScript source: connectedvmware.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `connectedvmware` CLI
final FigSpec connectedvmwareSpec = FigSpec(
  name: 'connectedvmware',
  description: 'Commands to manage Connected VMware',
  subcommands: [

    Subcommand(
      name: 'cluster',
      description: 'Cluster resource',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a cluster resource',
          options: [

            Option(
              name: ['--custom-location', '-c'],
              description: 'Name or ID of the custom location that will manage this resource',
              args: [
                Arg(
                name: 'custom-locatio'
              )
              ]
            ),
            Option(
              name: ['--inventory-item', '-i'],
              description: 'Name or ID of the inventory item',
              args: [
                Arg(
                name: 'inventory-ite'
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
              description: 'Name of the resource',
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
              name: ['--vcenter', '-v'],
              description: 'Name or ID of the vCenter that is managing this resource',
              args: [
                Arg(
                name: 'vcente'
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
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete cluster resource',
          options: [

            Option(
              name: '--force',
              description: 'Whether force delete or not'
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
              description: 'Name of the resource',
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Retrieve a list of cluster of given resource group',
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
          description: 'Get details of a cluster by id, resource-group, cluster name, or subscription',
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
              description: 'Name of the resource',
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
      name: 'datastore',
      description: 'Datastore resource',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a datastore resource',
          options: [

            Option(
              name: ['--custom-location', '-c'],
              description: 'Name or ID of the custom location that will manage this resource',
              args: [
                Arg(
                name: 'custom-locatio'
              )
              ]
            ),
            Option(
              name: ['--inventory-item', '-i'],
              description: 'Name or ID of the inventory item',
              args: [
                Arg(
                name: 'inventory-ite'
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
              description: 'Name of the resource',
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
              name: ['--vcenter', '-v'],
              description: 'Name or ID of the vCenter that is managing this resource',
              args: [
                Arg(
                name: 'vcente'
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
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete datastore resource',
          options: [

            Option(
              name: '--force',
              description: 'Whether force delete or not'
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
              description: 'Name of the resource',
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Retrieve a list of datastore of given resource group',
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
          description: 'Get details of a datastore by id, resource-group, datastore name, or subscription',
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
              description: 'Name of the resource',
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
      name: 'host',
      description: 'Host resource',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a host resource',
          options: [

            Option(
              name: ['--custom-location', '-c'],
              description: 'Name or ID of the custom location that will manage this resource',
              args: [
                Arg(
                name: 'custom-locatio'
              )
              ]
            ),
            Option(
              name: ['--inventory-item', '-i'],
              description: 'Name or ID of the inventory item',
              args: [
                Arg(
                name: 'inventory-ite'
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
              description: 'Name of the resource',
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
              name: ['--vcenter', '-v'],
              description: 'Name or ID of the vCenter that is managing this resource',
              args: [
                Arg(
                name: 'vcente'
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
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete host resource',
          options: [

            Option(
              name: '--force',
              description: 'Whether force delete or not'
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
              description: 'Name of the resource',
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Retrieve a list of host of given resource group',
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
          description: 'Get details of a host by id, resource-group, host name, or subscription',
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
              description: 'Name of the resource',
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
      name: 'resource-pool',
      description: 'Resource pool resource',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a resource pool resource',
          options: [

            Option(
              name: ['--custom-location', '-c'],
              description: 'Name or ID of the custom location that will manage this resource',
              args: [
                Arg(
                name: 'custom-locatio'
              )
              ]
            ),
            Option(
              name: ['--inventory-item', '-i'],
              description: 'Name or ID of the inventory item',
              args: [
                Arg(
                name: 'inventory-ite'
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
              description: 'Name of the resource',
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
              name: ['--vcenter', '-v'],
              description: 'Name or ID of the vCenter that is managing this resource',
              args: [
                Arg(
                name: 'vcente'
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
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete resource pool resource',
          options: [

            Option(
              name: '--force',
              description: 'Whether force delete or not'
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
              description: 'Name of the resource',
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Retrieve a list of resource pool of given resource group',
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
          description: 'Get details of a resource pool by id, resource-group, resource pool name, or subscription',
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
              description: 'Name of the resource',
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
      name: 'vcenter',
      description: 'Vcenter resource',
      subcommands: [

        Subcommand(
          name: 'connect',
          description: 'Create vcenter resource',
          options: [

            Option(
              name: ['--custom-location', '-c'],
              description: 'Name or ID of the custom location that will manage this resource',
              args: [
                Arg(
                name: 'custom-locatio'
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
              name: '--fqdn',
              description: 'FQDN/IP address of the vCenter',
              args: [
                Arg(
                name: 'fqd'
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
              description: 'Name of the resource',
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
              name: '--password',
              description: 'Username password credentials to use for connecting to the vCenter',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'The port of the vCenter',
              args: [
                Arg(
                name: 'por'
              )
              ]
            ),
            Option(
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
              name: '--username',
              description: 'Username to use for connecting to the vCenter',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete vcenter resource',
          options: [

            Option(
              name: '--force',
              description: 'Whether force delete or not'
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
              description: 'Name of the resource',
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Retrieve a list of vcenter resource of given resource group',
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
          description: 'Get details of a vcenter resource by id, resource-group, vcenter name or subscription',
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
              description: 'Name of the resource',
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
          name: 'inventory-item',
          description: 'Inventory item resource',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Retrieve a list of inventory item given by resource group and vcenter name',
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
                  name: ['--vcenter', '-v'],
                  description: 'Name or ID of the vCenter that is managing this resource',
                  args: [
                    Arg(
                    name: 'vcente'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get details of a inventory item by inventory item name or id, resource-group and vcenter name',
              options: [

                Option(
                  name: ['--inventory-item', '-i'],
                  description: 'Name or ID of the inventory item',
                  args: [
                    Arg(
                    name: 'inventory-ite'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--vcenter', '-v'],
                  description: 'Name or ID of the vCenter that is managing this resource',
                  args: [
                    Arg(
                    name: 'vcente'
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
      name: 'virtual-network',
      description: 'Virtual network resource',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create virtual network resource',
          options: [

            Option(
              name: ['--custom-location', '-c'],
              description: 'Name or ID of the custom location that will manage this resource',
              args: [
                Arg(
                name: 'custom-locatio'
              )
              ]
            ),
            Option(
              name: ['--inventory-item', '-i'],
              description: 'Name or ID of the inventory item',
              args: [
                Arg(
                name: 'inventory-ite'
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
              description: 'Name of the resource',
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
              name: ['--vcenter', '-v'],
              description: 'Name or ID of the vCenter that is managing this resource',
              args: [
                Arg(
                name: 'vcente'
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
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete virtual network resource',
          options: [

            Option(
              name: '--force',
              description: 'Whether force delete or not'
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
              description: 'Name of the resource',
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Retrieve a list of virtual network of given resource group',
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
          description: 'Get details of a virtual network by id, resource-group, reource pool name or subscription',
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
              description: 'Name of the resource',
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
      name: 'vm',
      description: 'Vm resource',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create vm in vcenter from existing vm template',
          options: [

            Option(
              name: ['--custom-location', '-c'],
              description: 'Name or ID of the custom location that will manage this resource',
              args: [
                Arg(
                name: 'custom-locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource',
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
              name: '--admin-password',
              description: 'Admin password for the vm',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: '--admin-username',
              description: 'Admin username for the vm',
              args: [
                Arg(
                name: 'admin-usernam'
              )
              ]
            ),
            Option(
              name: '--cluster',
              description: 'Name or ID of the cluster for deploying the VM',
              args: [
                Arg(
                name: 'cluste'
              )
              ]
            ),
            Option(
              name: '--datastore',
              description: 'Name or ID of the datastore for deploying the VM',
              args: [
                Arg(
                name: 'datastor'
              )
              ]
            ),
            Option(
              name: '--disk',
              description: 'Disk overrides for the vm. Usage: --disk name=<> disk_size=<> disk_mode=<> controller_key=<> device-key=<> unit_number=<>',
              args: [
                Arg(
                name: 'dis'
              )
              ]
            ),
            Option(
              name: '--host',
              description: 'Name or ID of the host for deploying the VM',
              args: [
                Arg(
                name: 'hos'
              )
              ]
            ),
            Option(
              name: ['--inventory-item', '-i'],
              description: 'Name or ID of the inventory item',
              args: [
                Arg(
                name: 'inventory-ite'
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
              name: '--memory-size',
              description: 'Desired memory size in MBs for the vm',
              args: [
                Arg(
                name: 'memory-siz'
              )
              ]
            ),
            Option(
              name: '--nic',
              description: 'Network overrides for the vm. Usage: --nic name=<> network=<> nic-type=<> power-on-boot=<> allocation-method=<> ip-address=<> subnet-mask=<> device-key=<> gateway=',
              args: [
                Arg(
                name: 'ni'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--num-CPUs',
              description: 'Number of desired vCPUs for the vm',
              args: [
                Arg(
                name: 'num-CPU'
              )
              ]
            ),
            Option(
              name: '--num-cores-per-socket',
              description: 'Number of desired cores per socket for the vm',
              args: [
                Arg(
                name: 'num-cores-per-socke'
              )
              ]
            ),
            Option(
              name: '--resource-pool',
              description: 'Name or ID of the resource pool for deploying the vm',
              args: [
                Arg(
                name: 'resource-poo'
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
              name: ['--vcenter', '-v'],
              description: 'Name or ID of the vCenter that is managing this resource',
              args: [
                Arg(
                name: 'vcente'
              )
              ]
            ),
            Option(
              name: '--vm-template',
              description: 'Name or ID of the vm template for deploying the vm',
              args: [
                Arg(
                name: 'vm-templat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete vm resource',
          options: [

            Option(
              name: '--delete-from-host',
              description: 'Delete the VM from the VMware host',
              args: [
                Arg(
                name: 'delete-from-hos'
              )
              ]
            ),
            Option(
              name: '--delete-machine',
              description: 'Delete the parent Microsoft.HybridCompute Machine resource',
              args: [
                Arg(
                name: 'delete-machin'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Whether force delete or not',
              args: [
                Arg(
                name: 'forc'
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
              description: 'Name of the resource',
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Retrieve a list of vm of given resource group',
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
          name: 'restart',
          description: 'Restart vm resource',
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
              description: 'Name of the resource',
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
          name: 'show',
          description: 'Get details of a vm by id, resource-group, reource pool name or subscription',
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
              description: 'Name of the resource',
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
          description: 'Start vm resource',
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
              description: 'Name of the resource',
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
          description: 'Stop vm resource',
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
              description: 'Name of the resource',
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
              name: '--skip-shutdown',
              description: 'Skips shutdown and power-off immediately'
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
          description: 'Update vm resource',
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
              name: '--memory-size',
              description: 'Desired memory size in MBs for the vm',
              args: [
                Arg(
                name: 'memory-siz'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the resource',
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
              name: '--num-CPUs',
              description: 'Number of desired vCPUs for the vm',
              args: [
                Arg(
                name: 'num-CPU'
              )
              ]
            ),
            Option(
              name: '--num-cores-per-socket',
              description: 'Number of desired cores per socket for the vm',
              args: [
                Arg(
                name: 'num-cores-per-socke'
              )
              ]
            ),
            Option(
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
          name: 'disk',
          description: 'Vm disk',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add virtual disk to a virtual machine',
              options: [

                Option(
                  name: '--controller-key',
                  description: 'The controller key of the disk',
                  args: [
                    Arg(
                    name: 'controller-ke'
                  )
                  ]
                ),
                Option(
                  name: '--disk-size',
                  description: 'The disk size in GBs',
                  args: [
                    Arg(
                    name: 'disk-siz'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Disk',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--disk-mode',
                  description: 'The mode of the disk',
                  args: [
                    Arg(
                    name: 'disk-mod'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--unit-number',
                  description: 'The unit number of the disk',
                  args: [
                    Arg(
                    name: 'unit-numbe'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete virtual disks to a virtual machine',
              options: [

                Option(
                  name: '--disks',
                  description: 'Names of the Disks',
                  args: [
                    Arg(
                    name: 'disk'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
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
              description: 'Retrieve a list of vm disk from given resource group name and vm name',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get details of a vm disk by it\'s name, resource-group and vm name',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Disk',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update virtual disk to a virtual machine',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--controller-key',
                  description: 'The controller key of the disk',
                  args: [
                    Arg(
                    name: 'controller-ke'
                  )
                  ]
                ),
                Option(
                  name: '--device-key',
                  description: 'The device key for the disk',
                  args: [
                    Arg(
                    name: 'device-ke'
                  )
                  ]
                ),
                Option(
                  name: '--disk-mode',
                  description: 'The mode of the disk',
                  args: [
                    Arg(
                    name: 'disk-mod'
                  )
                  ]
                ),
                Option(
                  name: '--disk-size',
                  description: 'The disk size in GBs',
                  args: [
                    Arg(
                    name: 'disk-siz'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Disk',
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
                  name: '--unit-number',
                  description: 'The unit number of the disk',
                  args: [
                    Arg(
                    name: 'unit-numbe'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'extension',
          description: 'Manage vm extension with connectedvmware',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'The operation to create the extension',
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
                  name: '--name',
                  description: 'The name of the vm extension',
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
                  name: '--vm-name',
                  description: 'The name of the vm where the extension should be created or updated',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--auto-upgrade-minor',
                  description: 'Indicate whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true',
                  args: [
                    Arg(
                    name: 'auto-upgrade-minor',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--enable-auto-upgrade',
                  description: 'Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available',
                  args: [
                    Arg(
                    name: 'enable-auto-upgrade',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--force-update-tag',
                  description: 'How the extension handler should be forced to update even if the extension configuration has not changed',
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
                  name: '--protected-settings',
                  description: 'The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'protected-setting'
                  )
                  ]
                ),
                Option(
                  name: '--publisher',
                  description: 'The name of the extension handler publisher',
                  args: [
                    Arg(
                    name: 'publishe'
                  )
                  ]
                ),
                Option(
                  name: '--settings',
                  description: 'Json formatted public settings for the extension. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'setting'
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
                  name: '--type',
                  description: 'Specify the type of the extension; an example is "CustomScriptExtension"',
                  args: [
                    Arg(
                    name: 'typ'
                  )
                  ]
                ),
                Option(
                  name: '--type-handler-version',
                  description: 'Specifies the version of the script handler',
                  args: [
                    Arg(
                    name: 'type-handler-versio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'The operation to delete the extension',
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
                  name: '--name',
                  description: 'The name of the vm extension',
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
                ),
                Option(
                  name: '--vm-name',
                  description: 'The name of the vm where the extension should be deleted',
                  args: [
                    Arg(
                    name: 'vm-nam'
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
              description: 'The operation to get all extensions of a non-Azure vm',
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
                  name: '--vm-name',
                  description: 'The name of the vm containing the extension',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--expand',
                  description: 'The expand expression to apply on the operation',
                  args: [
                    Arg(
                    name: 'expan'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'The operation to get the extension',
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
                  name: '--name',
                  description: 'The name of the vm extension',
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
                  name: '--vm-name',
                  description: 'The name of the vm containing the extension',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'The operation to update the extension',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the vm extension',
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
                  name: '--vm-name',
                  description: 'The name of the vm where the extension should be created or updated',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--auto-upgrade-minor',
                  description: 'Indicate whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true',
                  args: [
                    Arg(
                    name: 'auto-upgrade-minor',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--enable-auto-upgrade',
                  description: 'Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available',
                  args: [
                    Arg(
                    name: 'enable-auto-upgrade',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--force-update-tag',
                  description: 'How the extension handler should be forced to update even if the extension configuration has not changed',
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
                  name: '--protected-settings',
                  description: 'The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'protected-setting'
                  )
                  ]
                ),
                Option(
                  name: '--publisher',
                  description: 'The name of the extension handler publisher',
                  args: [
                    Arg(
                    name: 'publishe'
                  )
                  ]
                ),
                Option(
                  name: '--settings',
                  description: 'Json formatted public settings for the extension. Expected value: json-string/json-file/@json-file',
                  args: [
                    Arg(
                    name: 'setting'
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
                  name: '--type',
                  description: 'Specify the type of the extension; an example is "CustomScriptExtension"',
                  args: [
                    Arg(
                    name: 'typ'
                  )
                  ]
                ),
                Option(
                  name: '--type-handler-version',
                  description: 'Specifies the version of the script handler',
                  args: [
                    Arg(
                    name: 'type-handler-versio'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'guest-agent',
          description: 'Vm guest agent',
          subcommands: [

            Subcommand(
              name: 'enable',
              description: 'Enable guest agent on the vm',
              options: [

                Option(
                  name: '--password',
                  description: 'Username password credentials to use for connecting to the VM',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--username',
                  description: 'Username to use for connecting to the vm',
                  args: [
                    Arg(
                    name: 'usernam'
                  )
                  ]
                ),
                Option(
                  name: '--vm-name',
                  description: 'Name of the VM',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--https-proxy',
                  description: 'HTTPS proxy server url for the VM',
                  args: [
                    Arg(
                    name: 'https-prox'
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
              description: 'Get details of a guest agent by guest agent name, resource-group and vm name',
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
                  name: '--vm-name',
                  description: 'Name of the VM',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'nic',
          description: 'Vm nic',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add virtual nic to a virtual machine',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the NIC',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--network',
                  description: 'Name or Id of the virtual network',
                  args: [
                    Arg(
                    name: 'networ'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--nic-type',
                  description: 'The nic type for the NIC',
                  args: [
                    Arg(
                    name: 'nic-typ'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--power-on-boot',
                  description: 'The power on boot option for the nic',
                  args: [
                    Arg(
                    name: 'power-on-boo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete virtual nic to a virtual machine',
              options: [

                Option(
                  name: '--nics',
                  description: 'Names of the NICs',
                  args: [
                    Arg(
                    name: 'nic'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
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
              description: 'Retrieve a list of vm nic from given resource group name and vm name',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get details of a vm nic by it\'s name, resource-group and vm name',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the NIC',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update virtual network interface of a virtual machine',
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
                  name: '--vm-name',
                  description: 'Name of the virtual machine',
                  args: [
                    Arg(
                    name: 'vm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--device-key',
                  description: 'The device key for the nic',
                  args: [
                    Arg(
                    name: 'device-ke'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the NIC',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--network',
                  description: 'Name or Id of the virtual network',
                  args: [
                    Arg(
                    name: 'networ'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--power-on-boot',
                  description: 'The power on boot option for the nic',
                  args: [
                    Arg(
                    name: 'power-on-boo'
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
      name: 'vm-template',
      description: 'Vm template resource',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create vm template resource',
          options: [

            Option(
              name: ['--custom-location', '-c'],
              description: 'Name or ID of the custom location that will manage this resource',
              args: [
                Arg(
                name: 'custom-locatio'
              )
              ]
            ),
            Option(
              name: ['--inventory-item', '-i'],
              description: 'Name or ID of the inventory item',
              args: [
                Arg(
                name: 'inventory-ite'
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
              description: 'Name of the resource',
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
              name: ['--vcenter', '-v'],
              description: 'Name or ID of the vCenter that is managing this resource',
              args: [
                Arg(
                name: 'vcente'
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
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete vm template resource',
          options: [

            Option(
              name: '--force',
              description: 'Whether force delete or not'
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
              description: 'Name of the resource',
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Retrieve a list of vm template of given resource group',
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
          description: 'Get details of a vm template by id, resource-group, reource pool name or subscription',
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
              description: 'Name of the resource',
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
    )
  ]
);
