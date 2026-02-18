// Auto-generated from TypeScript source: offazure.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `offazure` CLI
final FigSpec offazureSpec = FigSpec(
  name: 'offazure',
  description: 'Manage on-premise resources for migrate',
  subcommands: [

    Subcommand(
      name: 'hyperv',
      description: 'Manage Hyper-V on-premise resources',
      subcommands: [

        Subcommand(
          name: 'cluster',
          description: 'Manage Hyper-V cluster',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Get all clusters on the on-premise site',
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
                  name: '--site-name',
                  description: 'Name of the Hyper-V Site',
                  args: [
                    Arg(
                    name: 'site-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a Hyper-V cluster',
              options: [

                Option(
                  name: ['--cluster-name', '--name', '-n'],
                  description: 'Name of the cluster',
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
                  name: '--site-name',
                  description: 'Name of the Hyper-V Site',
                  args: [
                    Arg(
                    name: 'site-nam'
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
          description: 'Manage Hyper-V host',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Get all hosts on the on-premise site',
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
                  name: '--site-name',
                  description: 'Name of the Hyper-V Site',
                  args: [
                    Arg(
                    name: 'site-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a Hyper-V host',
              options: [

                Option(
                  name: ['--host-name', '--name', '-n'],
                  description: 'Name of the host',
                  args: [
                    Arg(
                    name: 'host-nam'
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
                  name: '--site-name',
                  description: 'Name of the Hyper-V Site',
                  args: [
                    Arg(
                    name: 'site-nam'
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
          name: 'machine',
          description: 'Manage Hyper-V machine',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all machines on the on-premise site',
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
                  name: '--site-name',
                  description: 'Name of the Hyper-V Site',
                  args: [
                    Arg(
                    name: 'site-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a machine',
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
                  name: ['--machine-name', '--name', '-n'],
                  description: 'Name of the machine',
                  args: [
                    Arg(
                    name: 'machine-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--site-name',
                  description: 'Name of the Hyper-V Site',
                  args: [
                    Arg(
                    name: 'site-nam'
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
          name: 'run-as-account',
          description: 'Manage Hyper-V run-as-account',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all run-as-accounts on the on-premise site',
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
                  name: '--site-name',
                  description: 'Name of the Hyper-V Site',
                  args: [
                    Arg(
                    name: 'site-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a run-as-account',
              options: [

                Option(
                  name: ['--account-name', '--name', '-n'],
                  description: 'Name of the run-as-account',
                  args: [
                    Arg(
                    name: 'account-nam'
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
                  name: '--site-name',
                  description: 'Name of the Hyper-V Site',
                  args: [
                    Arg(
                    name: 'site-nam'
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
          name: 'site',
          description: 'Manage Hyper-V site',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Hyper-V site',
              options: [

                Option(
                  name: ['--site-name', '--name', '-n'],
                  description: 'Name of the Hyper-V Site',
                  args: [
                    Arg(
                    name: 'site-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--agent',
                  description: 'On-premises agent details',
                  args: [
                    Arg(
                    name: 'agen'
                  )
                  ]
                ),
                Option(
                  name: '--appliance-name',
                  description: 'Name of the appliance',
                  args: [
                    Arg(
                    name: 'appliance-nam'
                  )
                  ]
                ),
                Option(
                  name: '--identity',
                  description: 'Service principal identity details used by agent for communication to the service',
                  args: [
                    Arg(
                    name: 'identit'
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
                  name: '--solution-id',
                  description: 'ARM ID of migration hub solution for SDS',
                  args: [
                    Arg(
                    name: 'solution-i'
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
              description: 'Delete a Hyper-V site',
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
                  name: ['--site-name', '--name', '-n'],
                  description: 'Name of the Hyper-V Site',
                  args: [
                    Arg(
                    name: 'site-nam'
                  )
                  ]
                ),
                Option(
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
              name: 'show',
              description: 'Get the details of a site',
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
                  name: ['--site-name', '--name', '-n'],
                  description: 'Name of the Hyper-V Site',
                  args: [
                    Arg(
                    name: 'site-nam'
                  )
                  ]
                ),
                Option(
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
    ),
    Subcommand(
      name: 'vmware',
      description: 'Manage VMware on-premise resources',
      subcommands: [

        Subcommand(
          name: 'machine',
          description: 'Manage VMware machine',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all machines on the on-premise site',
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
                  name: '--site-name',
                  description: 'Name of the Hyper-V Site',
                  args: [
                    Arg(
                    name: 'site-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a machine',
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
                  name: ['--machine-name', '--name', '-n'],
                  description: 'Name of the machine',
                  args: [
                    Arg(
                    name: 'machine-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--site-name',
                  description: 'Name of the VMware site',
                  args: [
                    Arg(
                    name: 'site-nam'
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
          name: 'run-as-account',
          description: 'Manage VMware run-as-account',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all run-as-accounts on the on-premise site',
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
                  name: '--site-name',
                  description: 'Name of the VMware site',
                  args: [
                    Arg(
                    name: 'site-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a run-as-account',
              options: [

                Option(
                  name: ['--account-name', '--name', '-n'],
                  description: 'Name of the run-as-account',
                  args: [
                    Arg(
                    name: 'account-nam'
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
                  name: '--site-name',
                  description: 'Name of the VMware site',
                  args: [
                    Arg(
                    name: 'site-nam'
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
          name: 'site',
          description: 'Manage VMware site',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a site for VMware resources',
              options: [

                Option(
                  name: ['--site-name', '--name', '-n'],
                  description: 'Name of the VMware site',
                  args: [
                    Arg(
                    name: 'site-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--agent',
                  description: 'On-premises agent details',
                  args: [
                    Arg(
                    name: 'agen'
                  )
                  ]
                ),
                Option(
                  name: '--appliance-name',
                  description: 'Name of the appliance',
                  args: [
                    Arg(
                    name: 'appliance-nam'
                  )
                  ]
                ),
                Option(
                  name: '--identity',
                  description: 'Service principal identity details used by agent for communication to the service',
                  args: [
                    Arg(
                    name: 'identit'
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
                  name: '--solution-id',
                  description: 'ARM ID of migration hub solution for SDS',
                  args: [
                    Arg(
                    name: 'solution-i'
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
              description: 'Delete a VMware site',
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
                  name: ['--site-name', '--name', '-n'],
                  description: 'Name of the VMware site',
                  args: [
                    Arg(
                    name: 'site-nam'
                  )
                  ]
                ),
                Option(
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
              name: 'show',
              description: 'Get the details of a VMware site',
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
                  name: ['--site-name', '--name', '-n'],
                  description: 'Name of the VMware site',
                  args: [
                    Arg(
                    name: 'site-nam'
                  )
                  ]
                ),
                Option(
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
          description: 'Manage VMware vCenter',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all vCenters on the on-premise site',
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
                  name: '--site-name',
                  description: 'Name of the VMware site',
                  args: [
                    Arg(
                    name: 'site-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a vCenter',
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
                  name: ['--vcenter-name', '--name', '-n'],
                  description: 'VCenter ARM name',
                  args: [
                    Arg(
                    name: 'vcenter-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--site-name',
                  description: 'Name of the VMware site',
                  args: [
                    Arg(
                    name: 'site-nam'
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
    )
  ]
);
