// Auto-generated from TypeScript source: aks.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `aks` CLI
final FigSpec aksSpec = FigSpec(
  name: 'aks',
  description: 'Manage Azure Kubernetes Services',
  subcommands: [

    Subcommand(
      name: 'addon',
      description: 'Commands to manage and view single addon conditions',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable an enabled Kubernetes addon in a cluster',
          options: [

            Option(
              name: ['--addon', '-a'],
              description: 'Specify the Kubernetes addon to disable',
              args: [
                Arg(
                name: 'addo'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
            )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enable a Kubernetes addon',
          options: [

            Option(
              name: ['--addon', '-a'],
              description: 'Specify the Kubernetes addon to enable',
              args: [
                Arg(
                name: 'addo'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
              name: '--appgw-id',
              description: 'Resource Id of an existing Application Gateway to use with AGIC. Use with ingress-azure addon',
              args: [
                Arg(
                name: 'appgw-i'
              )
              ]
            ),
            Option(
              name: '--appgw-name',
              description: 'Name of the application gateway to create/use in the node resource group. Use with ingress-azure addon',
              args: [
                Arg(
                name: 'appgw-nam'
              )
              ]
            ),
            Option(
              name: '--appgw-subnet-cidr',
              description: 'Subnet CIDR to use for a new subnet created to deploy the Application Gateway. Use with ingress-azure addon',
              args: [
                Arg(
                name: 'appgw-subnet-cid'
              )
              ]
            ),
            Option(
              name: '--appgw-subnet-id',
              description: 'Resource Id of an existing Subnet used to deploy the Application Gateway. Use with ingress-azure addon',
              args: [
                Arg(
                name: 'appgw-subnet-i'
              )
              ]
            ),
            Option(
              name: '--appgw-watch-namespace',
              description: 'Specify the namespace, which AGIC should watch. This could be a single string value, or a comma-separated list of namespaces. Use with ingress-azure addon',
              args: [
                Arg(
                name: 'appgw-watch-namespac'
              )
              ]
            ),
            Option(
              name: '--data-collection-settings',
              description: 'Path to JSON file containing data collection settings for Monitoring addon',
              args: [
                Arg(
                name: 'data-collection-setting'
              )
              ]
            ),
            Option(
              name: '--dns-zone-resource-ids',
              description: 'A comma separated list of resource IDs of the DNS zone resource to use with the web_application_routing addon',
              args: [
                Arg(
                name: 'dns-zone-resource-id'
              )
              ]
            ),
            Option(
              name: '--enable-msi-auth-for-monitoring',
              description: 'Send monitoring data to Log Analytics using the cluster\'s assigned identity (instead of the Log Analytics Workspace\'s shared key)',
              args: [
                Arg(
                name: 'enable-msi-auth-for-monitoring',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-secret-rotation',
              description: 'Enable secret rotation. Use with azure-keyvault-secrets-provider addon'
            ),
            Option(
              name: '--enable-sgxquotehelper',
              description: 'Enable SGX quote helper for confcom addon'
            ),
            Option(
              name: '--enable-syslog',
              description: 'Enable syslog data collection for Monitoring addon'
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--rotation-poll-interval',
              description: 'Set interval of rotation poll. Use with azure-keyvault-secrets-provider addon',
              args: [
                Arg(
                name: 'rotation-poll-interva'
              )
              ]
            ),
            Option(
              name: ['--subnet-name', '-s'],
              description: 'The subnet name for the virtual node to use',
              args: [
                Arg(
                name: 'subnet-nam'
              )
              ]
            ),
            Option(
              name: '--workspace-resource-id',
              description: 'The resource ID of an existing Log Analytics Workspace to use for storing monitoring data',
              args: [
                Arg(
                name: 'workspace-resource-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List status of all Kubernetes addons in given cluster',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
          name: 'list-available',
          description: 'List available Kubernetes addons'
        ),
        Subcommand(
          name: 'show',
          description: 'Show status and configuration for an enabled Kubernetes addon in a given cluster',
          options: [

            Option(
              name: ['--addon', '-a'],
              description: 'Specify the Kubernetes addon',
              args: [
                Arg(
                name: 'addo'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
          description: 'Update an already enabled Kubernetes addon',
          options: [

            Option(
              name: ['--addon', '-a'],
              description: 'Specify the Kubernetes addon to update',
              args: [
                Arg(
                name: 'addo'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
              name: '--appgw-id',
              description: 'Resource Id of an existing Application Gateway to use with AGIC. Use with ingress-azure addon',
              args: [
                Arg(
                name: 'appgw-i'
              )
              ]
            ),
            Option(
              name: '--appgw-name',
              description: 'Name of the application gateway to create/use in the node resource group. Use with ingress-azure addon',
              args: [
                Arg(
                name: 'appgw-nam'
              )
              ]
            ),
            Option(
              name: '--appgw-subnet-cidr',
              description: 'Subnet CIDR to use for a new subnet created to deploy the Application Gateway. Use with ingress-azure addon',
              args: [
                Arg(
                name: 'appgw-subnet-cid'
              )
              ]
            ),
            Option(
              name: '--appgw-subnet-id',
              description: 'Resource Id of an existing Subnet used to deploy the Application Gateway. Use with ingress-azure addon',
              args: [
                Arg(
                name: 'appgw-subnet-i'
              )
              ]
            ),
            Option(
              name: '--appgw-watch-namespace',
              description: 'Specify the namespace, which AGIC should watch. This could be a single string value, or a comma-separated list of namespaces. Use with ingress-azure addon',
              args: [
                Arg(
                name: 'appgw-watch-namespac'
              )
              ]
            ),
            Option(
              name: '--data-collection-settings',
              description: 'Path to JSON file containing data collection settings for Monitoring addon',
              args: [
                Arg(
                name: 'data-collection-setting'
              )
              ]
            ),
            Option(
              name: '--dns-zone-resource-ids',
              description: 'A comma separated list of resource IDs of the DNS zone resource to use with the web_application_routing addon',
              args: [
                Arg(
                name: 'dns-zone-resource-id'
              )
              ]
            ),
            Option(
              name: '--enable-msi-auth-for-monitoring',
              description: 'Send monitoring data to Log Analytics using the cluster\'s assigned identity (instead of the Log Analytics Workspace\'s shared key)',
              args: [
                Arg(
                name: 'enable-msi-auth-for-monitoring',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-secret-rotation',
              description: 'Enable secret rotation. Use with azure-keyvault-secrets-provider addon'
            ),
            Option(
              name: '--enable-sgxquotehelper',
              description: 'Enable SGX quote helper for confcom addon'
            ),
            Option(
              name: '--enable-syslog',
              description: 'Enable syslog data collection for Monitoring addon'
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--rotation-poll-interval',
              description: 'Set interval of rotation poll. Use with azure-keyvault-secrets-provider addon',
              args: [
                Arg(
                name: 'rotation-poll-interva'
              )
              ]
            ),
            Option(
              name: ['--subnet-name', '-s'],
              description: 'The subnet name for the virtual node to use',
              args: [
                Arg(
                name: 'subnet-nam'
              )
              ]
            ),
            Option(
              name: '--workspace-resource-id',
              description: 'The resource ID of an existing Log Analytics Workspace to use for storing monitoring data',
              args: [
                Arg(
                name: 'workspace-resource-i'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'app',
      description: 'Commands to manage AKS app',
      subcommands: [

        Subcommand(
          name: 'up',
          description: 'Deploy to AKS via GitHub actions',
          options: [

            Option(
              name: '--acr',
              description: 'Name of the Azure Container Registry to be used for pushing the image',
              args: [
                Arg(
                name: 'ac'
              )
              ]
            ),
            Option(
              name: '--aks-cluster',
              description: 'Name of the cluster to select for deployment',
              args: [
                Arg(
                name: 'aks-cluste'
              )
              ]
            ),
            Option(
              name: '--branch-name',
              description: 'New branch name to be created to check in files and raise a PR',
              args: [
                Arg(
                name: 'branch-nam'
              )
              ]
            ),
            Option(
              name: '--do-not-wait',
              description: 'Do not wait for workflow completion'
            ),
            Option(
              name: '--port',
              description: 'Port on which your application runs. Default is 8080',
              args: [
                Arg(
                name: 'por'
              )
              ]
            ),
            Option(
              name: ['--repository', '-r'],
              description: 'GitHub repository URL e.g. https://github.com/azure/azure-cli',
              args: [
                Arg(
                name: 'repositor'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'browse',
      description: 'Show the dashboard for a Kubernetes cluster in a web browser',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
          name: '--disable-browser',
          description: 'Don\'t launch a web browser after establishing port-forwarding'
        ),
        Option(
          name: '--listen-address',
          description: 'The listening address for the dashboard',
          args: [
            Arg(
            name: 'listen-addres'
          )
          ]
        ),
        Option(
          name: '--listen-port',
          description: 'The listening port for the dashboard',
          args: [
            Arg(
            name: 'listen-por'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'check-acr',
      description: 'Validate an ACR is accessible from an AKS cluster',
      options: [

        Option(
          name: '--acr',
          description: 'The FQDN of the ACR',
          args: [
            Arg(
            name: 'ac'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
          name: '--node-name',
          description: 'The name of a specific node to perform acr pull test checks. If not specified, it will be checked on a random node',
          args: [
            Arg(
            name: 'node-nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a new managed Kubernetes cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
          name: '--aad-admin-group-object-ids',
          description: 'Comma seperated list of aad group object IDs that will be set as cluster admin',
          args: [
            Arg(
            name: 'aad-admin-group-object-id'
          )
          ]
        ),
        Option(
          name: '--aad-tenant-id',
          description: 'The ID of an Azure Active Directory tenant',
          args: [
            Arg(
            name: 'aad-tenant-i'
          )
          ]
        ),
        Option(
          name: '--aci-subnet-name',
          description: 'The name of a subnet in an existing VNet into which to deploy the virtual nodes',
          args: [
            Arg(
            name: 'aci-subnet-nam'
          )
          ]
        ),
        Option(
          name: ['--admin-username', '-u'],
          description: 'User account to create on node VMs for SSH access',
          args: [
            Arg(
            name: 'admin-usernam'
          )
          ]
        ),
        Option(
          name: '--aks-custom-headers',
          description: 'Comma-separated key-value pairs to specify custom headers',
          args: [
            Arg(
            name: 'aks-custom-header'
          )
          ]
        ),
        Option(
          name: '--api-server-authorized-ip-ranges',
          description: 'Comma seperated list of authorized apiserver IP ranges. Set to 0.0.0.0/32 to restrict apiserver traffic to node pools',
          args: [
            Arg(
            name: 'api-server-authorized-ip-range'
          )
          ]
        ),
        Option(
          name: '--appgw-id',
          description: 'Resource Id of an existing Application Gateway to use with AGIC. Use with ingress-azure addon',
          args: [
            Arg(
            name: 'appgw-i'
          )
          ]
        ),
        Option(
          name: '--appgw-name',
          description: 'Name of the application gateway to create/use in the node resource group. Use with ingress-azure addon',
          args: [
            Arg(
            name: 'appgw-nam'
          )
          ]
        ),
        Option(
          name: '--appgw-subnet-cidr',
          description: 'Subnet CIDR to use for a new subnet created to deploy the Application Gateway. Use with ingress-azure addon',
          args: [
            Arg(
            name: 'appgw-subnet-cid'
          )
          ]
        ),
        Option(
          name: '--appgw-subnet-id',
          description: 'Resource Id of an existing Subnet used to deploy the Application Gateway. Use with ingress-azure addon',
          args: [
            Arg(
            name: 'appgw-subnet-i'
          )
          ]
        ),
        Option(
          name: '--appgw-watch-namespace',
          description: 'Specify the namespace, which AGIC should watch. This could be a single string value, or a comma-separated list of namespaces',
          args: [
            Arg(
            name: 'appgw-watch-namespac'
          )
          ]
        ),
        Option(
          name: '--assign-identity',
          description: 'Specify an existing user assigned identity for control plane\'s usage in order to manage cluster resource group',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: '--assign-kubelet-identity',
          description: 'Specify an existing user assigned identity for kubelet\'s usage, which is typically used to pull image from ACR',
          args: [
            Arg(
            name: 'assign-kubelet-identit'
          )
          ]
        ),
        Option(
          name: '--attach-acr',
          description: 'Grant the \'acrpull\' role assignment to the ACR specified by name or resource ID',
          args: [
            Arg(
            name: 'attach-ac'
          )
          ]
        ),
        Option(
          name: '--auto-upgrade-channel',
          description: 'Specify the upgrade channel for autoupgrade',
          args: [
            Arg(
            name: 'auto-upgrade-channel',
            suggestions: [

              FigSuggestion(name: 'node-image'),
              FigSuggestion(name: 'none'),
              FigSuggestion(name: 'patch'),
              FigSuggestion(name: 'rapid'),
              FigSuggestion(name: 'stable')
            ]
          )
          ]
        ),
        Option(
          name: '--azure-keyvault-kms-key-id',
          description: 'Identifier of Azure Key Vault key',
          args: [
            Arg(
            name: 'azure-keyvault-kms-key-i'
          )
          ]
        ),
        Option(
          name: '--azure-keyvault-kms-key-vault-network-access',
          description: 'Network Access of Azure Key Vault',
          args: [
            Arg(
            name: 'azure-keyvault-kms-key-vault-network-access',
            suggestions: [

              FigSuggestion(name: 'Private'),
              FigSuggestion(name: 'Public')
            ]
          )
          ]
        ),
        Option(
          name: '--azure-keyvault-kms-key-vault-resource-id',
          description: 'Resource ID of Azure Key Vault',
          args: [
            Arg(
            name: 'azure-keyvault-kms-key-vault-resource-i'
          )
          ]
        ),
        Option(
          name: '--azure-monitor-workspace-resource-id',
          description: 'Resource ID of the Azure Monitor Workspace',
          args: [
            Arg(
            name: 'azure-monitor-workspace-resource-i'
          )
          ]
        ),
        Option(
          name: ['--cluster-autoscaler-profile', '--ca-profile'],
          description: 'Comma-separated list of key=value pairs for configuring cluster autoscaler. Pass an empty string to clear the profile',
          args: [
            Arg(
            name: 'cluster-autoscaler-profil'
          )
          ]
        ),
        Option(
          name: '--client-secret',
          description: 'Secret associated with the service principal. This argument is required if --service-principal is specified',
          args: [
            Arg(
            name: 'client-secre'
          )
          ]
        ),
        Option(
          name: '--data-collection-settings',
          description: 'Path to JSON file containing data collection settings for Monitoring addon',
          args: [
            Arg(
            name: 'data-collection-setting'
          )
          ]
        ),
        Option(
          name: '--defender-config',
          description: 'Path to JSON file containing Microsoft Defender profile configurations',
          args: [
            Arg(
            name: 'defender-confi'
          )
          ]
        ),
        Option(
          name: '--disable-disk-driver',
          description: 'Disable AzureDisk CSI Driver'
        ),
        Option(
          name: '--disable-file-driver',
          description: 'Disable AzureFile CSI Driver'
        ),
        Option(
          name: '--disable-local-accounts',
          description: 'If set to true, getting static credential will be disabled for this cluster'
        ),
        Option(
          name: '--disable-public-fqdn',
          description: 'Disable public fqdn feature for private cluster'
        ),
        Option(
          name: '--disable-rbac',
          description: 'Disable Kubernetes Role-Based Access Control',
          args: [
            Arg(
            name: 'disable-rba'
          )
          ]
        ),
        Option(
          name: '--disable-snapshot-controller',
          description: 'Disable CSI Snapshot Controller'
        ),
        Option(
          name: ['--dns-name-prefix', '-p'],
          description: 'Prefix for hostnames that are created. If not specified, generate a hostname using the managed cluster and resource group names',
          args: [
            Arg(
            name: 'dns-name-prefi'
          )
          ]
        ),
        Option(
          name: '--dns-service-ip',
          description: 'An IP address assigned to the Kubernetes DNS service',
          args: [
            Arg(
            name: 'dns-service-i'
          )
          ]
        ),
        Option(
          name: '--edge-zone',
          description: 'The name of the Edge Zone',
          args: [
            Arg(
            name: 'edge-zon'
          )
          ]
        ),
        Option(
          name: '--enable-aad',
          description: 'Enable managed AAD feature for cluster'
        ),
        Option(
          name: ['--enable-addons', '-a'],
          description: 'Enable the Kubernetes addons in a comma-separated list',
          args: [
            Arg(
            name: 'enable-addon'
          )
          ]
        ),
        Option(
          name: '--enable-ahub',
          description: 'Enable Azure Hybrid User Benefits (AHUB) for Windows VMs'
        ),
        Option(
          name: '--enable-azure-keyvault-kms',
          description: 'Enable Azure KeyVault Key Management Service'
        ),
        Option(
          name: '--enable-azure-monitor-metrics',
          description: 'Enable a kubernetes cluster with the Azure Monitor managed service for Prometheus integration'
        ),
        Option(
          name: '--enable-azure-rbac',
          description: 'Enable Azure RBAC to control authorization checks on cluster'
        ),
        Option(
          name: '--enable-blob-driver',
          description: 'Enable AzureBlob CSI Driver',
          args: [
            Arg(
            name: 'enable-blob-drive'
          )
          ]
        ),
        Option(
          name: '--enable-cluster-autoscaler',
          description: 'Enable cluster autoscaler, default value is false'
        ),
        Option(
          name: '--enable-defender',
          description: 'Enable Microsoft Defender security profile'
        ),
        Option(
          name: '--enable-encryption-at-host',
          description: 'Enable EncryptionAtHost, default value is false'
        ),
        Option(
          name: '--enable-fips-image',
          description: 'Use FIPS-enabled OS on agent nodes'
        ),
        Option(
          name: '--enable-image-cleaner',
          description: 'Enable ImageCleaner Service'
        ),
        Option(
          name: '--enable-keda',
          description: 'Enable KEDA workload auto-scaler'
        ),
        Option(
          name: '--enable-managed-identity',
          description: 'Using a system assigned managed identity to manage cluster resource group',
          args: [
            Arg(
            name: 'enable-managed-identit'
          )
          ]
        ),
        Option(
          name: '--enable-msi-auth-for-monitoring',
          description: 'Enable Managed Identity Auth for Monitoring addon',
          args: [
            Arg(
            name: 'enable-msi-auth-for-monitoring',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-node-public-ip',
          description: 'Enable VMSS node public IP'
        ),
        Option(
          name: '--enable-oidc-issuer',
          description: 'Enable OIDC issuer'
        ),
        Option(
          name: '--enable-private-cluster',
          description: 'Enable private cluster'
        ),
        Option(
          name: '--enable-secret-rotation',
          description: 'Enable secret rotation. Use with azure-keyvault-secrets-provider addon'
        ),
        Option(
          name: '--enable-sgxquotehelper',
          description: 'Enable SGX quote helper for confcom addon'
        ),
        Option(
          name: '--enable-syslog',
          description: 'Enable syslog data collection for Monitoring addon'
        ),
        Option(
          name: '--enable-ultra-ssd',
          description: 'Enable UltraSSD, default value is false'
        ),
        Option(
          name: '--enable-vpa',
          description: 'Enable vertical pod autoscaler for cluster'
        ),
        Option(
          name: '--enable-windows-gmsa',
          description: 'Enable Windows gmsa'
        ),
        Option(
          name: '--enable-windows-recording-rules',
          description: 'Enable Windows Recording Rules when enabling the Azure Monitor Metrics addon'
        ),
        Option(
          name: '--enable-workload-identity',
          description: 'Enable workload identity addon'
        ),
        Option(
          name: '--fqdn-subdomain',
          description: 'Prefix for FQDN that is created for private cluster with custom private dns zone scenario',
          args: [
            Arg(
            name: 'fqdn-subdomai'
          )
          ]
        ),
        Option(
          name: '--generate-ssh-keys',
          description: 'Generate SSH public and private key files if missing. The keys will be stored in the ~/.ssh directory'
        ),
        Option(
          name: '--gmsa-dns-server',
          description: 'Specify DNS server for Windows gmsa for this cluster',
          args: [
            Arg(
            name: 'gmsa-dns-serve'
          )
          ]
        ),
        Option(
          name: '--gmsa-root-domain-name',
          description: 'Specify root domain name for Windows gmsa for this cluster',
          args: [
            Arg(
            name: 'gmsa-root-domain-nam'
          )
          ]
        ),
        Option(
          name: '--gpu-instance-profile',
          description: 'GPU instance profile to partition multi-gpu Nvidia GPUs',
          args: [
            Arg(
            name: 'gpu-instance-profile',
            suggestions: [

              FigSuggestion(name: 'MIG1g'),
              FigSuggestion(name: 'MIG2g'),
              FigSuggestion(name: 'MIG3g'),
              FigSuggestion(name: 'MIG4g'),
              FigSuggestion(name: 'MIG7g')
            ]
          )
          ]
        ),
        Option(
          name: '--grafana-resource-id',
          description: 'Resource ID of the Azure Managed Grafana Workspace',
          args: [
            Arg(
            name: 'grafana-resource-i'
          )
          ]
        ),
        Option(
          name: '--host-group-id',
          description: 'The fully qualified dedicated host group id used to provision agent node pool',
          args: [
            Arg(
            name: 'host-group-i'
          )
          ]
        ),
        Option(
          name: '--http-proxy-config',
          description: 'HTTP Proxy configuration for this cluster',
          args: [
            Arg(
            name: 'http-proxy-confi'
          )
          ]
        ),
        Option(
          name: '--image-cleaner-interval-hours',
          description: 'ImageCleaner scanning interval',
          args: [
            Arg(
            name: 'image-cleaner-interval-hour'
          )
          ]
        ),
        Option(
          name: '--ip-families',
          description: 'A comma separated list of IP versions to use for cluster networking',
          args: [
            Arg(
            name: 'ip-familie'
          )
          ]
        ),
        Option(
          name: '--k8s-support-plan',
          description: 'Choose from "KubernetesOfficial" or "AKSLongTermSupport", with "AKSLongTermSupport" you get 1 extra year of CVE patchs',
          args: [
            Arg(
            name: 'k8s-support-plan',
            suggestions: [

              FigSuggestion(name: 'AKSLongTermSupport'),
              FigSuggestion(name: 'KubernetesOfficial')
            ]
          )
          ]
        ),
        Option(
          name: '--ksm-metric-annotations-allow-list',
          description: 'Comma-separated list of additional Kubernetes label keys that will be used in the resource\' labels metric. By default the metric contains only name and namespace labels. To include additional labels provide a list of resource names in their plural form and Kubernetes label keys you would like to allow for them (e.g.\'=namespaces=[k8s-label-1,k8s-label-n,...],pods=[app],...)\'. A single \'\' can be provided per resource instead to allow any labels, but that has severe performance implications (e.g. \'=pods=[]\')',
          args: [
            Arg(
            name: 'ksm-metric-annotations-allow-lis'
          )
          ]
        ),
        Option(
          name: '--ksm-metric-labels-allow-list',
          description: 'Comma-separated list of additional Kubernetes label keys that will be used in the resource\' labels metric. By default the metric contains only name and namespace labels. To include additional labels provide a list of resource names in their plural form and Kubernetes label keys you would like to allow for them (e.g. \'=namespaces=[k8s-label-1,k8s-label-n,...],pods=[app],...)\'. A single \'\' can be provided per resource instead to allow any labels, but that has severe performance implications (e.g. \'=pods=[]\')',
          args: [
            Arg(
            name: 'ksm-metric-labels-allow-lis'
          )
          ]
        ),
        Option(
          name: '--kubelet-config',
          description: 'Path to JSON file containing Kubelet configurations for agent nodes. https://aka.ms/aks/custom-node-config',
          args: [
            Arg(
            name: 'kubelet-confi'
          )
          ]
        ),
        Option(
          name: ['--kubernetes-version', '-k'],
          description: 'Version of Kubernetes to use for creating the cluster, such as "1.16.9". value from: `az aks get-versions`',
          args: [
            Arg(
            name: 'kubernetes-versio'
          )
          ]
        ),
        Option(
          name: '--linux-os-config',
          description: 'Path to JSON file containing OS configurations for Linux agent nodes. https://aka.ms/aks/custom-node-config',
          args: [
            Arg(
            name: 'linux-os-confi'
          )
          ]
        ),
        Option(
          name: '--load-balancer-idle-timeout',
          description: 'Load balancer idle timeout in minutes',
          args: [
            Arg(
            name: 'load-balancer-idle-timeou'
          )
          ]
        ),
        Option(
          name: '--load-balancer-managed-outbound-ip-count',
          description: 'Load balancer managed outbound IP count',
          args: [
            Arg(
            name: 'load-balancer-managed-outbound-ip-coun'
          )
          ]
        ),
        Option(
          name: '--load-balancer-managed-outbound-ipv6-count',
          description: 'Load balancer managed outbound IPv6 IP count',
          args: [
            Arg(
            name: 'load-balancer-managed-outbound-ipv6-coun'
          )
          ]
        ),
        Option(
          name: '--load-balancer-outbound-ip-prefixes',
          description: 'Load balancer outbound IP prefix resource IDs',
          args: [
            Arg(
            name: 'load-balancer-outbound-ip-prefixe'
          )
          ]
        ),
        Option(
          name: '--load-balancer-outbound-ips',
          description: 'Load balancer outbound IP resource IDs',
          args: [
            Arg(
            name: 'load-balancer-outbound-ip'
          )
          ]
        ),
        Option(
          name: '--load-balancer-outbound-ports',
          description: 'Load balancer outbound allocated ports',
          args: [
            Arg(
            name: 'load-balancer-outbound-port'
          )
          ]
        ),
        Option(
          name: '--load-balancer-sku',
          description: 'Azure Load Balancer SKU selection for your cluster. basic or standard. Defaults to \'standard\'',
          args: [
            Arg(
            name: 'load-balancer-sku',
            suggestions: [

              FigSuggestion(name: 'basic'),
              FigSuggestion(name: 'standard')
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
          name: '--max-count',
          description: 'Maximum nodes count used for autoscaler, when "--enable-cluster-autoscaler" specified. Please specify the value in the range of [1, 1000]',
          args: [
            Arg(
            name: 'max-coun'
          )
          ]
        ),
        Option(
          name: ['--max-pods', '-m'],
          description: 'The maximum number of pods deployable to a node',
          args: [
            Arg(
            name: 'max-pod'
          )
          ]
        ),
        Option(
          name: '--min-count',
          description: 'Minimum nodes count used for autoscaler, when "--enable-cluster-autoscaler" specified. Please specify the value in the range of [1, 1000]',
          args: [
            Arg(
            name: 'min-coun'
          )
          ]
        ),
        Option(
          name: '--nat-gateway-idle-timeout',
          description: 'NAT gateway idle timeout in minutes',
          args: [
            Arg(
            name: 'nat-gateway-idle-timeou'
          )
          ]
        ),
        Option(
          name: '--nat-gateway-managed-outbound-ip-count',
          description: 'NAT gateway managed outbound IP count',
          args: [
            Arg(
            name: 'nat-gateway-managed-outbound-ip-coun'
          )
          ]
        ),
        Option(
          name: '--network-dataplane',
          description: 'The network dataplane to use',
          args: [
            Arg(
            name: 'network-dataplane',
            suggestions: [

              FigSuggestion(name: 'azure'),
              FigSuggestion(name: 'cilium')
            ]
          )
          ]
        ),
        Option(
          name: '--network-plugin',
          description: 'The Kubernetes network plugin to use',
          args: [
            Arg(
            name: 'network-plugin',
            suggestions: [

              FigSuggestion(name: 'azure'),
              FigSuggestion(name: 'kubenet'),
              FigSuggestion(name: 'none')
            ]
          )
          ]
        ),
        Option(
          name: '--network-plugin-mode',
          description: 'The network plugin mode to use',
          args: [
            Arg(
            name: 'network-plugin-mode',
            suggestions: [

              FigSuggestion(name: 'overlay')
            ]
          )
          ]
        ),
        Option(
          name: '--network-policy',
          description: 'The Kubernetes network policy to use',
          args: [
            Arg(
            name: 'network-polic'
          )
          ]
        ),
        Option(
          name: ['--no-ssh-key', '-x'],
          description: 'Do not use or create a local SSH key'
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: ['--node-count', '-c'],
          description: 'Number of nodes in the Kubernetes node pool. After creating a cluster, you can change the size of its node pool with az aks scale',
          args: [
            Arg(
            name: 'node-coun'
          )
          ]
        ),
        Option(
          name: '--node-os-upgrade-channel',
          description: 'Manner in which the OS on your nodes is updated. It could be NodeImage, None, SecurityPatch or Unmanaged',
          args: [
            Arg(
            name: 'node-os-upgrade-channel',
            suggestions: [

              FigSuggestion(name: 'NodeImage'),
              FigSuggestion(name: 'None'),
              FigSuggestion(name: 'Unmanaged')
            ]
          )
          ]
        ),
        Option(
          name: ['--node-osdisk-diskencryptionset-id', '-d'],
          description: 'ResourceId of the disk encryption set to use for enabling encryption at rest on agent node os disk',
          args: [
            Arg(
            name: 'node-osdisk-diskencryptionset-i'
          )
          ]
        ),
        Option(
          name: '--node-osdisk-size',
          description: 'Size in GB of the OS disk for each node in the node pool. Minimum 30 GB',
          args: [
            Arg(
            name: 'node-osdisk-siz'
          )
          ]
        ),
        Option(
          name: '--node-osdisk-type',
          description: 'OS disk type to be used for machines in a given agent pool: Ephemeral or Managed. Defaults to \'Ephemeral\' when possible in conjunction with VM size and OS disk size. May not be changed for this pool after creation',
          args: [
            Arg(
            name: 'node-osdisk-type',
            suggestions: [

              FigSuggestion(name: 'Ephemeral'),
              FigSuggestion(name: 'Managed')
            ]
          )
          ]
        ),
        Option(
          name: '--node-public-ip-prefix-id',
          description: 'Public IP prefix ID used to assign public IPs to VMSS nodes',
          args: [
            Arg(
            name: 'node-public-ip-prefix-i'
          )
          ]
        ),
        Option(
          name: '--node-resource-group',
          description: 'The node resource group is the resource group where all customer\'s resources will be created in, such as virtual machines',
          args: [
            Arg(
            name: 'node-resource-grou'
          )
          ]
        ),
        Option(
          name: ['--node-vm-size', '-s'],
          description: 'Size of Virtual Machines to create as Kubernetes nodes',
          args: [
            Arg(
            name: 'node-vm-siz'
          )
          ]
        ),
        Option(
          name: '--nodepool-labels',
          description: 'The node labels for all node pool. See https://aka.ms/node-labels for syntax of labels',
          args: [
            Arg(
            name: 'nodepool-label'
          )
          ]
        ),
        Option(
          name: '--nodepool-name',
          description: 'Node pool name, up to 12 alphanumeric characters',
          args: [
            Arg(
            name: 'nodepool-nam'
          )
          ]
        ),
        Option(
          name: '--nodepool-tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'nodepool-tag'
          )
          ]
        ),
        Option(
          name: '--nodepool-taints',
          description: 'The node taints for all node pool',
          args: [
            Arg(
            name: 'nodepool-taint'
          )
          ]
        ),
        Option(
          name: '--os-sku',
          description: 'The OS SKU of the agent node pool. Ubuntu or CBLMariner',
          args: [
            Arg(
            name: 'os-sku',
            suggestions: [

              FigSuggestion(name: 'AzureLinux'),
              FigSuggestion(name: 'CBLMariner'),
              FigSuggestion(name: 'Mariner'),
              FigSuggestion(name: 'Ubuntu')
            ]
          )
          ]
        ),
        Option(
          name: '--outbound-type',
          description: 'How outbound traffic will be configured for a cluster',
          args: [
            Arg(
            name: 'outbound-type',
            suggestions: [

              FigSuggestion(name: 'loadBalancer'),
              FigSuggestion(name: 'managedNATGateway'),
              FigSuggestion(name: 'userAssignedNATGateway'),
              FigSuggestion(name: 'userDefinedRouting')
            ]
          )
          ]
        ),
        Option(
          name: '--pod-cidr',
          description: 'A CIDR notation IP range from which to assign pod IPs when kubenet is used',
          args: [
            Arg(
            name: 'pod-cid'
          )
          ]
        ),
        Option(
          name: '--pod-cidrs',
          description: 'A comma separated list of CIDR notation IP ranges from which to assign pod IPs when kubenet is used',
          args: [
            Arg(
            name: 'pod-cidr'
          )
          ]
        ),
        Option(
          name: '--pod-subnet-id',
          description: 'The ID of a subnet in an existing VNet into which to assign pods in the cluster (requires azure network-plugin)',
          args: [
            Arg(
            name: 'pod-subnet-i'
          )
          ]
        ),
        Option(
          name: '--ppg',
          description: 'The ID of a PPG',
          args: [
            Arg(
            name: 'pp'
          )
          ]
        ),
        Option(
          name: '--private-dns-zone',
          description: 'Private dns zone mode for private cluster',
          args: [
            Arg(
            name: 'private-dns-zon'
          )
          ]
        ),
        Option(
          name: '--rotation-poll-interval',
          description: 'Set interval of rotation poll. Use with azure-keyvault-secrets-provider addon',
          args: [
            Arg(
            name: 'rotation-poll-interva'
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
          name: '--service-cidrs',
          description: 'A comma separated list of CIDR notation IP ranges from which to assign service cluster IPs',
          args: [
            Arg(
            name: 'service-cidr'
          )
          ]
        ),
        Option(
          name: '--service-principal',
          description: 'Service principal used for authentication to Azure APIs',
          args: [
            Arg(
            name: 'service-principa'
          )
          ]
        ),
        Option(
          name: '--skip-subnet-role-assignment',
          description: 'Skip role assignment for subnet (advanced networking)'
        ),
        Option(
          name: '--snapshot-id',
          description: 'The source snapshot id used to create this cluster',
          args: [
            Arg(
            name: 'snapshot-i'
          )
          ]
        ),
        Option(
          name: '--ssh-key-value',
          description: 'Public key path or key contents to install on node VMs for SSH access. For example, \'ssh-rsa AAAAB...snip...UcyupgH azureuser@linuxvm\'',
          args: [
            Arg(
            name: 'ssh-key-valu'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'The tags of the managed cluster. The managed cluster instance and all resources managed by the cloud provider will be tagged',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        ),
        Option(
          name: '--tier',
          description: 'Specify SKU tier for managed clusters. \'--tier standard\' enables a standard managed cluster service with a financially backed SLA. \'--tier free\' does not have a financially backed SLA',
          args: [
            Arg(
            name: 'tier',
            suggestions: [

              FigSuggestion(name: 'free'),
              FigSuggestion(name: 'premium'),
              FigSuggestion(name: 'standard')
            ]
          )
          ]
        ),
        Option(
          name: '--vm-set-type',
          description: 'Agent pool vm set type. VirtualMachineScaleSets or AvailabilitySet. Defaults to \'VirtualMachineScaleSets\'',
          args: [
            Arg(
            name: 'vm-set-typ'
          )
          ]
        ),
        Option(
          name: '--vnet-subnet-id',
          description: 'The ID of a subnet in an existing VNet into which to deploy the cluster',
          args: [
            Arg(
            name: 'vnet-subnet-i'
          )
          ]
        ),
        Option(
          name: '--windows-admin-password',
          description: 'User account password to use on windows node VMs',
          args: [
            Arg(
            name: 'windows-admin-passwor'
          )
          ]
        ),
        Option(
          name: '--windows-admin-username',
          description: 'User account to create on windows node VMs',
          args: [
            Arg(
            name: 'windows-admin-usernam'
          )
          ]
        ),
        Option(
          name: '--workspace-resource-id',
          description: 'The resource ID of an existing Log Analytics Workspace to use for storing monitoring data. If not specified, uses the default Log Analytics Workspace if it exists, otherwise creates one',
          args: [
            Arg(
            name: 'workspace-resource-i'
          )
          ]
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        ),
        Option(
          name: ['--zones', '-z'],
          description: 'Availability zones where agent nodes will be placed. Also, to install agent nodes to more than one zones you need to pass zone numbers (1,2 or 3) separated by blanks. For example - To have all 3 zones, you are expected to enter --zones 1 2 3',
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
      description: 'Delete a managed Kubernetes cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
      name: 'disable-addons',
      description: 'Disable Kubernetes addons',
      options: [

        Option(
          name: ['--addons', '-a'],
          description: 'Disable the Kubernetes addons in a comma-separated list',
          args: [
            Arg(
            name: 'addon'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
        )
      ]
    ),
    Subcommand(
      name: 'enable-addons',
      description: 'Enable Kubernetes addons',
      options: [

        Option(
          name: ['--addons', '-a'],
          description: 'Enable the Kubernetes addons in a comma-separated list',
          args: [
            Arg(
            name: 'addon'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
          name: '--appgw-id',
          description: 'Resource Id of an existing Application Gateway to use with AGIC. Use with ingress-azure addon',
          args: [
            Arg(
            name: 'appgw-i'
          )
          ]
        ),
        Option(
          name: '--appgw-name',
          description: 'Name of the application gateway to create/use in the node resource group. Use with ingress-azure addon',
          args: [
            Arg(
            name: 'appgw-nam'
          )
          ]
        ),
        Option(
          name: '--appgw-subnet-cidr',
          description: 'Subnet CIDR to use for a new subnet created to deploy the Application Gateway. Use with ingress-azure addon',
          args: [
            Arg(
            name: 'appgw-subnet-cid'
          )
          ]
        ),
        Option(
          name: '--appgw-subnet-id',
          description: 'Resource Id of an existing Subnet used to deploy the Application Gateway. Use with ingress-azure addon',
          args: [
            Arg(
            name: 'appgw-subnet-i'
          )
          ]
        ),
        Option(
          name: '--appgw-watch-namespace',
          description: 'Specify the namespace, which AGIC should watch. This could be a single string value, or a comma-separated list of namespaces',
          args: [
            Arg(
            name: 'appgw-watch-namespac'
          )
          ]
        ),
        Option(
          name: '--data-collection-settings',
          description: 'Path to JSON file containing data collection settings for Monitoring addon',
          args: [
            Arg(
            name: 'data-collection-setting'
          )
          ]
        ),
        Option(
          name: '--enable-msi-auth-for-monitoring',
          description: 'Enable Managed Identity Auth for Monitoring addon',
          args: [
            Arg(
            name: 'enable-msi-auth-for-monitoring',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-secret-rotation',
          description: 'Enable secret rotation. Use with azure-keyvault-secrets-provider addon'
        ),
        Option(
          name: '--enable-sgxquotehelper',
          description: 'Enable SGX quote helper for confcom addon'
        ),
        Option(
          name: '--enable-syslog',
          description: 'Enable syslog data collection for Monitoring addon'
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--rotation-poll-interval',
          description: 'Set interval of rotation poll. Use with azure-keyvault-secrets-provider addon',
          args: [
            Arg(
            name: 'rotation-poll-interva'
          )
          ]
        ),
        Option(
          name: ['--subnet-name', '-s'],
          description: 'Name of an existing subnet to use with the virtual-node add-on',
          args: [
            Arg(
            name: 'subnet-nam'
          )
          ]
        ),
        Option(
          name: '--workspace-resource-id',
          description: 'The resource ID of an existing Log Analytics Workspace to use for storing monitoring data',
          args: [
            Arg(
            name: 'workspace-resource-i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get-credentials',
      description: 'Get access credentials for a managed Kubernetes cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
          name: ['--admin', '-a'],
          description: 'Get cluster administrator credentials. Default: cluster user credentials'
        ),
        Option(
          name: '--context',
          description: 'If specified, overwrite the default context name. The --admin parameter takes precedence over --context',
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--file', '-f'],
          description: 'Kubernetes configuration file to update. Use "-" to print YAML to stdout instead',
          args: [
            Arg(
            name: 'fil'
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Specify the format of the returned credential. Available values are ["exec", "azure"]. Only take effect when requesting clusterUser credential of AAD clusters',
          args: [
            Arg(
            name: 'forma'
          )
          ]
        ),
        Option(
          name: '--overwrite-existing',
          description: 'Overwrite any existing cluster entry with the same name'
        ),
        Option(
          name: '--public-fqdn',
          description: 'Get private cluster credential with server address to be public fqdn'
        )
      ]
    ),
    Subcommand(
      name: 'get-os-options',
      description: 'Get the OS options available for creating a managed Kubernetes cluster',
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
      name: 'get-upgrades',
      description: 'Get the upgrade versions available for a managed Kubernetes cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
      name: 'get-versions',
      description: 'Get the versions available for creating a managed Kubernetes cluster',
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
      name: 'install-cli',
      description: 'Download and install kubectl, the Kubernetes command-line tool. Download and install kubelogin, a client-go credential (exec) plugin implementing azure authentication',
      options: [

        Option(
          name: '--base-src-url',
          description: 'Base download source URL for kubectl releases',
          args: [
            Arg(
            name: 'base-src-ur'
          )
          ]
        ),
        Option(
          name: '--client-version',
          description: 'Version of kubectl to install',
          args: [
            Arg(
            name: 'client-versio'
          )
          ]
        ),
        Option(
          name: '--install-location',
          description: 'Path at which to install kubectl. Note: the path should contain the binary filename',
          args: [
            Arg(
            name: 'install-locatio'
          )
          ]
        ),
        Option(
          name: ['--kubelogin-base-src-url', '-l'],
          description: 'Base download source URL for kubelogin releases',
          args: [
            Arg(
            name: 'kubelogin-base-src-ur'
          )
          ]
        ),
        Option(
          name: '--kubelogin-install-location',
          description: 'Path at which to install kubelogin. Note: the path should contain the binary filename',
          args: [
            Arg(
            name: 'kubelogin-install-locatio'
          )
          ]
        ),
        Option(
          name: '--kubelogin-version',
          description: 'Version of kubelogin to install',
          args: [
            Arg(
            name: 'kubelogin-versio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'kanalyze',
      description: 'Display diagnostic results for the Kubernetes cluster after kollect is done',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
      name: 'kollect',
      description: 'Collecting diagnostic information for the Kubernetes cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
          name: '--container-logs',
          description: 'The list of container logs to collect',
          args: [
            Arg(
            name: 'container-log'
          )
          ]
        ),
        Option(
          name: '--kube-objects',
          description: 'The list of kubernetes objects to describe',
          args: [
            Arg(
            name: 'kube-object'
          )
          ]
        ),
        Option(
          name: '--node-logs',
          description: 'The list of node logs to collect for Linux nodes. For example, /var/log/cloud-init.log',
          args: [
            Arg(
            name: 'node-log'
          )
          ]
        ),
        Option(
          name: '--node-logs-windows',
          description: 'The list of node logs to collect for Windows nodes. For example, C:\\AzureData\\CustomDataSetupScript.log',
          args: [
            Arg(
            name: 'node-logs-window'
          )
          ]
        ),
        Option(
          name: '--sas-token',
          description: 'The SAS token with writable permission for the storage account',
          args: [
            Arg(
            name: 'sas-toke'
          )
          ]
        ),
        Option(
          name: '--storage-account',
          description: 'Name or ID of the storage account to save the diagnostic information',
          args: [
            Arg(
            name: 'storage-accoun'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List managed Kubernetes clusters',
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
      name: 'operation-abort',
      description: 'Abort last running operation on managed cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
        )
      ]
    ),
    Subcommand(
      name: 'remove-dev-spaces',
      description: 'Remove Azure Dev Spaces from a managed Kubernetes cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
      name: 'rotate-certs',
      description: 'Rotate certificates and keys on a managed Kubernetes cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
      name: 'scale',
      description: 'Scale the node pool in a managed Kubernetes cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--node-count', '-c'],
          description: 'Number of nodes in the Kubernetes node pool',
          args: [
            Arg(
            name: 'node-coun'
          )
          ]
        ),
        Option(
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
          name: '--nodepool-name',
          description: 'Node pool name, up to 12 alphanumeric characters',
          args: [
            Arg(
            name: 'nodepool-nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Show the details for a managed Kubernetes cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
      name: 'start',
      description: 'Starts a previously stopped Managed Cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
        )
      ]
    ),
    Subcommand(
      name: 'stop',
      description: 'Stops a Managed Cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update a managed Kubernetes cluster. When called with no optional arguments this attempts to move the cluster to its goal state without changing the current cluster configuration. This can be used to move out of a non succeeded state',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
          name: '--aad-admin-group-object-ids',
          description: 'Comma seperated list of aad group object IDs that will be set as cluster admin',
          args: [
            Arg(
            name: 'aad-admin-group-object-id'
          )
          ]
        ),
        Option(
          name: '--aad-tenant-id',
          description: 'The ID of an Azure Active Directory tenant',
          args: [
            Arg(
            name: 'aad-tenant-i'
          )
          ]
        ),
        Option(
          name: '--aks-custom-headers',
          description: 'Comma-separated key-value pairs to specify custom headers',
          args: [
            Arg(
            name: 'aks-custom-header'
          )
          ]
        ),
        Option(
          name: '--api-server-authorized-ip-ranges',
          description: 'Comma seperated list of authorized apiserver IP ranges. Set to "" to allow all traffic on a previously restricted cluster. Set to 0.0.0.0/32 to restrict apiserver traffic to node pools',
          args: [
            Arg(
            name: 'api-server-authorized-ip-range'
          )
          ]
        ),
        Option(
          name: '--assign-identity',
          description: 'Specify an existing user assigned identity to manage cluster resource group',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: '--assign-kubelet-identity',
          description: 'Update cluster\'s kubelet identity to an existing user assigned identity. Please note this operation will recreate all agent nodes in the cluster',
          args: [
            Arg(
            name: 'assign-kubelet-identit'
          )
          ]
        ),
        Option(
          name: '--attach-acr',
          description: 'Grant the \'acrpull\' role assignment to the ACR specified by name or resource ID',
          args: [
            Arg(
            name: 'attach-ac'
          )
          ]
        ),
        Option(
          name: '--auto-upgrade-channel',
          description: 'Specify the upgrade channel for autoupgrade',
          args: [
            Arg(
            name: 'auto-upgrade-channel',
            suggestions: [

              FigSuggestion(name: 'node-image'),
              FigSuggestion(name: 'none'),
              FigSuggestion(name: 'patch'),
              FigSuggestion(name: 'rapid'),
              FigSuggestion(name: 'stable')
            ]
          )
          ]
        ),
        Option(
          name: '--azure-keyvault-kms-key-id',
          description: 'Identifier of Azure Key Vault key',
          args: [
            Arg(
            name: 'azure-keyvault-kms-key-i'
          )
          ]
        ),
        Option(
          name: '--azure-keyvault-kms-key-vault-network-access',
          description: 'Network Access of Azure Key Vault',
          args: [
            Arg(
            name: 'azure-keyvault-kms-key-vault-network-access',
            suggestions: [

              FigSuggestion(name: 'Private'),
              FigSuggestion(name: 'Public')
            ]
          )
          ]
        ),
        Option(
          name: '--azure-keyvault-kms-key-vault-resource-id',
          description: 'Resource ID of Azure Key Vault',
          args: [
            Arg(
            name: 'azure-keyvault-kms-key-vault-resource-i'
          )
          ]
        ),
        Option(
          name: '--azure-monitor-workspace-resource-id',
          description: 'Resource ID of the Azure Monitor Workspace',
          args: [
            Arg(
            name: 'azure-monitor-workspace-resource-i'
          )
          ]
        ),
        Option(
          name: ['--cluster-autoscaler-profile', '--ca-profile'],
          description: 'Comma-separated list of key=value pairs for configuring cluster autoscaler. Pass an empty string to clear the profile',
          args: [
            Arg(
            name: 'cluster-autoscaler-profil'
          )
          ]
        ),
        Option(
          name: '--defender-config',
          description: 'Path to JSON file containing Microsoft Defender profile configurations',
          args: [
            Arg(
            name: 'defender-confi'
          )
          ]
        ),
        Option(
          name: '--detach-acr',
          description: 'Disable the \'acrpull\' role assignment to the ACR specified by name or resource ID',
          args: [
            Arg(
            name: 'detach-ac'
          )
          ]
        ),
        Option(
          name: '--disable-ahub',
          description: 'Disable Azure Hybrid User Benefits (AHUB) feature for cluster'
        ),
        Option(
          name: '--disable-azure-keyvault-kms',
          description: 'Disable Azure KeyVault Key Management Service'
        ),
        Option(
          name: '--disable-azure-monitor-metrics',
          description: 'Disable Azure Monitor Metrics Profile. This will delete all DCRA\'s associated with the cluster, any linked DCRs with the data stream = prometheus-stream and the recording rule groups created by the addon for this AKS cluster'
        ),
        Option(
          name: '--disable-azure-rbac',
          description: 'Disable Azure RBAC to control authorization checks on cluster'
        ),
        Option(
          name: '--disable-blob-driver',
          description: 'Disable AzureBlob CSI Driver',
          args: [
            Arg(
            name: 'disable-blob-drive'
          )
          ]
        ),
        Option(
          name: ['--disable-cluster-autoscaler', '-d'],
          description: 'Disable cluster autoscaler'
        ),
        Option(
          name: '--disable-defender',
          description: 'Disable defender profile'
        ),
        Option(
          name: '--disable-disk-driver',
          description: 'Disable AzureDisk CSI Driver'
        ),
        Option(
          name: '--disable-file-driver',
          description: 'Disable AzureFile CSI Driver'
        ),
        Option(
          name: '--disable-force-upgrade',
          description: 'Disable forceUpgrade cluster upgrade settings override'
        ),
        Option(
          name: '--disable-image-cleaner',
          description: 'Disable ImageCleaner Service'
        ),
        Option(
          name: '--disable-keda',
          description: 'Disable KEDA workload auto-scaler'
        ),
        Option(
          name: '--disable-local-accounts',
          description: 'If set to true, getting static credential will be disabled for this cluster'
        ),
        Option(
          name: '--disable-public-fqdn',
          description: 'Disable public fqdn feature for private cluster'
        ),
        Option(
          name: '--disable-secret-rotation',
          description: 'Disable secret rotation. Use with azure-keyvault-secrets-provider addon'
        ),
        Option(
          name: '--disable-snapshot-controller',
          description: 'Disable CSI Snapshot Controller'
        ),
        Option(
          name: '--disable-vpa',
          description: 'Disable vertical pod autoscaler for cluster'
        ),
        Option(
          name: '--disable-windows-gmsa',
          description: 'Disable Windows gmsa on cluster'
        ),
        Option(
          name: '--disable-workload-identity',
          description: 'Disable workload identity addon'
        ),
        Option(
          name: '--enable-aad',
          description: 'Enable managed AAD feature for cluster'
        ),
        Option(
          name: '--enable-ahub',
          description: 'Enable Azure Hybrid User Benefits (AHUB) feature for cluster'
        ),
        Option(
          name: '--enable-azure-keyvault-kms',
          description: 'Enable Azure KeyVault Key Management Service'
        ),
        Option(
          name: '--enable-azure-monitor-metrics',
          description: 'Enable a kubernetes cluster with the Azure Monitor managed service for Prometheus integration'
        ),
        Option(
          name: '--enable-azure-rbac',
          description: 'Enable Azure RBAC to control authorization checks on cluster'
        ),
        Option(
          name: '--enable-blob-driver',
          description: 'Enable AzureBlob CSI Driver',
          args: [
            Arg(
            name: 'enable-blob-drive'
          )
          ]
        ),
        Option(
          name: ['--enable-cluster-autoscaler', '-e'],
          description: 'Enable cluster autoscaler'
        ),
        Option(
          name: '--enable-defender',
          description: 'Enable Microsoft Defender security profile'
        ),
        Option(
          name: '--enable-disk-driver',
          description: 'Enable AzureDisk CSI Driver'
        ),
        Option(
          name: '--enable-file-driver',
          description: 'Enable AzureFile CSI Driver'
        ),
        Option(
          name: '--enable-force-upgrade',
          description: 'Enable forceUpgrade cluster upgrade settings override'
        ),
        Option(
          name: '--enable-image-cleaner',
          description: 'Enable ImageCleaner Service'
        ),
        Option(
          name: '--enable-keda',
          description: 'Enable KEDA workload auto-scaler'
        ),
        Option(
          name: '--enable-local-accounts',
          description: 'If set to true, will enable getting static credential for this cluster'
        ),
        Option(
          name: '--enable-managed-identity',
          description: 'Update current cluster to use managed identity to manage cluster resource group'
        ),
        Option(
          name: '--enable-oidc-issuer',
          description: 'Enable OIDC issuer'
        ),
        Option(
          name: '--enable-public-fqdn',
          description: 'Enable public fqdn feature for private cluster'
        ),
        Option(
          name: '--enable-secret-rotation',
          description: 'Enable secret rotation. Use with azure-keyvault-secrets-provider addon'
        ),
        Option(
          name: '--enable-snapshot-controller',
          description: 'Enable Snapshot Controller'
        ),
        Option(
          name: '--enable-vpa',
          description: 'Enable vertical pod autoscaler for cluster'
        ),
        Option(
          name: '--enable-windows-gmsa',
          description: 'Enable Windows gmsa on cluster'
        ),
        Option(
          name: '--enable-windows-recording-rules',
          description: 'Enable Windows Recording Rules when enabling the Azure Monitor Metrics addon'
        ),
        Option(
          name: '--enable-workload-identity',
          description: 'Enable workload identity addon'
        ),
        Option(
          name: '--gmsa-dns-server',
          description: 'Specify DNS server for Windows gmsa on cluster',
          args: [
            Arg(
            name: 'gmsa-dns-serve'
          )
          ]
        ),
        Option(
          name: '--gmsa-root-domain-name',
          description: 'Specify root domain name for Windows gmsa on cluster',
          args: [
            Arg(
            name: 'gmsa-root-domain-nam'
          )
          ]
        ),
        Option(
          name: '--grafana-resource-id',
          description: 'Resource ID of the Azure Managed Grafana Workspace',
          args: [
            Arg(
            name: 'grafana-resource-i'
          )
          ]
        ),
        Option(
          name: '--http-proxy-config',
          description: 'HTTP Proxy configuration for this cluster',
          args: [
            Arg(
            name: 'http-proxy-confi'
          )
          ]
        ),
        Option(
          name: '--image-cleaner-interval-hours',
          description: 'ImageCleaner scanning interval',
          args: [
            Arg(
            name: 'image-cleaner-interval-hour'
          )
          ]
        ),
        Option(
          name: '--k8s-support-plan',
          description: 'Choose from "KubernetesOfficial" or "AKSLongTermSupport", with "AKSLongTermSupport" you get 1 extra year of CVE patchs',
          args: [
            Arg(
            name: 'k8s-support-plan',
            suggestions: [

              FigSuggestion(name: 'AKSLongTermSupport'),
              FigSuggestion(name: 'KubernetesOfficial')
            ]
          )
          ]
        ),
        Option(
          name: '--ksm-metric-annotations-allow-list',
          description: 'Comma-separated list of additional Kubernetes label keys that will be used in the resource\' labels metric. By default the metric contains only name and namespace labels. To include additional labels provide a list of resource names in their plural form and Kubernetes label keys you would like to allow for them (e.g.\'=namespaces=[k8s-label-1,k8s-label-n,...],pods=[app],...)\'. A single \'\' can be provided per resource instead to allow any labels, but that has severe performance implications (e.g. \'=pods=[]\')',
          args: [
            Arg(
            name: 'ksm-metric-annotations-allow-lis'
          )
          ]
        ),
        Option(
          name: '--ksm-metric-labels-allow-list',
          description: 'Comma-separated list of additional Kubernetes label keys that will be used in the resource\' labels metric. By default the metric contains only name and namespace labels. To include additional labels provide a list of resource names in their plural form and Kubernetes label keys you would like to allow for them (e.g. \'=namespaces=[k8s-label-1,k8s-label-n,...],pods=[app],...)\'. A single \'\' can be provided per resource instead to allow any labels, but that has severe performance implications (e.g. \'=pods=[]\')',
          args: [
            Arg(
            name: 'ksm-metric-labels-allow-lis'
          )
          ]
        ),
        Option(
          name: '--load-balancer-idle-timeout',
          description: 'Load balancer idle timeout in minutes',
          args: [
            Arg(
            name: 'load-balancer-idle-timeou'
          )
          ]
        ),
        Option(
          name: '--load-balancer-managed-outbound-ip-count',
          description: 'Load balancer managed outbound IP count',
          args: [
            Arg(
            name: 'load-balancer-managed-outbound-ip-coun'
          )
          ]
        ),
        Option(
          name: '--load-balancer-managed-outbound-ipv6-count',
          description: 'Load balancer managed outbound IPv6 IP count',
          args: [
            Arg(
            name: 'load-balancer-managed-outbound-ipv6-coun'
          )
          ]
        ),
        Option(
          name: '--load-balancer-outbound-ip-prefixes',
          description: 'Load balancer outbound IP prefix resource IDs',
          args: [
            Arg(
            name: 'load-balancer-outbound-ip-prefixe'
          )
          ]
        ),
        Option(
          name: '--load-balancer-outbound-ips',
          description: 'Load balancer outbound IP resource IDs',
          args: [
            Arg(
            name: 'load-balancer-outbound-ip'
          )
          ]
        ),
        Option(
          name: '--load-balancer-outbound-ports',
          description: 'Load balancer outbound allocated ports',
          args: [
            Arg(
            name: 'load-balancer-outbound-port'
          )
          ]
        ),
        Option(
          name: '--max-count',
          description: 'Maximum nodes count used for autoscaler, when "--enable-cluster-autoscaler" specified. Please specify the value in the range of [1, 1000]',
          args: [
            Arg(
            name: 'max-coun'
          )
          ]
        ),
        Option(
          name: '--min-count',
          description: 'Minimum nodes count used for autoscaler, when "--enable-cluster-autoscaler" specified. Please specify the value in the range of [1, 1000]',
          args: [
            Arg(
            name: 'min-coun'
          )
          ]
        ),
        Option(
          name: '--nat-gateway-idle-timeout',
          description: 'NAT gateway idle timeout in minutes',
          args: [
            Arg(
            name: 'nat-gateway-idle-timeou'
          )
          ]
        ),
        Option(
          name: '--nat-gateway-managed-outbound-ip-count',
          description: 'NAT gateway managed outbound IP count',
          args: [
            Arg(
            name: 'nat-gateway-managed-outbound-ip-coun'
          )
          ]
        ),
        Option(
          name: '--network-dataplane',
          description: 'The network dataplane to use',
          args: [
            Arg(
            name: 'network-dataplane',
            suggestions: [

              FigSuggestion(name: 'azure'),
              FigSuggestion(name: 'cilium')
            ]
          )
          ]
        ),
        Option(
          name: '--network-plugin-mode',
          description: 'Update the mode of a network plugin to migrate to a different pod networking setup',
          args: [
            Arg(
            name: 'network-plugin-mod'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--node-os-upgrade-channel',
          description: 'Manner in which the OS on your nodes is updated. It could be NodeImage, None, SecurityPatch or Unmanaged',
          args: [
            Arg(
            name: 'node-os-upgrade-channe'
          )
          ]
        ),
        Option(
          name: '--nodepool-labels',
          description: 'The node labels for all node pool. See https://aka.ms/node-labels for syntax of labels',
          args: [
            Arg(
            name: 'nodepool-label'
          )
          ]
        ),
        Option(
          name: '--nodepool-taints',
          description: 'The node taints for all node pool',
          args: [
            Arg(
            name: 'nodepool-taint'
          )
          ]
        ),
        Option(
          name: '--outbound-type',
          description: 'How outbound traffic will be configured for a cluster',
          args: [
            Arg(
            name: 'outbound-type',
            suggestions: [

              FigSuggestion(name: 'loadBalancer'),
              FigSuggestion(name: 'managedNATGateway'),
              FigSuggestion(name: 'userAssignedNATGateway'),
              FigSuggestion(name: 'userDefinedRouting')
            ]
          )
          ]
        ),
        Option(
          name: '--pod-cidr',
          description: 'Update the pod CIDR for a cluster. Used when updating a cluster from Azure CNI to Azure CNI Overlay',
          args: [
            Arg(
            name: 'pod-cid'
          )
          ]
        ),
        Option(
          name: '--private-dns-zone',
          description: 'The private dns zone mode for private cluster',
          args: [
            Arg(
            name: 'private-dns-zon'
          )
          ]
        ),
        Option(
          name: '--rotation-poll-interval',
          description: 'Set interval of rotation poll. Use with azure-keyvault-secrets-provider addon',
          args: [
            Arg(
            name: 'rotation-poll-interva'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'The tags of the managed cluster. The managed cluster instance and all resources managed by the cloud provider will be tagged',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        ),
        Option(
          name: '--tier',
          description: 'Specify SKU tier for managed clusters. \'--tier standard\' enables a standard managed cluster service with a financially backed SLA. \'--tier free\' changes a standard managed cluster to a free one',
          args: [
            Arg(
            name: 'tier',
            suggestions: [

              FigSuggestion(name: 'free'),
              FigSuggestion(name: 'premium'),
              FigSuggestion(name: 'standard')
            ]
          )
          ]
        ),
        Option(
          name: ['--update-cluster-autoscaler', '-u'],
          description: 'Update min-count or max-count for cluster autoscaler'
        ),
        Option(
          name: '--upgrade-override-until',
          description: 'Until when the cluster upgradeSettings overrides are effective. It needs to be in a valid date-time format that\'s within the next 30 days. For example, 2023-04-01T13:00:00Z. Note that if --force-upgrade is set to true and --upgrade-override-until is not set, by default it will be set to 3 days from now',
          args: [
            Arg(
            name: 'upgrade-override-unti'
          )
          ]
        ),
        Option(
          name: '--windows-admin-password',
          description: 'User account password to use on windows node VMs',
          args: [
            Arg(
            name: 'windows-admin-passwor'
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
      name: 'update-credentials',
      description: 'Update credentials for a managed Kubernetes cluster, like service principal',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
          name: '--client-secret',
          description: 'Secret associated with the service principal. This argument is required if --service-principal is specified',
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
          name: '--reset-service-principal',
          description: 'Reset service principal for a managed cluster'
        ),
        Option(
          name: '--service-principal',
          description: 'Service principal used for authentication to Azure APIs. This argument is required if --reset-service-principal is specified',
          args: [
            Arg(
            name: 'service-principa'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Upgrade a managed Kubernetes cluster to a newer version',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
          name: '--control-plane-only',
          description: 'Upgrade the cluster control plane only. If not specified, both control plane AND all node pools will be upgraded'
        ),
        Option(
          name: ['--kubernetes-version', '-k'],
          description: 'Version of Kubernetes to upgrade the cluster to, such as "1.16.9". value from: `az aks get-upgrades`',
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
          description: 'Only upgrade node image for agent pools'
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'use-dev-spaces',
      description: 'Use Azure Dev Spaces with a managed Kubernetes cluster',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
          name: ['--endpoint', '-e'],
          description: 'The endpoint type to be used for a Azure Dev Spaces controller. See https://aka.ms/azds-networking for more information',
          args: [
            Arg(
            name: 'endpoint',
            suggestions: [

              FigSuggestion(name: 'None'),
              FigSuggestion(name: 'Private'),
              FigSuggestion(name: 'Public')
            ]
          )
          ]
        ),
        Option(
          name: ['--space', '-s'],
          description: 'Name of the new or existing dev space to select. Defaults to an interactive selection experience',
          args: [
            Arg(
            name: 'spac'
          )
          ]
        ),
        Option(
          name: '--update',
          description: 'Update to the latest Azure Dev Spaces client components'
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation. Requires --space'
        )
      ]
    ),
    Subcommand(
      name: 'wait',
      description: 'Wait for a managed Kubernetes cluster to reach a desired state',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the managed cluster',
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
    ),
    Subcommand(
      name: 'command',
      description: 'See detail usage in \'az aks command invoke\', \'az aks command result\'',
      subcommands: [

        Subcommand(
          name: 'invoke',
          description: 'Run a shell command (with kubectl, helm) on your aks cluster, support attaching files as well',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
              name: ['--command', '-c'],
              description: 'Command or shell script you want to run',
              args: [
                Arg(
                name: 'comman'
              )
              ]
            ),
            Option(
              name: ['--file', '-f'],
              description: 'Files to be used by the command, use \'.\' to attach the current folder',
              args: [
                Arg(
                name: 'fil'
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
          name: 'result',
          description: 'Fetch result from previously triggered \'aks command invoke\'',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
              name: ['--command-id', '-i'],
              description: 'CommandId returned from \'aks command invoke\'',
              args: [
                Arg(
                name: 'command-i'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'draft',
      description: 'Commands to build deployment files in a project directory and deploy to an AKS cluster',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Generate a Dockerfile and the minimum required Kubernetes deployment files (helm, kustomize, manifests) for your project directory',
          options: [

            Option(
              name: '--app',
              description: 'Specify the name of the helm release',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--create-config',
              description: 'Specify the path to the configuration file',
              args: [
                Arg(
                name: 'create-confi'
              )
              ]
            ),
            Option(
              name: '--deployment-only',
              description: 'Only generate deployment files (helm, kustomize, manifests) for the Kubernetes deployment',
              args: [
                Arg(
                name: 'deployment-onl'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'Specify the path to the project directory (default is .)',
              args: [
                Arg(
                name: 'destinatio'
              )
              ]
            ),
            Option(
              name: '--dockerfile-only',
              description: 'Only generate Dockerfile for the Kubernetes deployment',
              args: [
                Arg(
                name: 'dockerfile-onl'
              )
              ]
            ),
            Option(
              name: '--language',
              description: 'Specify the language used to create the Kubernetes deployment',
              args: [
                Arg(
                name: 'languag'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Automatically download and use the Draft binary at the specified location',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'generate-workflow',
          description: 'Generate a GitHub workflow for automatic build and deploy to AKS',
          options: [

            Option(
              name: '--branch',
              description: 'Specify the GitHub branch to automatically deploy from',
              args: [
                Arg(
                name: 'branc'
              )
              ]
            ),
            Option(
              name: '--cluster-name',
              description: 'Specify the AKS cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--container-name',
              description: 'Specify the name of the container image',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'Specify the path to the project directory (default is .)',
              args: [
                Arg(
                name: 'destinatio'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Automatically download and use the Draft binary at the specified location',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--registry-name',
              description: 'Specify the path to the project directory',
              args: [
                Arg(
                name: 'registry-nam'
              )
              ]
            ),
            Option(
              name: '--resource-group',
              description: 'Specify the name of the Azure resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'setup-gh',
          description: 'Set up GitHub OIDC for your application',
          options: [

            Option(
              name: '--app',
              description: 'Specify the Azure Active Directory applicaton name',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--gh-repo',
              description: 'Specify the the GitHub repository (organization/repo_name)',
              args: [
                Arg(
                name: 'gh-rep'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Automatically download and use the Draft binary at the specified location',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--provider',
              description: 'Specify the cloud provider (default is azure)',
              args: [
                Arg(
                name: 'provide'
              )
              ]
            ),
            Option(
              name: '--resource-group',
              description: 'Specify the name of the Azure resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specify the Azure subscription ID',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'up',
          description: 'Set up GitHub OIDC and generate a GitHub workflow for automatic build and deploy to AKS',
          options: [

            Option(
              name: '--app',
              description: 'Specify the name of the application',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--branch',
              description: 'Specify the GitHub branch to automatically deploy from',
              args: [
                Arg(
                name: 'branc'
              )
              ]
            ),
            Option(
              name: '--cluster-name',
              description: 'Specify the AKS cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--container-name',
              description: 'Specify the name of the container image',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'Specify the path to the project directory (default is .)',
              args: [
                Arg(
                name: 'destinatio'
              )
              ]
            ),
            Option(
              name: '--gh-repo',
              description: 'Specify the the GitHub repository (organization/repo_name)',
              args: [
                Arg(
                name: 'gh-rep'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Automatically download and use the Draft binary at the specified location',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--provider',
              description: 'Specify the cloud provider (default is azure)',
              args: [
                Arg(
                name: 'provide'
              )
              ]
            ),
            Option(
              name: '--registry-name',
              description: 'Specify the path to the project directory',
              args: [
                Arg(
                name: 'registry-nam'
              )
              ]
            ),
            Option(
              name: '--resource-group',
              description: 'Specify the name of the Azure resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specify the Azure subscription ID',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update your application to be internet accessible',
          options: [

            Option(
              name: '--certificate',
              description: 'Specify the URI of the Keyvault certificate to present',
              args: [
                Arg(
                name: 'certificat'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'Specify the path to the project directory (default is .)',
              args: [
                Arg(
                name: 'destinatio'
              )
              ]
            ),
            Option(
              name: '--host',
              description: 'Specify the host of the ingress resource',
              args: [
                Arg(
                name: 'hos'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Automatically download and use the Draft binary at the specified location',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'egress-endpoints',
      description: 'Commands to manage egress endpoints in managed Kubernetes cluster',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List egress endpoints that are required or recommended to be whitelisted for a cluster',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
      name: 'machine',
      description: 'Get information about machines in a nodepool of a managed clusters',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get information about IP Addresses, Hostname for all machines in an agentpool',
          options: [

            Option(
              name: '--cluster-name',
              description: 'Name of the managed cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--nodepool-name',
              description: 'Name of the agentpool of a managed cluster',
              args: [
                Arg(
                name: 'nodepool-nam'
              )
              ]
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
          description: 'Show IP Addresses, Hostname for a specific machine in an agentpool for a managedcluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'Name of the managed cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--machine-name',
              description: 'Get IP Addresses, Hostname for a specific machine in an agentpool',
              args: [
                Arg(
                name: 'machine-nam'
              )
              ]
            ),
            Option(
              name: '--nodepool-name',
              description: 'Name of the agentpool of a managed cluster',
              args: [
                Arg(
                name: 'nodepool-nam'
              )
              ]
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
      name: 'maintenanceconfiguration',
      description: 'Commands to manage maintenance configurations in managed Kubernetes cluster',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add a maintenance configuration in managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The config name',
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
              name: '--config-file',
              description: 'The maintenance configuration json file',
              args: [
                Arg(
                name: 'config-fil'
              )
              ]
            ),
            Option(
              name: '--day-of-month',
              description: 'Specify on which day of the month the maintenance occurs. E.g. 1 indicates the 1st of the month. Applicable to absolute monthly schedule type only',
              args: [
                Arg(
                name: 'day-of-mont'
              )
              ]
            ),
            Option(
              name: '--day-of-week',
              description: 'Specify on which day of the week the maintenance occurs. E.g. "Monday". Applicable to weekly and relative monthly schedule types',
              args: [
                Arg(
                name: 'day-of-wee'
              )
              ]
            ),
            Option(
              name: '--duration',
              description: 'The length of maintenance window range from 4 to 24 hours',
              args: [
                Arg(
                name: 'duratio'
              )
              ]
            ),
            Option(
              name: '--interval-days',
              description: 'The number of days between each set of occurrences for daily schedule type',
              args: [
                Arg(
                name: 'interval-day'
              )
              ]
            ),
            Option(
              name: '--interval-months',
              description: 'The number of months between each set of occurrences. Applicable to absolute and relative monthly schedule types',
              args: [
                Arg(
                name: 'interval-month'
              )
              ]
            ),
            Option(
              name: '--interval-weeks',
              description: 'The number of weeks between each set of occurrences. Applicable to weekly schedule types only',
              args: [
                Arg(
                name: 'interval-week'
              )
              ]
            ),
            Option(
              name: '--schedule-type',
              description: 'Choose either \'Daily\', \'Weekly\', \'AbsoluteMonthly\' or \'RelativeMonthly\' for your maintenance schedule. Only applicable to \'aksManagedAutoUpgradeSchedule\' and \'aksManagedNodeOSUpgradeSchedule\' maintenance configuration',
              args: [
                Arg(
                name: 'schedule-type',
                suggestions: [

                  FigSuggestion(name: 'AbsoluteMonthly'),
                  FigSuggestion(name: 'Daily'),
                  FigSuggestion(name: 'RelativeMonthly'),
                  FigSuggestion(name: 'Weekly')
                ]
              )
              ]
            ),
            Option(
              name: '--start-date',
              description: 'The date the maintenance configuration activates. If not specified, the maintenance window will be active right away."',
              args: [
                Arg(
                name: 'start-dat'
              )
              ]
            ),
            Option(
              name: '--start-hour',
              description: 'The start time of 1 hour window which maintenance is allowd. E.g. 1 means it\'s allowd between 1:00 am and 2:00 am. Applicable to default maintenance configuration only',
              args: [
                Arg(
                name: 'start-hou'
              )
              ]
            ),
            Option(
              name: '--start-time',
              description: 'The start time of the maintenance window. Accepted values are from \'00:00\' to \'23:59\'. \'--utc-offset\' applies to this field. For example, \'02:00\' with \'--utc-offset +02:00\' means UTC time \'00:00\'',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
            ),
            Option(
              name: '--utc-offset',
              description: 'The UTC offset in format +/-HH:mm. For example, \'+05:30\' for IST and \'-07:00\' for PST. If not specified, the default is \'+00:00\'',
              args: [
                Arg(
                name: 'utc-offse'
              )
              ]
            ),
            Option(
              name: '--week-index',
              description: 'Specify on which instance of the allowed days specified in \'--day-of-week\' the maintenance occurs. Applicable to relative monthly schedule type only',
              args: [
                Arg(
                name: 'week-index',
                suggestions: [

                  FigSuggestion(name: 'First'),
                  FigSuggestion(name: 'Fourth'),
                  FigSuggestion(name: 'Last'),
                  FigSuggestion(name: 'Second'),
                  FigSuggestion(name: 'Third')
                ]
              )
              ]
            ),
            Option(
              name: '--weekday',
              description: 'A day in week on which maintenance is allowed. E.g. Monday. Applicable to default maintenance configuration only',
              args: [
                Arg(
                name: 'weekda'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a maintenance configuration in managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The config name',
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
          description: 'List maintenance configurations in managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
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
          description: 'Show the details of a maintenance configuration in managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The config name',
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
          description: 'Update a maintenance configuration of a managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The config name',
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
              name: '--config-file',
              description: 'The maintenance configuration json file',
              args: [
                Arg(
                name: 'config-fil'
              )
              ]
            ),
            Option(
              name: '--day-of-month',
              description: 'Specify on which day of the month the maintenance occurs. E.g. 1 indicates the 1st of the month. Applicable to absolute monthly schedule type only',
              args: [
                Arg(
                name: 'day-of-mont'
              )
              ]
            ),
            Option(
              name: '--day-of-week',
              description: 'Specify on which day of the week the maintenance occurs. E.g. "Monday". Applicable to weekly and relative monthly schedule types',
              args: [
                Arg(
                name: 'day-of-wee'
              )
              ]
            ),
            Option(
              name: '--duration',
              description: 'The length of maintenance window range from 4 to 24 hours',
              args: [
                Arg(
                name: 'duratio'
              )
              ]
            ),
            Option(
              name: '--interval-days',
              description: 'The number of days between each set of occurrences for daily schedule type',
              args: [
                Arg(
                name: 'interval-day'
              )
              ]
            ),
            Option(
              name: '--interval-months',
              description: 'The number of months between each set of occurrences. Applicable to absolute and relative monthly schedule types',
              args: [
                Arg(
                name: 'interval-month'
              )
              ]
            ),
            Option(
              name: '--interval-weeks',
              description: 'The number of weeks between each set of occurrences. Applicable to weekly schedule types only',
              args: [
                Arg(
                name: 'interval-week'
              )
              ]
            ),
            Option(
              name: '--schedule-type',
              description: 'Choose either \'Daily\', \'Weekly\', \'AbsoluteMonthly\' or \'RelativeMonthly\' for your maintenance schedule. Only applicable to \'aksManagedAutoUpgradeSchedule\' and \'aksManagedNodeOSUpgradeSchedule\' maintenance configuration',
              args: [
                Arg(
                name: 'schedule-type',
                suggestions: [

                  FigSuggestion(name: 'AbsoluteMonthly'),
                  FigSuggestion(name: 'Daily'),
                  FigSuggestion(name: 'RelativeMonthly'),
                  FigSuggestion(name: 'Weekly')
                ]
              )
              ]
            ),
            Option(
              name: '--start-date',
              description: 'The date the maintenance configuration activates. If not specified, the maintenance window will be active right away."',
              args: [
                Arg(
                name: 'start-dat'
              )
              ]
            ),
            Option(
              name: '--start-hour',
              description: 'The start time of 1 hour window which maintenance is allowd. E.g. 1 means it\'s allowd between 1:00 am and 2:00 am. Applicable to default maintenance configuration only',
              args: [
                Arg(
                name: 'start-hou'
              )
              ]
            ),
            Option(
              name: '--start-time',
              description: 'The start time of the maintenance window. Accepted values are from \'00:00\' to \'23:59\'. \'--utc-offset\' applies to this field. For example, \'02:00\' with \'--utc-offset +02:00\' means UTC time \'00:00\'',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
            ),
            Option(
              name: '--utc-offset',
              description: 'The UTC offset in format +/-HH:mm. For example, \'+05:30\' for IST and \'-07:00\' for PST. If not specified, the default is \'+00:00\'',
              args: [
                Arg(
                name: 'utc-offse'
              )
              ]
            ),
            Option(
              name: '--week-index',
              description: 'Specify on which instance of the allowed days specified in \'--day-of-week\' the maintenance occurs. Applicable to relative monthly schedule type only',
              args: [
                Arg(
                name: 'week-index',
                suggestions: [

                  FigSuggestion(name: 'First'),
                  FigSuggestion(name: 'Fourth'),
                  FigSuggestion(name: 'Last'),
                  FigSuggestion(name: 'Second'),
                  FigSuggestion(name: 'Third')
                ]
              )
              ]
            ),
            Option(
              name: '--weekday',
              description: 'A day in week on which maintenance is allowed. E.g. Monday. Applicable to default maintenance configuration only',
              args: [
                Arg(
                name: 'weekda'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'mesh',
      description: 'Commands to manage Azure Service Mesh.\n\n\t\tA group of commands to manage Azure Service Mesh in given cluster',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable Azure Service Mesh',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
          name: 'disable-egress-gateway',
          description: 'Disable an Azure Service Mesh egress gateway',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
          name: 'disable-ingress-gateway',
          description: 'Disable an Azure Service Mesh ingress gateway',
          options: [

            Option(
              name: '--ingress-gateway-type',
              description: 'Specify the type of ingress gateway',
              args: [
                Arg(
                name: 'ingress-gateway-type',
                suggestions: [

                  FigSuggestion(name: 'External'),
                  FigSuggestion(name: 'Internal')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
          name: 'enable',
          description: 'Enable Azure Service Mesh',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
              name: '--ca-cert-object-name',
              description: 'Intermediate cert object name in the Azure Keyvault',
              args: [
                Arg(
                name: 'ca-cert-object-nam'
              )
              ]
            ),
            Option(
              name: '--ca-key-object-name',
              description: 'Intermediate key object name in the Azure Keyvault',
              args: [
                Arg(
                name: 'ca-key-object-nam'
              )
              ]
            ),
            Option(
              name: '--cert-chain-object-name',
              description: 'Cert chain object name in the Azure Keyvault',
              args: [
                Arg(
                name: 'cert-chain-object-nam'
              )
              ]
            ),
            Option(
              name: '--key-vault-id',
              description: 'The Azure Keyvault id with plugin CA info',
              args: [
                Arg(
                name: 'key-vault-i'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--revision',
              description: 'Azure Service Mesh revision to install',
              args: [
                Arg(
                name: 'revisio'
              )
              ]
            ),
            Option(
              name: '--root-cert-object-name',
              description: 'Root cert object name in the Azure Keyvault',
              args: [
                Arg(
                name: 'root-cert-object-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'enable-egress-gateway',
          description: 'Enable an Azure Service Mesh egress gateway',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
              name: ['--egress-gateway-nodeselector', '--egx-gtw-ns'],
              description: 'Specify the node selector for the egress gateway with space-separated, key-value pairs (key1=value1 key2=value2)',
              args: [
                Arg(
                name: 'egress-gateway-nodeselecto'
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
          name: 'enable-ingress-gateway',
          description: 'Enable an Azure Service Mesh ingress gateway',
          options: [

            Option(
              name: '--ingress-gateway-type',
              description: 'Specify the type of ingress gateway',
              args: [
                Arg(
                name: 'ingress-gateway-type',
                suggestions: [

                  FigSuggestion(name: 'External'),
                  FigSuggestion(name: 'Internal')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
            )
          ]
        ),
        Subcommand(
          name: 'get-revisions',
          description: 'Discover available Azure Service Mesh revisions and their compatibility',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location in which to discover available Azure Service Mesh revisions',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-upgrades',
          description: 'Discover available Azure Service Mesh upgrades',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
          name: 'upgrade',
          description: 'Commands to manage the upgrades for Azure Service Mesh.\n\n\t\tA group of commands to manage the upgrades for Azure Service Mesh in given cluster',
          subcommands: [

            Subcommand(
              name: 'complete',
              description: 'Complete Azure Service Mesh upgrade',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the managed cluster',
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
                )
              ]
            ),
            Subcommand(
              name: 'rollback',
              description: 'Rollback Azure Service Mesh upgrade',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the managed cluster',
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
                )
              ]
            ),
            Subcommand(
              name: 'start',
              description: 'Initiate Azure Service Mesh upgrade',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the managed cluster',
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
                  name: '--revision',
                  description: 'Azure Service Mesh revision to upgrade to',
                  args: [
                    Arg(
                    name: 'revisio'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'nodepool',
      description: 'Commands to manage node pools in Kubernetes kubernetes cluster',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add a node pool to the managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--nodepool-name', '--name', '-n'],
              description: 'The node pool name',
              args: [
                Arg(
                name: 'nodepool-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--aks-custom-headers',
              description: 'Comma-separated key-value pairs to specify custom headers',
              args: [
                Arg(
                name: 'aks-custom-header'
              )
              ]
            ),
            Option(
              name: ['--enable-cluster-autoscaler', '-e'],
              description: 'Enable cluster autoscaler'
            ),
            Option(
              name: '--enable-encryption-at-host',
              description: 'Enable EncryptionAtHost, default value is false'
            ),
            Option(
              name: '--enable-fips-image',
              description: 'Use FIPS-enabled OS on agent nodes'
            ),
            Option(
              name: '--enable-node-public-ip',
              description: 'Enable VMSS node public IP'
            ),
            Option(
              name: '--enable-ultra-ssd',
              description: 'Enable UltraSSD, default value is false'
            ),
            Option(
              name: '--eviction-policy',
              description: 'The eviction policy of the Spot node pool. It can only be set when --priority is Spot',
              args: [
                Arg(
                name: 'eviction-policy',
                suggestions: [

                  FigSuggestion(name: 'Deallocate'),
                  FigSuggestion(name: 'Delete')
                ]
              )
              ]
            ),
            Option(
              name: '--gpu-instance-profile',
              description: 'GPU instance profile to partition multi-gpu Nvidia GPUs',
              args: [
                Arg(
                name: 'gpu-instance-profile',
                suggestions: [

                  FigSuggestion(name: 'MIG1g'),
                  FigSuggestion(name: 'MIG2g'),
                  FigSuggestion(name: 'MIG3g'),
                  FigSuggestion(name: 'MIG4g'),
                  FigSuggestion(name: 'MIG7g')
                ]
              )
              ]
            ),
            Option(
              name: '--host-group-id',
              description: 'The fully qualified dedicated host group id used to provision agent node pool',
              args: [
                Arg(
                name: 'host-group-i'
              )
              ]
            ),
            Option(
              name: '--kubelet-config',
              description: 'Path to JSON file containing Kubelet configurations for agent nodes. https://aka.ms/aks/custom-node-config',
              args: [
                Arg(
                name: 'kubelet-confi'
              )
              ]
            ),
            Option(
              name: ['--kubernetes-version', '-k'],
              description: 'Version of Kubernetes to use for creating the cluster, such as "1.16.9". value from: `az aks get-versions`',
              args: [
                Arg(
                name: 'kubernetes-versio'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'The node labels for the node pool. See https://aka.ms/node-labels for syntax of labels',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: '--linux-os-config',
              description: 'Path to JSON file containing OS configurations for Linux agent nodes. https://aka.ms/aks/custom-node-config',
              args: [
                Arg(
                name: 'linux-os-confi'
              )
              ]
            ),
            Option(
              name: '--max-count',
              description: 'Maximum nodes count used for autoscaler, when "--enable-cluster-autoscaler" specified. Please specify the value in the range of [0, 1000] for user nodepool, and [1,1000] for system nodepool',
              args: [
                Arg(
                name: 'max-coun'
              )
              ]
            ),
            Option(
              name: ['--max-pods', '-m'],
              description: 'The maximum number of pods deployable to a node',
              args: [
                Arg(
                name: 'max-pod'
              )
              ]
            ),
            Option(
              name: '--max-surge',
              description: 'Extra nodes used to speed upgrade. When specified, it represents the number or percent used, eg. 5 or 33%',
              args: [
                Arg(
                name: 'max-surg'
              )
              ]
            ),
            Option(
              name: '--min-count',
              description: 'Minimum nodes count used for autoscaler, when "--enable-cluster-autoscaler" specified. Please specify the value in the range of [0, 1000] for user nodepool, and [1,1000] for system nodepool',
              args: [
                Arg(
                name: 'min-coun'
              )
              ]
            ),
            Option(
              name: '--mode',
              description: 'The mode for a node pool which defines a node pool\'s primary function. If set as "System", AKS prefers system pods scheduling to node pools with mode System. Learn more at https://aka.ms/aks/nodepool/mode',
              args: [
                Arg(
                name: 'mode',
                suggestions: [

                  FigSuggestion(name: 'System'),
                  FigSuggestion(name: 'User')
                ]
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--node-count', '-c'],
              description: 'Number of nodes in the Kubernetes agent pool. After creating a cluster, you can change the size of its node pool with az aks scale',
              args: [
                Arg(
                name: 'node-coun'
              )
              ]
            ),
            Option(
              name: '--node-osdisk-size',
              description: 'Size in GB of the OS disk for each node in the agent pool. Minimum 30 GB',
              args: [
                Arg(
                name: 'node-osdisk-siz'
              )
              ]
            ),
            Option(
              name: '--node-osdisk-type',
              description: 'OS disk type to be used for machines in a given agent pool. Defaults to \'Ephemeral\' when possible in conjunction with VM size and OS disk size. May not be changed for this pool after creation. (\'Ephemeral\' or \'Managed\')',
              args: [
                Arg(
                name: 'node-osdisk-type',
                suggestions: [

                  FigSuggestion(name: 'Ephemeral'),
                  FigSuggestion(name: 'Managed')
                ]
              )
              ]
            ),
            Option(
              name: '--node-public-ip-prefix-id',
              description: 'Public IP prefix ID used to assign public IPs to VMSS nodes',
              args: [
                Arg(
                name: 'node-public-ip-prefix-i'
              )
              ]
            ),
            Option(
              name: '--node-taints',
              description: 'The node taints for the node pool',
              args: [
                Arg(
                name: 'node-taint'
              )
              ]
            ),
            Option(
              name: ['--node-vm-size', '-s'],
              description: 'Size of Virtual Machines to create as Kubernetes nodes',
              args: [
                Arg(
                name: 'node-vm-siz'
              )
              ]
            ),
            Option(
              name: '--os-sku',
              description: 'The OS SKU of the agent node pool. Ubuntu or CBLMariner for Linux. Windows2019 or Windows2022 for Windows',
              args: [
                Arg(
                name: 'os-sku',
                suggestions: [

                  FigSuggestion(name: 'AzureLinux'),
                  FigSuggestion(name: 'CBLMariner'),
                  FigSuggestion(name: 'Mariner'),
                  FigSuggestion(name: 'Ubuntu'),
                  FigSuggestion(name: 'Windows2019'),
                  FigSuggestion(name: 'Windows2022')
                ]
              )
              ]
            ),
            Option(
              name: '--os-type',
              description: 'The OS Type. Linux or Windows',
              args: [
                Arg(
                name: 'os-typ'
              )
              ]
            ),
            Option(
              name: '--pod-subnet-id',
              description: 'The Resource Id of a subnet in an existing VNet into which to assign pods in the cluster (requires azure network-plugin)',
              args: [
                Arg(
                name: 'pod-subnet-i'
              )
              ]
            ),
            Option(
              name: '--ppg',
              description: 'The ID of a PPG',
              args: [
                Arg(
                name: 'pp'
              )
              ]
            ),
            Option(
              name: '--priority',
              description: 'The priority of the node pool',
              args: [
                Arg(
                name: 'priority',
                suggestions: [

                  FigSuggestion(name: 'Regular'),
                  FigSuggestion(name: 'Spot')
                ]
              )
              ]
            ),
            Option(
              name: '--scale-down-mode',
              description: 'Describe how VMs are added to or removed from nodepools',
              args: [
                Arg(
                name: 'scale-down-mode',
                suggestions: [

                  FigSuggestion(name: 'Deallocate'),
                  FigSuggestion(name: 'Delete')
                ]
              )
              ]
            ),
            Option(
              name: '--snapshot-id',
              description: 'The source snapshot id used to create this nodepool',
              args: [
                Arg(
                name: 'snapshot-i'
              )
              ]
            ),
            Option(
              name: '--spot-max-price',
              description: 'It can only be set when --priority is Spot. Specify the maximum price you are willing to pay in US Dollars. Possible values are any decimal value greater than zero or -1 which indicates default price to be up-to on-demand. It can only include up to 5 decimal places',
              args: [
                Arg(
                name: 'spot-max-pric'
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
              name: '--vnet-subnet-id',
              description: 'The Resource Id of a subnet in an existing VNet into which to deploy the cluster',
              args: [
                Arg(
                name: 'vnet-subnet-i'
              )
              ]
            ),
            Option(
              name: ['--zones', '-z'],
              description: 'Availability zones where agent nodes will be placed. Also, to install agent nodes to more than one zone you need to pass zone numbers separated by blanks. For example - To have all 3 zones, you are expected to enter --zones 1 2 3',
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
          description: 'Delete the agent pool in the managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--nodepool-name', '--name', '-n'],
              description: 'The node pool name',
              args: [
                Arg(
                name: 'nodepool-nam'
              )
              ]
            ),
            Option(
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
            )
          ]
        ),
        Subcommand(
          name: 'get-upgrades',
          description: 'Get the available upgrade versions for an agent pool of the managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--nodepool-name', '--name', '-n'],
              description: 'The node pool name',
              args: [
                Arg(
                name: 'nodepool-nam'
              )
              ]
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
          description: 'List node pools in the managed Kubernetes cluster. To get list of nodes in the cluster run kubectl get nodes command',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
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
          name: 'operation-abort',
          description: 'Abort last running operation on nodepool',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--nodepool-name', '--name', '-n'],
              description: 'The node pool name',
              args: [
                Arg(
                name: 'nodepool-nam'
              )
              ]
            ),
            Option(
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
            )
          ]
        ),
        Subcommand(
          name: 'scale',
          description: 'Scale the node pool in a managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--nodepool-name', '--name', '-n'],
              description: 'The node pool name',
              args: [
                Arg(
                name: 'nodepool-nam'
              )
              ]
            ),
            Option(
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
              description: 'Number of nodes in the Kubernetes node pool',
              args: [
                Arg(
                name: 'node-coun'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the details for a node pool in the managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--nodepool-name', '--name', '-n'],
              description: 'The node pool name',
              args: [
                Arg(
                name: 'nodepool-nam'
              )
              ]
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
          name: 'start',
          description: 'Start stopped agent pool in the managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--nodepool-name', '--name', '-n'],
              description: 'The node pool name',
              args: [
                Arg(
                name: 'nodepool-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--aks-custom-headers',
              description: 'Send custom headers. When specified, format should be Key1=Value1,Key2=Value2',
              args: [
                Arg(
                name: 'aks-custom-header'
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
          name: 'stop',
          description: 'Stop running agent pool in the managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--nodepool-name', '--name', '-n'],
              description: 'The node pool name',
              args: [
                Arg(
                name: 'nodepool-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--aks-custom-headers',
              description: 'Send custom headers. When specified, format should be Key1=Value1,Key2=Value2',
              args: [
                Arg(
                name: 'aks-custom-header'
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
          name: 'update',
          description: 'Update a node pool properties',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--nodepool-name', '--name', '-n'],
              description: 'The node pool name',
              args: [
                Arg(
                name: 'nodepool-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--aks-custom-headers',
              description: 'Comma-separated key-value pairs to specify custom headers',
              args: [
                Arg(
                name: 'aks-custom-header'
              )
              ]
            ),
            Option(
              name: ['--disable-cluster-autoscaler', '-d'],
              description: 'Disable cluster autoscaler'
            ),
            Option(
              name: ['--enable-cluster-autoscaler', '-e'],
              description: 'Enable cluster autoscaler'
            ),
            Option(
              name: '--labels',
              description: 'The node labels for the node pool. See https://aka.ms/node-labels for syntax of labels',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: '--max-count',
              description: 'Maximum nodes count used for autoscaler, when "--enable-cluster-autoscaler" specified. Please specify the value in the range of [0, 1000] for user nodepool, and [1,1000] for system nodepool',
              args: [
                Arg(
                name: 'max-coun'
              )
              ]
            ),
            Option(
              name: '--max-surge',
              description: 'Extra nodes used to speed upgrade. When specified, it represents the number or percent used, eg. 5 or 33%',
              args: [
                Arg(
                name: 'max-surg'
              )
              ]
            ),
            Option(
              name: '--min-count',
              description: 'Minimum nodes count used for autoscaler, when "--enable-cluster-autoscaler" specified. Please specify the value in the range of [0, 1000] for user nodepool, and [1,1000] for system nodepool',
              args: [
                Arg(
                name: 'min-coun'
              )
              ]
            ),
            Option(
              name: '--mode',
              description: 'The mode for a node pool which defines a node pool\'s primary function. If set as "System", AKS prefers system pods scheduling to node pools with mode System. Learn more at https://aka.ms/aks/nodepool/mode',
              args: [
                Arg(
                name: 'mode',
                suggestions: [

                  FigSuggestion(name: 'System'),
                  FigSuggestion(name: 'User')
                ]
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--node-taints',
              description: 'The node taints for the node pool. You can update the existing node taint of a nodepool or create a new node taint for a nodepool. Pass the empty string "" to remove all taints',
              args: [
                Arg(
                name: 'node-taint'
              )
              ]
            ),
            Option(
              name: '--scale-down-mode',
              description: 'Describe how VMs are added to or removed from nodepools',
              args: [
                Arg(
                name: 'scale-down-mode',
                suggestions: [

                  FigSuggestion(name: 'Deallocate'),
                  FigSuggestion(name: 'Delete')
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
              name: ['--update-cluster-autoscaler', '-u'],
              description: 'Update min-count or max-count for cluster autoscaler'
            )
          ]
        ),
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade the node pool in a managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--nodepool-name', '--name', '-n'],
              description: 'The node pool name',
              args: [
                Arg(
                name: 'nodepool-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--aks-custom-headers',
              description: 'Comma-separated key-value pairs to specify custom headers',
              args: [
                Arg(
                name: 'aks-custom-header'
              )
              ]
            ),
            Option(
              name: ['--kubernetes-version', '-k'],
              description: 'Version of Kubernetes to upgrade the node pool to, such as "1.16.9"',
              args: [
                Arg(
                name: 'kubernetes-versio'
              )
              ]
            ),
            Option(
              name: '--max-surge',
              description: 'Extra nodes used to speed upgrade. When specified, it represents the number or percent used, eg. 5 or 33% (mutually exclusive with "--node-image-only". See "az aks nodepool update --max-surge" to update max surge before upgrading with "--node-image-only")',
              args: [
                Arg(
                name: 'max-surg'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--node-image-only',
              description: 'Only upgrade agent pool\'s node image'
            ),
            Option(
              name: '--snapshot-id',
              description: 'The source snapshot id used to upgrade this nodepool',
              args: [
                Arg(
                name: 'snapshot-i'
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
          name: 'wait',
          description: 'Wait for a node pool to reach a desired state',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--nodepool-name', '--name', '-n'],
              description: 'The node pool name',
              args: [
                Arg(
                name: 'nodepool-nam'
              )
              ]
            ),
            Option(
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
        ),
        Subcommand(
          name: 'snapshot',
          description: 'Commands to manage nodepool snapshots',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a nodepool snapshot',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The nodepool snapshot name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--nodepool-id',
                  description: 'The source nodepool id from which to create this snapshot',
                  args: [
                    Arg(
                    name: 'nodepool-i'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--aks-custom-headers',
                  description: 'Send custom headers. When specified, format should be Key1=Value1,Key2=Value2',
                  args: [
                    Arg(
                    name: 'aks-custom-header'
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
                  description: 'The tags of the snapshot',
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
              description: 'Delete a nodepool snapshot',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The nodepool snapshot name',
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
              description: 'List nodepool snapshots',
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
              description: 'Show the details of a nodepool snapshot',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The nodepool snapshot name',
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
              description: 'Update tags on a snapshot of a nodepool',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The nodepool snapshot name',
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
                  name: '--tags',
                  description: 'The tags to set to the snapshot',
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
              description: 'Wait for a nodepool snapshot to reach a desired state',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the managed cluster',
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
        )
      ]
    ),
    Subcommand(
      name: 'oidc-issuer',
      description: 'Oidc issuer related commands',
      subcommands: [

        Subcommand(
          name: 'rotate-signing-keys',
          description: 'Rotate oidc issuer service account signing keys',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
        )
      ]
    ),
    Subcommand(
      name: 'pod-identity',
      description: 'Commands to manage pod identities in managed Kubernetes cluster',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add a pod identity to a managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--identity-resource-id',
              description: 'Resource id of the identity to use',
              args: [
                Arg(
                name: 'identity-resource-i'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'The pod identity namespace',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--aks-custom-headers',
              description: 'Send custom headers. When specified, format should be Key1=Value1,Key2=Value2',
              args: [
                Arg(
                name: 'aks-custom-header'
              )
              ]
            ),
            Option(
              name: '--binding-selector',
              description: 'Optional binding selector to use',
              args: [
                Arg(
                name: 'binding-selecto'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The pod identity name. Generate if not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Remove a pod identity from a managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The pod identity name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'The pod identity namespace',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--aks-custom-headers',
              description: 'Send custom headers. When specified, format should be Key1=Value1,Key2=Value2',
              args: [
                Arg(
                name: 'aks-custom-header'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List pod identities in a managed Kubernetes cluster',
          options: [

            Option(
              name: '--cluster-name',
              description: 'The cluster name',
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
          name: 'exception',
          description: 'Commands to manage pod identity exceptions in managed Kubernetes cluster',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a pod identity exception to a managed Kubernetes cluster',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The cluster name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace',
                  description: 'The pod identity exception namespace',
                  args: [
                    Arg(
                    name: 'namespac'
                  )
                  ]
                ),
                Option(
                  name: '--pod-labels',
                  description: 'Space-separated labels: key=value [key=value ...]',
                  args: [
                    Arg(
                    name: 'pod-label'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--aks-custom-headers',
                  description: 'Send custom headers. When specified, format should be Key1=Value1,Key2=Value2',
                  args: [
                    Arg(
                    name: 'aks-custom-header'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The pod identity exception name. Generate if not specified',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Remove a pod identity exception from a managed Kubernetes cluster',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The cluster name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The pod identity exception name to remove',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace',
                  description: 'The pod identity exception namespace to remove',
                  args: [
                    Arg(
                    name: 'namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--aks-custom-headers',
                  description: 'Send custom headers. When specified, format should be Key1=Value1,Key2=Value2',
                  args: [
                    Arg(
                    name: 'aks-custom-header'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List pod identity exceptions in a managed Kubernetes cluster',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The cluster name',
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
              name: 'update',
              description: 'Update a pod identity exception in a managed Kubernetes cluster',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The cluster name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The pod identity exception name to remove',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace',
                  description: 'The pod identity exception namespace to remove',
                  args: [
                    Arg(
                    name: 'namespac'
                  )
                  ]
                ),
                Option(
                  name: '--pod-labels',
                  description: 'Pod labels in key=value [key=value ...]',
                  args: [
                    Arg(
                    name: 'pod-label'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--aks-custom-headers',
                  description: 'Send custom headers. When specified, format should be Key1=Value1,Key2=Value2',
                  args: [
                    Arg(
                    name: 'aks-custom-header'
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
      name: 'snapshot',
      description: 'Commands to manage nodepool snapshots',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a nodepool snapshot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The nodepool snapshot name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--nodepool-id',
              description: 'The source nodepool id from which to create this snapshot',
              args: [
                Arg(
                name: 'nodepool-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--aks-custom-headers',
              description: 'Send custom headers. When specified, format should be Key1=Value1,Key2=Value2',
              args: [
                Arg(
                name: 'aks-custom-header'
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
              description: 'The tags of the snapshot',
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
          description: 'Delete a nodepool snapshot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The nodepool snapshot name',
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
          description: 'List nodepool snapshots',
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
          description: 'Show the details of a nodepool snapshot',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The nodepool snapshot name',
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
          name: 'wait',
          description: 'Wait for a nodepool snapshot to reach a desired state',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the managed cluster',
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
      name: 'trustedaccess',
      description: 'Commands to manage trusted access security features',
      subcommands: [

        Subcommand(
          name: 'role',
          description: 'Commands to manage trusted access roles',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List trusted access roles',
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
            )
          ]
        ),
        Subcommand(
          name: 'rolebinding',
          description: 'Commands to manage trusted access role bindings',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new trusted access role binding',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The cluster name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Specify the role binding name',
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
                  name: '--roles',
                  description: 'Specify the space-separated roles',
                  args: [
                    Arg(
                    name: 'role'
                  )
                  ]
                ),
                Option(
                  name: ['--source-resource-id', '-r'],
                  description: 'Specify the source resource id of the binding',
                  args: [
                    Arg(
                    name: 'source-resource-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a trusted access role binding according to name',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The cluster name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Specify the role binding name',
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
              description: 'List all the trusted access role bindings',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The cluster name',
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
              description: 'Get the specific trusted access role binding according to binding name',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The cluster name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Specify the role binding name',
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
              description: 'Update a trusted access role binding',
              options: [

                Option(
                  name: '--cluster-name',
                  description: 'The cluster name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Specify the role binding name',
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
                  name: '--roles',
                  description: 'Specify the space-separated roles',
                  args: [
                    Arg(
                    name: 'role'
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
