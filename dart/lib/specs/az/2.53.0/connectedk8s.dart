// Auto-generated from TypeScript source: connectedk8s.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `connectedk8s` CLI
final FigSpec connectedk8sSpec = FigSpec(
  name: 'connectedk8s',
  description: 'Commands to manage connected kubernetes clusters',
  subcommands: [

    Subcommand(
      name: 'connect',
      description: 'Onboard a connected kubernetes cluster to azure',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the connected cluster',
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
          name: '--azure-hybrid-benefit',
          description: 'Flag to enable/disable Azure Hybrid Benefit feature',
          args: [
            Arg(
            name: 'azure-hybrid-benefit',
            suggestions: [

              FigSuggestion(name: 'False'),
              FigSuggestion(name: 'NotApplicable'),
              FigSuggestion(name: 'True')
            ]
          )
          ]
        ),
        Option(
          name: '--container-log-path',
          description: 'Override the default container log path to enable fluent-bit logging',
          args: [
            Arg(
            name: 'container-log-pat'
          )
          ]
        ),
        Option(
          name: '--correlation-id',
          description: 'A guid that is used to internally track the source of cluster onboarding. Please do not modify it unless advised',
          args: [
            Arg(
            name: 'correlation-i'
          )
          ]
        ),
        Option(
          name: ['--custom-ca-cert', '--proxy-cert'],
          description: 'Path to the certificate file for proxy or custom Certificate Authority',
          args: [
            Arg(
            name: 'custom-ca-cer'
          )
          ]
        ),
        Option(
          name: '--custom-locations-oid',
          description: 'OID of \'custom-locations\' app',
          args: [
            Arg(
            name: 'custom-locations-oi'
          )
          ]
        ),
        Option(
          name: '--disable-auto-upgrade',
          description: 'Flag to disable auto upgrade of arc agents'
        ),
        Option(
          name: '--distribution',
          description: 'The Kubernetes distribution which will be running on this connected cluster',
          args: [
            Arg(
            name: 'distribution',
            suggestions: [

              FigSuggestion(name: 'aks'),
              FigSuggestion(name: 'aks_edge_k3s'),
              FigSuggestion(name: 'aks_edge_k8s'),
              FigSuggestion(name: 'aks_engine'),
              FigSuggestion(name: 'aks_management'),
              FigSuggestion(name: 'aks_workload'),
              FigSuggestion(name: 'canonical'),
              FigSuggestion(name: 'capz'),
              FigSuggestion(name: 'eks'),
              FigSuggestion(name: 'generic'),
              FigSuggestion(name: 'gke'),
              FigSuggestion(name: 'k3s'),
              FigSuggestion(name: 'karbon'),
              FigSuggestion(name: 'kind'),
              FigSuggestion(name: 'minikube'),
              FigSuggestion(name: 'openshift'),
              FigSuggestion(name: 'rancher_rke'),
              FigSuggestion(name: 'tkg')
            ]
          )
          ]
        ),
        Option(
          name: '--distribution-version',
          description: 'The Kubernetes distribution version of the connected cluster',
          args: [
            Arg(
            name: 'distribution-versio'
          )
          ]
        ),
        Option(
          name: '--enable-private-link',
          description: 'Flag to enable/disable private link support on a connected cluster resource. Allowed values: false, true',
          args: [
            Arg(
            name: 'enable-private-link',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--infrastructure',
          description: 'The infrastructure on which the Kubernetes cluster represented by this connected cluster will be running on',
          args: [
            Arg(
            name: 'infrastructure',
            suggestions: [

              FigSuggestion(name: 'LTSCWindows 10 Enterprise LTSC'),
              FigSuggestion(name: 'Windows 10 Enterprise'),
              FigSuggestion(name: 'Windows 10 Enterprise LTSC 2019'),
              FigSuggestion(name: 'Windows 10 Enterprise LTSC 2021'),
              FigSuggestion(name: 'Windows 10 Enterprise N'),
              FigSuggestion(name: 'Windows 10 Enterprise N LTSC 2019'),
              FigSuggestion(name: 'Windows 10 Enterprise N LTSC 2021'),
              FigSuggestion(name: 'Windows 10 IoT Enterprise'),
              FigSuggestion(name: 'Windows 10 IoT Enterprise LTSC 2019'),
              FigSuggestion(name: 'Windows 10 IoT Enterprise LTSC 2021'),
              FigSuggestion(name: 'Windows 10 Pro'),
              FigSuggestion(name: 'Windows 11 Enterprise'),
              FigSuggestion(name: 'Windows 11 Enterprise N'),
              FigSuggestion(name: 'Windows 11 IoT Enterprise'),
              FigSuggestion(name: 'Windows 11 Pro'),
              FigSuggestion(name: 'Windows Server 2019'),
              FigSuggestion(name: 'Windows Server 2019 Datacenter'),
              FigSuggestion(name: 'Windows Server 2019 Standard'),
              FigSuggestion(name: 'Windows Server 2022'),
              FigSuggestion(name: 'Windows Server 2022 Datacenter'),
              FigSuggestion(name: 'Windows Server 2022 Standard'),
              FigSuggestion(name: 'aws'),
              FigSuggestion(name: 'azure'),
              FigSuggestion(name: 'azure_stack_edge'),
              FigSuggestion(name: 'azure_stack_hci'),
              FigSuggestion(name: 'azure_stack_hub'),
              FigSuggestion(name: 'gcp'),
              FigSuggestion(name: 'generic'),
              FigSuggestion(name: 'vsphere'),
              FigSuggestion(name: 'windows_server')
            ]
          )
          ]
        ),
        Option(
          name: '--kube-config',
          description: 'Path to the kube config file',
          args: [
            Arg(
            name: 'kube-confi'
          )
          ]
        ),
        Option(
          name: '--kube-context',
          description: 'Kubconfig context from current machine',
          args: [
            Arg(
            name: 'kube-contex'
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
          name: '--onboarding-timeout',
          description: 'Time required (in seconds) for the arc-agent pods to be installed on the kubernetes cluster. Override this value if the hardware/network constraints on your cluster requires more time for installing the arc-agent pods',
          args: [
            Arg(
            name: 'onboarding-timeou'
          )
          ]
        ),
        Option(
          name: ['--private-link-scope-resource-id', '--pls-arm-id'],
          description: 'ARM resource id of the private link scope resource to which this connected cluster is associated',
          args: [
            Arg(
            name: 'private-link-scope-resource-i'
          )
          ]
        ),
        Option(
          name: '--proxy-http',
          description: 'Http proxy URL to be used',
          args: [
            Arg(
            name: 'proxy-htt'
          )
          ]
        ),
        Option(
          name: '--proxy-https',
          description: 'Https proxy URL to be used',
          args: [
            Arg(
            name: 'proxy-http'
          )
          ]
        ),
        Option(
          name: '--proxy-skip-range',
          description: 'List of URLs/CIDRs for which proxy should not to be used',
          args: [
            Arg(
            name: 'proxy-skip-rang'
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
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a connected kubernetes cluster along with connected cluster agents',
      options: [

        Option(
          name: '--force',
          description: 'Force delete to remove all azure-arc resources from the cluster'
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
          name: '--kube-config',
          description: 'Path to the kube config file',
          args: [
            Arg(
            name: 'kube-confi'
          )
          ]
        ),
        Option(
          name: '--kube-context',
          description: 'Kubconfig context from current machine',
          args: [
            Arg(
            name: 'kube-contex'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the connected cluster',
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
      name: 'disable-features',
      description: 'Disables the selective features on the connected cluster',
      options: [

        Option(
          name: '--features',
          description: 'Space-separated list of features you want to disable',
          args: [
            Arg(
            name: 'features',
            suggestions: [

              FigSuggestion(name: 'azure-rbac'),
              FigSuggestion(name: 'cluster-connect'),
              FigSuggestion(name: 'custom-locations')
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
          name: '--kube-config',
          description: 'Path to the kube config file',
          args: [
            Arg(
            name: 'kube-confi'
          )
          ]
        ),
        Option(
          name: '--kube-context',
          description: 'Kubconfig context from current machine',
          args: [
            Arg(
            name: 'kube-contex'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the connected cluster',
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
      name: 'enable-features',
      description: 'Enables the selective features on the connected cluster',
      options: [

        Option(
          name: '--features',
          description: 'Space-separated list of features you want to enable',
          args: [
            Arg(
            name: 'features',
            suggestions: [

              FigSuggestion(name: 'azure-rbac'),
              FigSuggestion(name: 'cluster-connect'),
              FigSuggestion(name: 'custom-locations')
            ]
          )
          ]
        ),
        Option(
          name: '--app-id',
          description: 'Application ID for enabling Azure RBAC. Specify when enabling azure-rbac',
          args: [
            Arg(
            name: 'app-i'
          )
          ]
        ),
        Option(
          name: '--app-secret',
          description: 'Application secret for enabling Azure RBAC. Specify when enabling azure-rbac',
          args: [
            Arg(
            name: 'app-secre'
          )
          ]
        ),
        Option(
          name: '--custom-locations-oid',
          description: 'OID of \'custom-locations\' app',
          args: [
            Arg(
            name: 'custom-locations-oi'
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
          name: '--kube-config',
          description: 'Path to the kube config file',
          args: [
            Arg(
            name: 'kube-confi'
          )
          ]
        ),
        Option(
          name: '--kube-context',
          description: 'Kubconfig context from current machine',
          args: [
            Arg(
            name: 'kube-contex'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the connected cluster',
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
          name: '--skip-azure-rbac-list',
          description: 'Comma separated list of names of usernames/email/oid. Azure RBAC will be skipped for these users. Specify when enabling azure-rbac',
          args: [
            Arg(
            name: 'skip-azure-rbac-lis'
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
      description: 'List connected kubernetes clusters',
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
      name: 'proxy',
      description: 'Get access to a connected kubernetes cluster',
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
          description: 'The name of the connected cluster',
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
      description: 'Show details of a connected kubernetes cluster',
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
          description: 'The name of the connected cluster',
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
      name: 'troubleshoot',
      description: 'Perform diagnostic checks on an Arc enabled Kubernetes cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the connected cluster',
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
          name: '--kube-config',
          description: 'Path to the kube config file',
          args: [
            Arg(
            name: 'kube-confi'
          )
          ]
        ),
        Option(
          name: '--kube-context',
          description: 'Kubconfig context from current machine',
          args: [
            Arg(
            name: 'kube-contex'
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
      name: 'update',
      description: 'Update properties of the arc onboarded kubernetes cluster',
      options: [

        Option(
          name: '--auto-upgrade',
          description: 'Flag to enable/disable auto upgrade of arc agents. By default, auto upgrade of agents is enabled',
          args: [
            Arg(
            name: 'auto-upgrade',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--azure-hybrid-benefit',
          description: 'Flag to enable/disable Azure Hybrid Benefit feature',
          args: [
            Arg(
            name: 'azure-hybrid-benefit',
            suggestions: [

              FigSuggestion(name: 'False'),
              FigSuggestion(name: 'NotApplicable'),
              FigSuggestion(name: 'True')
            ]
          )
          ]
        ),
        Option(
          name: '--container-log-path',
          description: 'Override the default container log path to enable fluent-bit logging',
          args: [
            Arg(
            name: 'container-log-pat'
          )
          ]
        ),
        Option(
          name: ['--custom-ca-cert', '--proxy-cert'],
          description: 'Path to the certificate file for proxy or custom Certificate Authority',
          args: [
            Arg(
            name: 'custom-ca-cer'
          )
          ]
        ),
        Option(
          name: '--disable-proxy',
          description: 'Disables proxy settings for agents'
        ),
        Option(
          name: '--distribution',
          description: 'The Kubernetes distribution which will be running on this connected cluster',
          args: [
            Arg(
            name: 'distribution',
            suggestions: [

              FigSuggestion(name: 'aks'),
              FigSuggestion(name: 'aks_edge_k3s'),
              FigSuggestion(name: 'aks_edge_k8s'),
              FigSuggestion(name: 'aks_engine'),
              FigSuggestion(name: 'aks_management'),
              FigSuggestion(name: 'aks_workload'),
              FigSuggestion(name: 'canonical'),
              FigSuggestion(name: 'capz'),
              FigSuggestion(name: 'eks'),
              FigSuggestion(name: 'generic'),
              FigSuggestion(name: 'gke'),
              FigSuggestion(name: 'k3s'),
              FigSuggestion(name: 'karbon'),
              FigSuggestion(name: 'kind'),
              FigSuggestion(name: 'minikube'),
              FigSuggestion(name: 'openshift'),
              FigSuggestion(name: 'rancher_rke'),
              FigSuggestion(name: 'tkg')
            ]
          )
          ]
        ),
        Option(
          name: '--distribution-version',
          description: 'The Kubernetes distribution version of the connected cluster',
          args: [
            Arg(
            name: 'distribution-versio'
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
          name: '--kube-config',
          description: 'Path to the kube config file',
          args: [
            Arg(
            name: 'kube-confi'
          )
          ]
        ),
        Option(
          name: '--kube-context',
          description: 'Kubconfig context from current machine',
          args: [
            Arg(
            name: 'kube-contex'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the connected cluster',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--proxy-http',
          description: 'Http proxy URL to be used',
          args: [
            Arg(
            name: 'proxy-htt'
          )
          ]
        ),
        Option(
          name: '--proxy-https',
          description: 'Https proxy URL to be used',
          args: [
            Arg(
            name: 'proxy-http'
          )
          ]
        ),
        Option(
          name: '--proxy-skip-range',
          description: 'List of URLs/CIDRs for which proxy should not to be used',
          args: [
            Arg(
            name: 'proxy-skip-rang'
          )
          ]
        ),
        Option(
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
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Atomically upgrade onboarded agents to the specific version or default to the latest version',
      options: [

        Option(
          name: '--agent-version',
          description: 'Version of agent to update the helm charts to',
          args: [
            Arg(
            name: 'agent-versio'
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
          name: '--kube-config',
          description: 'Path to the kube config file',
          args: [
            Arg(
            name: 'kube-confi'
          )
          ]
        ),
        Option(
          name: '--kube-context',
          description: 'Kubconfig context from current machine',
          args: [
            Arg(
            name: 'kube-contex'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the connected cluster',
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
          name: '--upgrade-timeout',
          description: 'Time required (in seconds) for the arc-agent pods to be upgraded on the kubernetes cluster. Override this value if the hardware/network constraints on your cluster requires more time for upgrading the arc-agent pods',
          args: [
            Arg(
            name: 'upgrade-timeou'
          )
          ]
        )
      ]
    )
  ]
);
