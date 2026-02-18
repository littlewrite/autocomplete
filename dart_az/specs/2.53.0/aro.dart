// Auto-generated from TypeScript source: aro.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `aro` CLI
final FigSpec aroSpec = FigSpec(
  name: 'aro',
  description: 'Manage Azure Red Hat OpenShift clusters',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a cluster',
      options: [

        Option(
          name: '--master-subnet',
          description: 'Name or ID of master vnet subnet. If name is supplied, --vnet must be supplied',
          args: [
            Arg(
            name: 'master-subne'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of cluster',
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
          name: '--worker-subnet',
          description: 'Name or ID of worker vnet subnet. If name is supplied, --vnet must be supplied',
          args: [
            Arg(
            name: 'worker-subne'
          )
          ]
        ),
        Option(
          name: '--apiserver-visibility',
          description: 'API server visibility',
          args: [
            Arg(
            name: 'apiserver-visibility',
            suggestions: [

              FigSuggestion(name: 'Private'),
              FigSuggestion(name: 'Public')
            ]
          )
          ]
        ),
        Option(
          name: '--client-id',
          description: 'Client ID of cluster service principal',
          args: [
            Arg(
            name: 'client-i'
          )
          ]
        ),
        Option(
          name: '--client-secret',
          description: 'Client secret of cluster service principal',
          args: [
            Arg(
            name: 'client-secre'
          )
          ]
        ),
        Option(
          name: '--cluster-resource-group',
          description: 'Resource group of cluster',
          args: [
            Arg(
            name: 'cluster-resource-grou'
          )
          ]
        ),
        Option(
          name: '--disk-encryption-set',
          description: 'ResourceID of the DiskEncryptionSet to be used for master and worker VMs',
          args: [
            Arg(
            name: 'disk-encryption-se'
          )
          ]
        ),
        Option(
          name: '--domain',
          description: 'Domain of cluster',
          args: [
            Arg(
            name: 'domai'
          )
          ]
        ),
        Option(
          name: ['--fips-validated-modules', '--fips'],
          description: 'Use FIPS validated cryptography modules',
          args: [
            Arg(
            name: 'fips-validated-modules',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--ingress-visibility',
          description: 'Ingress visibility',
          args: [
            Arg(
            name: 'ingress-visibility',
            suggestions: [

              FigSuggestion(name: 'Private'),
              FigSuggestion(name: 'Public')
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
          name: ['--master-encryption-at-host', '--master-enc-host'],
          description: 'Encryption at host flag for master VMs'
        ),
        Option(
          name: '--master-vm-size',
          description: 'Size of master VMs',
          args: [
            Arg(
            name: 'master-vm-siz'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--outbound-type',
          description: 'Outbound type of cluster. Must be "Loadbalancer" (default) or "UserDefinedRouting"',
          args: [
            Arg(
            name: 'outbound-typ'
          )
          ]
        ),
        Option(
          name: '--pod-cidr',
          description: 'CIDR of pod network. Must be a minimum of /18 or larger',
          args: [
            Arg(
            name: 'pod-cid'
          )
          ]
        ),
        Option(
          name: '--pull-secret',
          description: 'Pull secret of cluster',
          args: [
            Arg(
            name: 'pull-secre'
          )
          ]
        ),
        Option(
          name: '--service-cidr',
          description: 'CIDR of service network. Must be a minimum of /18 or larger',
          args: [
            Arg(
            name: 'service-cid'
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
          name: '--version',
          description: 'OpenShift version to use for cluster creation',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        ),
        Option(
          name: '--vnet',
          description: 'Name or ID of vnet. If name is supplied, --vnet-resource-group must be supplied',
          args: [
            Arg(
            name: 'vne'
          )
          ]
        ),
        Option(
          name: '--vnet-resource-group',
          description: 'Name of vnet resource group',
          args: [
            Arg(
            name: 'vnet-resource-grou'
          )
          ]
        ),
        Option(
          name: '--worker-count',
          description: 'Count of worker VMs',
          args: [
            Arg(
            name: 'worker-coun'
          )
          ]
        ),
        Option(
          name: ['--worker-encryption-at-host', '--worker-enc-host'],
          description: 'Encryption at host flag for worker VMs'
        ),
        Option(
          name: '--worker-vm-disk-size-gb',
          description: 'Disk size in GB of worker VMs',
          args: [
            Arg(
            name: 'worker-vm-disk-size-g'
          )
          ]
        ),
        Option(
          name: '--worker-vm-size',
          description: 'Size of worker VMs',
          args: [
            Arg(
            name: 'worker-vm-siz'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of cluster',
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
      name: 'get-admin-kubeconfig',
      description: 'List admin kubeconfig of a cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of cluster',
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
          name: ['--file', '-f'],
          description: 'Path to the file where kubeconfig should be saved. Default: kubeconfig in local directory',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-versions',
      description: 'List versions available for installation',
      options: [

        Option(
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List clusters',
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
      name: 'list-credentials',
      description: 'List credentials of a cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of cluster',
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
      name: 'show',
      description: 'Get the details of a cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of cluster',
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
      description: 'Update a cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of cluster',
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
          name: '--client-id',
          description: 'Client ID of cluster service principal',
          args: [
            Arg(
            name: 'client-i'
          )
          ]
        ),
        Option(
          name: '--client-secret',
          description: 'Client secret of cluster service principal',
          args: [
            Arg(
            name: 'client-secre'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--refresh-credentials',
          description: 'Refresh cluster application credentials'
        )
      ]
    ),
    Subcommand(
      name: 'validate',
      description: 'Validate permissions required to create a cluster',
      options: [

        Option(
          name: '--master-subnet',
          description: 'Name or ID of master vnet subnet. If name is supplied, --vnet must be supplied',
          args: [
            Arg(
            name: 'master-subne'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of cluster',
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
          name: '--worker-subnet',
          description: 'Name or ID of worker vnet subnet. If name is supplied, --vnet must be supplied',
          args: [
            Arg(
            name: 'worker-subne'
          )
          ]
        ),
        Option(
          name: '--client-id',
          description: 'Client ID of cluster service principal',
          args: [
            Arg(
            name: 'client-i'
          )
          ]
        ),
        Option(
          name: '--client-secret',
          description: 'Client secret of cluster service principal',
          args: [
            Arg(
            name: 'client-secre'
          )
          ]
        ),
        Option(
          name: '--cluster-resource-group',
          description: 'Resource group of cluster',
          args: [
            Arg(
            name: 'cluster-resource-grou'
          )
          ]
        ),
        Option(
          name: '--disk-encryption-set',
          description: 'ResourceID of the DiskEncryptionSet to be used for master and worker VMs',
          args: [
            Arg(
            name: 'disk-encryption-se'
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
          name: '--pod-cidr',
          description: 'CIDR of pod network. Must be a minimum of /18 or larger',
          args: [
            Arg(
            name: 'pod-cid'
          )
          ]
        ),
        Option(
          name: '--service-cidr',
          description: 'CIDR of service network. Must be a minimum of /18 or larger',
          args: [
            Arg(
            name: 'service-cid'
          )
          ]
        ),
        Option(
          name: '--version',
          description: 'OpenShift version to use for cluster creation',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        ),
        Option(
          name: '--vnet',
          description: 'Name or ID of vnet. If name is supplied, --vnet-resource-group must be supplied',
          args: [
            Arg(
            name: 'vne'
          )
          ]
        ),
        Option(
          name: '--vnet-resource-group',
          description: 'Name of vnet resource group',
          args: [
            Arg(
            name: 'vnet-resource-grou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'wait',
      description: 'Wait for a cluster to reach a desired state',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of cluster',
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
);
