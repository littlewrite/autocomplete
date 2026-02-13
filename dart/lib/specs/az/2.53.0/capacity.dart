// Auto-generated from TypeScript source: capacity.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `capacity` CLI
final FigSpec capacitySpec = FigSpec(
  name: 'capacity',
  description: 'Manage capacity',
  subcommands: [

    Subcommand(
      name: 'reservation',
      description: 'Manage capacity reservation',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create capacity reservation',
          options: [

            Option(
              name: ['--capacity-reservation-group', '-c'],
              description: 'The name of the capacity reservation group',
              args: [
                Arg(
                name: 'capacity-reservation-grou'
              )
              ]
            ),
            Option(
              name: ['--capacity-reservation-name', '-n'],
              description: 'The name of the capacity reservation',
              args: [
                Arg(
                name: 'capacity-reservation-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--sku', '-s'],
              description: 'The SKU of the resource for which capacity needs be reserved. Currently VM Skus with the capability called "CapacityReservationSupported" set to true are supported. Refer to List Microsoft.Compute SKUs in a region (https://docs.microsoft.com/rest/api/compute/resourceskus/list) for supported values',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--capacity',
              description: 'Specify the number of virtual machines in the scale set',
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
              name: ['--zone', '-z'],
              description: 'Availability Zone to use for this capacity reservation. The zone has to be single value and also should be part for the list of zones specified during the capacity reservation group creation. If not provided, the reservation supports only non-zonal deployments. If provided, enforces VM/VMSS using this capacity reservation to be in same zone',
              args: [
                Arg(
                name: 'zone',
                suggestions: [

                  FigSuggestion(name: '1'),
                  FigSuggestion(name: '2'),
                  FigSuggestion(name: '3')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete operation to delete a capacity reservation. This operation is allowed only when all the associated resources are disassociated from the capacity reservation. Please refer to https://aka.ms/CapacityReservation for more details',
          options: [

            Option(
              name: [
                '--capacity-reservation-group-name',
                '--capacity-reservation-group',
                '-c',
              ],
              description: 'The name of the capacity reservation group',
              args: [
                Arg(
                name: 'capacity-reservation-group-nam'
              )
              ]
            ),
            Option(
              name: ['--capacity-reservation-name', '--name', '-n'],
              description: 'The name of the capacity reservation',
              args: [
                Arg(
                name: 'capacity-reservation-nam'
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
          name: 'list',
          description: 'List all of the capacity reservations in the specified capacity reservation group. Use the nextLink property in the response to get the next page of capacity reservations',
          options: [

            Option(
              name: [
                '--capacity-reservation-group-name',
                '--capacity-reservation-group',
                '-c',
              ],
              description: 'The name of the capacity reservation group',
              args: [
                Arg(
                name: 'capacity-reservation-group-nam'
              )
              ]
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
          description: 'Show capacity reservation',
          options: [

            Option(
              name: ['--capacity-reservation-group', '-c'],
              description: 'The name of the capacity reservation group',
              args: [
                Arg(
                name: 'capacity-reservation-grou'
              )
              ]
            ),
            Option(
              name: ['--capacity-reservation-name', '-n'],
              description: 'The name of the capacity reservation',
              args: [
                Arg(
                name: 'capacity-reservation-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--instance-view', '-i'],
              description: 'Retrieve a snapshot of the runtime properties of the capacity reservation that is managed by the platform and can change outside of control plane operations',
              args: [
                Arg(
                name: 'instance-vie'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update capacity reservation',
          options: [

            Option(
              name: ['--capacity-reservation-group', '-c'],
              description: 'The name of the capacity reservation group',
              args: [
                Arg(
                name: 'capacity-reservation-grou'
              )
              ]
            ),
            Option(
              name: ['--capacity-reservation-name', '-n'],
              description: 'The name of the capacity reservation',
              args: [
                Arg(
                name: 'capacity-reservation-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--capacity',
              description: 'Specify the number of virtual machines in the scale set',
              args: [
                Arg(
                name: 'capacit'
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
          name: 'group',
          description: 'Manage capacity reservation group',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create capacity reservation group',
              options: [

                Option(
                  name: ['--capacity-reservation-group', '-n'],
                  description: 'The name of the capacity reservation group',
                  args: [
                    Arg(
                    name: 'capacity-reservation-grou'
                  )
                  ]
                ),
                Option(
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
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: ['--zones', '-z'],
                  description: 'Availability Zones to use for this capacity reservation group. If not provided, the group supports only regional resources in the region. If provided, enforces each capacity reservation in the group to be in one of the zones',
                  args: [
                    Arg(
                    name: 'zones',
                    suggestions: [

                      FigSuggestion(name: '1'),
                      FigSuggestion(name: '2'),
                      FigSuggestion(name: '3')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete operation to delete a capacity reservation group. This operation is allowed only if all the associated resources are disassociated from the reservation group and all capacity reservations under the reservation group have also been deleted. Please refer to https://aka.ms/CapacityReservation for more details',
              options: [

                Option(
                  name: [
                    '--capacity-reservation-group-name',
                    '--capacity-reservation-group',
                    '-n',
                  ],
                  description: 'The name of the capacity reservation group',
                  args: [
                    Arg(
                    name: 'capacity-reservation-group-nam'
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
              description: 'List the capacity reservation groups',
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
                  name: '--vm-instance',
                  description: 'Retrieve the Virtual Machine Instance which are associated to capacity reservation group in the response',
                  args: [
                    Arg(
                    name: 'vm-instanc'
                  )
                  ]
                ),
                Option(
                  name: '--vmss-instance',
                  description: 'Retrieve the ScaleSet VM Instance which are associated to capacity reservation group in the response',
                  args: [
                    Arg(
                    name: 'vmss-instanc'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show capacity reservation group',
              options: [

                Option(
                  name: ['--capacity-reservation-group', '-n'],
                  description: 'The name of the capacity reservation group',
                  args: [
                    Arg(
                    name: 'capacity-reservation-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--instance-view', '-i'],
                  description: 'Retrieve the list of instance views of the capacity reservations under the capacity reservation group which is a snapshot of the runtime properties of a capacity reservation that is managed by the platform and can change outside of control plane operations',
                  args: [
                    Arg(
                    name: 'instance-vie'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update capacity reservation group',
              options: [

                Option(
                  name: ['--capacity-reservation-group', '-n'],
                  description: 'The name of the capacity reservation group',
                  args: [
                    Arg(
                    name: 'capacity-reservation-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
        )
      ]
    )
  ]
);
