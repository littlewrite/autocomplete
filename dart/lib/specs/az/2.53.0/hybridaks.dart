// Auto-generated from TypeScript source: hybridaks.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `hybridaks` CLI
final FigSpec hybridaksSpec = FigSpec(
  name: 'hybridaks',
  description: 'Manage hybridaks provisioned clusters',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Creates the Hybrid AKS provisioned cluster',
      options: [

        Option(
          name: '--custom-location',
          description: 'Name or ID of the custom location to use for the provisioned cluster',
          args: [
            Arg(
            name: 'custom-locatio'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the provisioned cluster',
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
          name: ['--aad-admin-group-object-ids', '-i'],
          description: 'Comma-separated list of aad group object IDs that will be set as cluster admin on the provisioned cluster',
          args: [
            Arg(
            name: 'aad-admin-group-object-id'
          )
          ]
        ),
        Option(
          name: ['--addon', '-a'],
          description: 'Enable addon. Multiple addons can be added by specifying this flag. Usage: --addon name=addon-name [config_key=config_value ...]',
          args: [
            Arg(
            name: 'addo'
          )
          ]
        ),
        Option(
          name: '--arc-agent-auto-upgrade',
          description: 'Arc Agent Auto Upgrade',
          args: [
            Arg(
            name: 'arc-agent-auto-upgrad'
          )
          ]
        ),
        Option(
          name: '--arc-agent-version',
          description: 'Arc Agent Version',
          args: [
            Arg(
            name: 'arc-agent-versio'
          )
          ]
        ),
        Option(
          name: '--control-plane-count',
          description: 'Number of control plane nodes',
          args: [
            Arg(
            name: 'control-plane-coun'
          )
          ]
        ),
        Option(
          name: '--control-plane-ip',
          description: 'API server IP Address for the control plane',
          args: [
            Arg(
            name: 'control-plane-i'
          )
          ]
        ),
        Option(
          name: '--control-plane-vm-size',
          description: 'VM Size of control plane',
          args: [
            Arg(
            name: 'control-plane-vm-siz'
          )
          ]
        ),
        Option(
          name: '--generate-ssh-keys',
          description: 'Generate ssh key-pair if not present'
        ),
        Option(
          name: ['--kubernetes-version', '-k'],
          description: 'The kubernetes version of the provisioned cluster',
          args: [
            Arg(
            name: 'kubernetes-versio'
          )
          ]
        ),
        Option(
          name: '--load-balancer-count',
          description: 'Number of load balancer nodes',
          args: [
            Arg(
            name: 'load-balancer-coun'
          )
          ]
        ),
        Option(
          name: '--load-balancer-sku',
          description: 'Type of load balancer. Options: "unstacked-haproxy" | "stacked-kube-vip" | "stacked-metallb" | "unmanaged"',
          args: [
            Arg(
            name: 'load-balancer-sk'
          )
          ]
        ),
        Option(
          name: '--load-balancer-vm-size',
          description: 'VM Size of load balancer',
          args: [
            Arg(
            name: 'load-balancer-vm-siz'
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
          name: ['--no-ssh-key', '-x'],
          description: 'Do not use inject any public ssh key'
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: ['--node-count', '-c'],
          description: 'Number of nodes to be created in the nodepool',
          args: [
            Arg(
            name: 'node-coun'
          )
          ]
        ),
        Option(
          name: '--node-vm-size',
          description: 'VM Size of the nodes in the nodepool',
          args: [
            Arg(
            name: 'node-vm-siz'
          )
          ]
        ),
        Option(
          name: '--pod-cidr',
          description: 'The CIDR notation IP ranges from which to assign pod IPs',
          args: [
            Arg(
            name: 'pod-cid'
          )
          ]
        ),
        Option(
          name: '--service-cidr',
          description: 'A CIDR notation IP range from which to assign service cluster IPs',
          args: [
            Arg(
            name: 'service-cid'
          )
          ]
        ),
        Option(
          name: '--ssh-key-value',
          description: 'Path to the ssh public key to be injected into the control plane',
          args: [
            Arg(
            name: 'ssh-key-valu'
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
          name: '--vnet-ids',
          description: 'ARM resource ID(s) of the HybridAKS VNets',
          args: [
            Arg(
            name: 'vnet-id'
          )
          ]
        ),
        Option(
          name: ['--zones', '-z'],
          description: 'Comma-separated list of availability zones where control plane nodes will be placed',
          args: [
            Arg(
            name: 'zone'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Deletes the Hybrid AKS provisioned cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the provisioned cluster',
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
      name: 'get-upgrades',
      description: 'Get the upgrade versions available for the Hybrid AKS provisioned cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the provisioned cluster',
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
      name: 'list',
      description: 'Lists the Hybrid AKS provisioned cluster in a resource group or in a subscription',
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
      name: 'notice',
      description: 'Output NOTICE file to user specified filepath',
      options: [

        Option(
          name: '--output-filepath',
          description: 'Output filepath for NOTICE file',
          args: [
            Arg(
            name: 'output-filepat'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'proxy',
      description: 'Gets access to a connected Hybrid AKS provisioned cluster',
      options: [

        Option(
          name: ['--file', '-f'],
          description: 'Kubernetes configuration file to update. If not provided, updates the file \'~/.kube/config\'. Use \'-\' to print YAML to stdout instead',
          args: [
            Arg(
            name: 'fil'
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
          name: '--kube-context',
          description: 'If specified, overwrite the default context name',
          args: [
            Arg(
            name: 'kube-contex'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the hybrid AKS provisioned cluster',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--port',
          description: 'Port used for accessing connected cluster',
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
          name: '--token',
          description: 'Service account token to use to authenticate to the kubernetes cluster',
          args: [
            Arg(
            name: 'toke'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Gets the Hybrid AKS provisioned cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the provisioned cluster',
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
      description: 'Updates the Hybrid AKS provisioned cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the provisioned cluster',
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
          name: ['--aad-admin-group-object-ids', '-i'],
          description: 'Comma-separated list of aad group object IDs that will be set as cluster admin on the provisioned cluster',
          args: [
            Arg(
            name: 'aad-admin-group-object-id'
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
      name: 'upgrade',
      description: 'Upgrades the Hybrid AKS provisioned cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the provisioned cluster',
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
          name: ['--kubernetes-version', '-k'],
          description: 'The kubernetes version of the provisioned cluster',
          args: [
            Arg(
            name: 'kubernetes-versio'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--node-image-only',
          description: 'Flag to upgrade only the node image'
        ),
        Option(
          name: '--yes',
          description: 'Flag to disable confirmation prompts'
        )
      ]
    ),
    Subcommand(
      name: 'nodepool',
      description: 'Manage nodepools in a hybridaks provisioned cluster',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Adds a nodepool in the Hybrid AKS provisioned cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'Name of the provisioned cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the nodepool',
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
            ),
            Option(
              name: ['--node-count', '-c'],
              description: 'Number of nodes to be created in the nodepool',
              args: [
                Arg(
                name: 'node-coun'
              )
              ]
            ),
            Option(
              name: '--node-vm-size',
              description: 'VM Size of the nodes in the nodepool',
              args: [
                Arg(
                name: 'node-vm-siz'
              )
              ]
            ),
            Option(
              name: '--os-type',
              description: 'OS Type for the nodes in the nodepool. Options: "Linux" | "Windows"',
              args: [
                Arg(
                name: 'os-typ'
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
              description: 'Comma-separated list of availability zones where agent nodes will be placed',
              args: [
                Arg(
                name: 'zone'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes the nodepool in the Hybrid AKS provisioned cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'Name of the provisioned cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the nodepool',
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
          description: 'Lists all the nodepools in the Hybrid AKS provisioned cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'Name of the provisioned cluster',
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
          name: 'scale',
          description: 'Scales the nodepool in the Hybrid AKS provisioned cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'Name of the provisioned cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the nodepool',
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
              name: ['--node-count', '-c'],
              description: 'Number of nodes to scale to in the nodepool',
              args: [
                Arg(
                name: 'node-coun'
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
          description: 'Gets the nodepool in the Hybrid AKS provisioned cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'Name of the provisioned cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the nodepool',
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
      name: 'vnet',
      description: 'Manage virtual networks for hybridaks',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates the Hybrid AKS virtual network',
          options: [

            Option(
              name: '--custom-location',
              description: 'Name or ID of the custom location to use for the virtual network',
              args: [
                Arg(
                name: 'custom-locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the virtual network',
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
              name: '--aods-vnet-id',
              description: 'ID of the network for AODS Infrastructure',
              args: [
                Arg(
                name: 'aods-vnet-i'
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
              name: '--moc-group',
              description: 'Name of the MOC group containing the MOC network for HCI Infrastructure',
              args: [
                Arg(
                name: 'moc-grou'
              )
              ]
            ),
            Option(
              name: '--moc-location',
              description: 'Name of the MOC location containing the MOC group with the network for HCI Infrastructure',
              args: [
                Arg(
                name: 'moc-locatio'
              )
              ]
            ),
            Option(
              name: '--moc-vnet-name',
              description: 'Name of the MOC network for HCI Infrastructure',
              args: [
                Arg(
                name: 'moc-vnet-nam'
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
              name: '--vsphere-segment-name',
              description: 'Name of the VSphere segment for VMware Infrastructure',
              args: [
                Arg(
                name: 'vsphere-segment-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes the Hybrid AKS virtual network',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the virtual network',
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
          description: 'Lists the Hybrid AKS virtual networks by resource group or subscription',
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
          description: 'Gets the Hybrid AKS virtual network',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the virtual network',
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
    )
  ]
);
