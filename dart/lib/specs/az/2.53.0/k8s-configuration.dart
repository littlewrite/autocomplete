// Auto-generated from TypeScript source: k8s-configuration.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `k8s-configuration` CLI
final FigSpec k8sConfigurationSpec = FigSpec(
  name: 'k8s-configuration',
  description: 'Commands to manage resources from Microsoft.KubernetesConfiguration',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a Flux v1 Kubernetes configuration (This command is for Flux v1, to use the newer Flux v2, run "az k8s-configuration flux create")',
      options: [

        Option(
          name: ['--cluster-name', '-c'],
          description: 'Name of the Kubernetes cluster',
          args: [
            Arg(
            name: 'cluster-nam'
          )
          ]
        ),
        Option(
          name: ['--cluster-type', '-t'],
          description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
          args: [
            Arg(
            name: 'cluster-type',
            suggestions: [

              FigSuggestion(name: 'connectedClusters'),
              FigSuggestion(name: 'managedClusters'),
              FigSuggestion(name: 'provisionedClusters')
            ]
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the configuration',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--repository-url', '-u'],
          description: 'Url of the source control repository',
          args: [
            Arg(
            name: 'repository-ur'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--scope',
          description: 'Specify scope of the operator to be \'namespace\' or \'cluster\'',
          args: [
            Arg(
            name: 'scope',
            suggestions: [

              FigSuggestion(name: 'cluster'),
              FigSuggestion(name: 'namespace')
            ]
          )
          ]
        ),
        Option(
          name: ['--enable-helm-operator', '--enable-hop'],
          description: 'Enable support for Helm chart deployments',
          args: [
            Arg(
            name: 'enable-helm-operator',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--helm-operator-chart-version', '--hop-chart-version'],
          description: 'Chart version of the Helm Operator (if enabled)',
          args: [
            Arg(
            name: 'helm-operator-chart-versio'
          )
          ]
        ),
        Option(
          name: ['--helm-operator-params', '--hop-params'],
          description: 'Chart values for the Helm Operator (if enabled)',
          args: [
            Arg(
            name: 'helm-operator-param'
          )
          ]
        ),
        Option(
          name: '--https-key',
          description: 'Specify HTTPS token/password for private repository sync',
          args: [
            Arg(
            name: 'https-ke'
          )
          ]
        ),
        Option(
          name: '--https-user',
          description: 'Specify HTTPS username for private repository sync',
          args: [
            Arg(
            name: 'https-use'
          )
          ]
        ),
        Option(
          name: '--operator-instance-name',
          description: 'Instance name of the Operator',
          args: [
            Arg(
            name: 'operator-instance-nam'
          )
          ]
        ),
        Option(
          name: '--operator-namespace',
          description: 'Namespace in which to install the Operator',
          args: [
            Arg(
            name: 'operator-namespac'
          )
          ]
        ),
        Option(
          name: '--operator-params',
          description: 'Parameters for the Operator',
          args: [
            Arg(
            name: 'operator-param'
          )
          ]
        ),
        Option(
          name: '--operator-type',
          description: 'Type of the operator. Valid value is \'flux\'',
          args: [
            Arg(
            name: 'operator-typ'
          )
          ]
        ),
        Option(
          name: '--ssh-known-hosts',
          description: 'Specify Base64-encoded known_hosts contents containing public SSH keys required to access private Git instances',
          args: [
            Arg(
            name: 'ssh-known-host'
          )
          ]
        ),
        Option(
          name: '--ssh-known-hosts-file',
          description: 'Specify file path to known_hosts contents containing public SSH keys required to access private Git instances',
          args: [
            Arg(
            name: 'ssh-known-hosts-fil'
          )
          ]
        ),
        Option(
          name: '--ssh-private-key',
          description: 'Specify Base64-encoded private ssh key for private repository sync',
          args: [
            Arg(
            name: 'ssh-private-ke'
          )
          ]
        ),
        Option(
          name: '--ssh-private-key-file',
          description: 'Specify file path to private ssh key for private repository sync',
          args: [
            Arg(
            name: 'ssh-private-key-fil'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a Flux v1 Kubernetes configuration (This command is for Flux v1, to use the newer Flux v2, run "az k8s-configuration flux delete")',
      options: [

        Option(
          name: ['--cluster-name', '-c'],
          description: 'Name of the Kubernetes cluster',
          args: [
            Arg(
            name: 'cluster-nam'
          )
          ]
        ),
        Option(
          name: ['--cluster-type', '-t'],
          description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
          args: [
            Arg(
            name: 'cluster-type',
            suggestions: [

              FigSuggestion(name: 'connectedClusters'),
              FigSuggestion(name: 'managedClusters'),
              FigSuggestion(name: 'provisionedClusters')
            ]
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the configuration',
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
      description: 'List Flux v1 Kubernetes configurations (This command is for Flux v1, to use the newer Flux v2, run "az k8s-configuration flux list")',
      options: [

        Option(
          name: ['--cluster-name', '-c'],
          description: 'Name of the Kubernetes cluster',
          args: [
            Arg(
            name: 'cluster-nam'
          )
          ]
        ),
        Option(
          name: ['--cluster-type', '-t'],
          description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
          args: [
            Arg(
            name: 'cluster-type',
            suggestions: [

              FigSuggestion(name: 'connectedClusters'),
              FigSuggestion(name: 'managedClusters'),
              FigSuggestion(name: 'provisionedClusters')
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
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Show details of a Flux v1 Kubernetes configuration (This command is for Flux v1, to use the newer Flux v2, run "az k8s-configuration flux show")',
      options: [

        Option(
          name: ['--cluster-name', '-c'],
          description: 'Name of the Kubernetes cluster',
          args: [
            Arg(
            name: 'cluster-nam'
          )
          ]
        ),
        Option(
          name: ['--cluster-type', '-t'],
          description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
          args: [
            Arg(
            name: 'cluster-type',
            suggestions: [

              FigSuggestion(name: 'connectedClusters'),
              FigSuggestion(name: 'managedClusters'),
              FigSuggestion(name: 'provisionedClusters')
            ]
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the configuration',
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
      name: 'flux',
      description: 'Commands to manage Flux v2 Kubernetes configurations',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Flux v2 Kubernetes configuration',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Name of the Kubernetes cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-type', '-t'],
              description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
              args: [
                Arg(
                name: 'cluster-type',
                suggestions: [

                  FigSuggestion(name: 'connectedClusters'),
                  FigSuggestion(name: 'managedClusters'),
                  FigSuggestion(name: 'provisionedClusters')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the flux configuration',
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
              name: ['--url', '-u'],
              description: 'URL of the source to reconcile',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--account-key',
              description: 'The Azure Blob Shared Key for authentication',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--branch',
              description: 'Branch within the git source to reconcile with the cluster',
              args: [
                Arg(
                name: 'branc'
              )
              ]
            ),
            Option(
              name: '--bucket-access-key',
              description: 'Access Key ID used to authenticate with the bucket',
              args: [
                Arg(
                name: 'bucket-access-ke'
              )
              ]
            ),
            Option(
              name: '--bucket-insecure',
              description: 'Communicate with a bucket without TLS'
            ),
            Option(
              name: '--bucket-name',
              description: 'Name of the S3 bucket to sync',
              args: [
                Arg(
                name: 'bucket-nam'
              )
              ]
            ),
            Option(
              name: '--bucket-secret-key',
              description: 'Secret Key used to authenticate with the bucket',
              args: [
                Arg(
                name: 'bucket-secret-ke'
              )
              ]
            ),
            Option(
              name: ['--cluster-resource-provider', '--cluster-rp'],
              description: 'Cluster Resource Provider name for this clusterType (Required for provisionedClusters)',
              args: [
                Arg(
                name: 'cluster-resource-provide'
              )
              ]
            ),
            Option(
              name: '--commit',
              description: 'Commit within the git source to reconcile with the cluster',
              args: [
                Arg(
                name: 'commi'
              )
              ]
            ),
            Option(
              name: '--container-name',
              description: 'Name of the Azure Blob Storage container to sync',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--https-ca-cert',
              description: 'Base64-encoded HTTPS CA certificate for TLS communication with private repository sync',
              args: [
                Arg(
                name: 'https-ca-cer'
              )
              ]
            ),
            Option(
              name: '--https-ca-cert-file',
              description: 'File path to HTTPS CA certificate file for TLS communication with private repository sync',
              args: [
                Arg(
                name: 'https-ca-cert-fil'
              )
              ]
            ),
            Option(
              name: '--https-key',
              description: 'HTTPS token/password for private repository sync',
              args: [
                Arg(
                name: 'https-ke'
              )
              ]
            ),
            Option(
              name: '--https-user',
              description: 'HTTPS username for private repository sync',
              args: [
                Arg(
                name: 'https-use'
              )
              ]
            ),
            Option(
              name: ['--sync-interval', '--interval'],
              description: 'Time between reconciliations of the source on the cluster',
              args: [
                Arg(
                name: 'sync-interva'
              )
              ]
            ),
            Option(
              name: '--kind',
              description: 'Source kind to reconcile',
              args: [
                Arg(
                name: 'kind',
                suggestions: [

                  FigSuggestion(name: 'azblob'),
                  FigSuggestion(name: 'bucket'),
                  FigSuggestion(name: 'git')
                ]
              )
              ]
            ),
            Option(
              name: '--known-hosts',
              description: 'Base64-encoded known_hosts data containing public SSH keys required to access private Git instances',
              args: [
                Arg(
                name: 'known-host'
              )
              ]
            ),
            Option(
              name: '--known-hosts-file',
              description: 'File path to known_hosts contents containing public SSH keys required to access private Git instances',
              args: [
                Arg(
                name: 'known-hosts-fil'
              )
              ]
            ),
            Option(
              name: ['--kustomization', '-k'],
              description: 'Define kustomizations to sync sources with parameters [\'name\', \'path\', \'depends_on\', \'timeout\', \'sync_interval\', \'retry_interval\', \'prune\', \'force\']',
              args: [
                Arg(
                name: 'kustomizatio'
              )
              ]
            ),
            Option(
              name: ['--local-auth-ref', '--local-ref'],
              description: 'Local reference to a kubernetes secret in the configuration namespace to use for communication to the source',
              args: [
                Arg(
                name: 'local-auth-re'
              )
              ]
            ),
            Option(
              name: ['--managed-identity-client-id', '--mi-client-id'],
              description: 'The client ID of the managed identity for authentication with Azure Blob',
              args: [
                Arg(
                name: 'managed-identity-client-i'
              )
              ]
            ),
            Option(
              name: ['--namespace', '--ns'],
              description: 'Namespace to deploy the configuration',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--sas-token',
              description: 'The Azure Blob SAS Token for authentication',
              args: [
                Arg(
                name: 'sas-toke'
              )
              ]
            ),
            Option(
              name: ['--scope', '-s'],
              description: 'Specify scope of the operator to be \'namespace\' or \'cluster\'',
              args: [
                Arg(
                name: 'scope',
                suggestions: [

                  FigSuggestion(name: 'cluster'),
                  FigSuggestion(name: 'namespace')
                ]
              )
              ]
            ),
            Option(
              name: '--semver',
              description: 'Semver range within the git source to reconcile with the cluster',
              args: [
                Arg(
                name: 'semve'
              )
              ]
            ),
            Option(
              name: [
                '--service-principal-client-certificate',
                '--sp-client-cert',
              ],
              description: 'The Base64 encoded client certificate for authenticating a service principal with Azure Blob',
              args: [
                Arg(
                name: 'service-principal-client-certificat'
              )
              ]
            ),
            Option(
              name: [
                '--service-principal-client-certificate-password',
                '--sp-cert-password',
              ],
              description: 'The password for the client certificate used to authenticate a service principal with Azure Blob',
              args: [
                Arg(
                name: 'service-principal-client-certificate-passwor'
              )
              ]
            ),
            Option(
              name: [
                '--service-principal-client-certificate-send-chain',
                '--sp-cert-send-chain',
              ],
              description: 'Specify whether to include x5c header in client claims when acquiring a token to enable subject name / issuer based authentication for the client certificate'
            ),
            Option(
              name: ['--service-principal-client-id', '--sp-client-id'],
              description: 'The client ID for authenticating a service principal with Azure Blob, required for this authentication method',
              args: [
                Arg(
                name: 'service-principal-client-i'
              )
              ]
            ),
            Option(
              name: ['--service-principal-client-secret', '--sp-client-secret'],
              description: 'The client secret for authenticating a service principal with Azure Blob',
              args: [
                Arg(
                name: 'service-principal-client-secre'
              )
              ]
            ),
            Option(
              name: ['--service-principal-tenant-id', '--sp-tenant-id'],
              description: 'The tenant ID for authenticating a service principal with Azure Blob, required for this authentication method',
              args: [
                Arg(
                name: 'service-principal-tenant-i'
              )
              ]
            ),
            Option(
              name: '--ssh-private-key',
              description: 'Base64-encoded private ssh key for private repository sync',
              args: [
                Arg(
                name: 'ssh-private-ke'
              )
              ]
            ),
            Option(
              name: '--ssh-private-key-file',
              description: 'File path to private ssh key for private repository sync',
              args: [
                Arg(
                name: 'ssh-private-key-fil'
              )
              ]
            ),
            Option(
              name: '--suspend',
              description: 'Suspend the reconciliation of the source and kustomizations associated with this configuration'
            ),
            Option(
              name: '--tag',
              description: 'Tag within the git source to reconcile with the cluster',
              args: [
                Arg(
                name: 'ta'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum time to reconcile the source before timing out',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Flux v2 Kubernetes configuration',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Name of the Kubernetes cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-type', '-t'],
              description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
              args: [
                Arg(
                name: 'cluster-type',
                suggestions: [

                  FigSuggestion(name: 'connectedClusters'),
                  FigSuggestion(name: 'managedClusters'),
                  FigSuggestion(name: 'provisionedClusters')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the flux configuration',
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
              name: ['--cluster-resource-provider', '--cluster-rp'],
              description: 'Cluster Resource Provider name for this clusterType (Required for provisionedClusters)',
              args: [
                Arg(
                name: 'cluster-resource-provide'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Force delete the flux configuration from the cluster'
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
          description: 'List all Flux v2 Kubernetes configurations',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Name of the Kubernetes cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-type', '-t'],
              description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
              args: [
                Arg(
                name: 'cluster-type',
                suggestions: [

                  FigSuggestion(name: 'connectedClusters'),
                  FigSuggestion(name: 'managedClusters'),
                  FigSuggestion(name: 'provisionedClusters')
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
              name: ['--cluster-resource-provider', '--cluster-rp'],
              description: 'Cluster Resource Provider name for this clusterType (Required for provisionedClusters)',
              args: [
                Arg(
                name: 'cluster-resource-provide'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a Flux v2 Kubernetes configuration',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Name of the Kubernetes cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-type', '-t'],
              description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
              args: [
                Arg(
                name: 'cluster-type',
                suggestions: [

                  FigSuggestion(name: 'connectedClusters'),
                  FigSuggestion(name: 'managedClusters'),
                  FigSuggestion(name: 'provisionedClusters')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the flux configuration',
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
              name: ['--cluster-resource-provider', '--cluster-rp'],
              description: 'Cluster Resource Provider name for this clusterType (Required for provisionedClusters)',
              args: [
                Arg(
                name: 'cluster-resource-provide'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a Flux v2 Kubernetes configuration',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Name of the Kubernetes cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-type', '-t'],
              description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
              args: [
                Arg(
                name: 'cluster-type',
                suggestions: [

                  FigSuggestion(name: 'connectedClusters'),
                  FigSuggestion(name: 'managedClusters'),
                  FigSuggestion(name: 'provisionedClusters')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the flux configuration',
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
              name: '--account-key',
              description: 'The Azure Blob Shared Key for authentication',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--branch',
              description: 'Branch within the git source to reconcile with the cluster',
              args: [
                Arg(
                name: 'branc'
              )
              ]
            ),
            Option(
              name: '--bucket-access-key',
              description: 'Access Key ID used to authenticate with the bucket',
              args: [
                Arg(
                name: 'bucket-access-ke'
              )
              ]
            ),
            Option(
              name: '--bucket-insecure',
              description: 'Communicate with a bucket without TLS',
              args: [
                Arg(
                name: 'bucket-insecure',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--bucket-name',
              description: 'Name of the S3 bucket to sync',
              args: [
                Arg(
                name: 'bucket-nam'
              )
              ]
            ),
            Option(
              name: '--bucket-secret-key',
              description: 'Secret Key used to authenticate with the bucket',
              args: [
                Arg(
                name: 'bucket-secret-ke'
              )
              ]
            ),
            Option(
              name: ['--cluster-resource-provider', '--cluster-rp'],
              description: 'Cluster Resource Provider name for this clusterType (Required for provisionedClusters)',
              args: [
                Arg(
                name: 'cluster-resource-provide'
              )
              ]
            ),
            Option(
              name: '--commit',
              description: 'Commit within the git source to reconcile with the cluster',
              args: [
                Arg(
                name: 'commi'
              )
              ]
            ),
            Option(
              name: '--container-name',
              description: 'Name of the Azure Blob Storage container to sync',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--https-ca-cert',
              description: 'Base64-encoded HTTPS CA certificate for TLS communication with private repository sync',
              args: [
                Arg(
                name: 'https-ca-cer'
              )
              ]
            ),
            Option(
              name: '--https-ca-cert-file',
              description: 'File path to HTTPS CA certificate file for TLS communication with private repository sync',
              args: [
                Arg(
                name: 'https-ca-cert-fil'
              )
              ]
            ),
            Option(
              name: '--https-key',
              description: 'HTTPS token/password for private repository sync',
              args: [
                Arg(
                name: 'https-ke'
              )
              ]
            ),
            Option(
              name: '--https-user',
              description: 'HTTPS username for private repository sync',
              args: [
                Arg(
                name: 'https-use'
              )
              ]
            ),
            Option(
              name: ['--sync-interval', '--interval'],
              description: 'Time between reconciliations of the source on the cluster',
              args: [
                Arg(
                name: 'sync-interva'
              )
              ]
            ),
            Option(
              name: '--kind',
              description: 'Source kind to reconcile',
              args: [
                Arg(
                name: 'kind',
                suggestions: [

                  FigSuggestion(name: 'azblob'),
                  FigSuggestion(name: 'bucket'),
                  FigSuggestion(name: 'git')
                ]
              )
              ]
            ),
            Option(
              name: '--known-hosts',
              description: 'Base64-encoded known_hosts data containing public SSH keys required to access private Git instances',
              args: [
                Arg(
                name: 'known-host'
              )
              ]
            ),
            Option(
              name: '--known-hosts-file',
              description: 'File path to known_hosts contents containing public SSH keys required to access private Git instances',
              args: [
                Arg(
                name: 'known-hosts-fil'
              )
              ]
            ),
            Option(
              name: ['--kustomization', '-k'],
              description: 'Define kustomizations to sync sources with parameters [\'name\', \'path\', \'depends_on\', \'timeout\', \'sync_interval\', \'retry_interval\', \'prune\', \'force\']',
              args: [
                Arg(
                name: 'kustomizatio'
              )
              ]
            ),
            Option(
              name: ['--local-auth-ref', '--local-ref'],
              description: 'Local reference to a kubernetes secret in the configuration namespace to use for communication to the source',
              args: [
                Arg(
                name: 'local-auth-re'
              )
              ]
            ),
            Option(
              name: ['--managed-identity-client-id', '--mi-client-id'],
              description: 'The client ID of the managed identity for authentication with Azure Blob',
              args: [
                Arg(
                name: 'managed-identity-client-i'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--sas-token',
              description: 'The Azure Blob SAS Token for authentication',
              args: [
                Arg(
                name: 'sas-toke'
              )
              ]
            ),
            Option(
              name: '--semver',
              description: 'Semver range within the git source to reconcile with the cluster',
              args: [
                Arg(
                name: 'semve'
              )
              ]
            ),
            Option(
              name: [
                '--service-principal-client-certificate',
                '--sp-client-cert',
              ],
              description: 'The Base64 encoded client certificate for authenticating a service principal with Azure Blob',
              args: [
                Arg(
                name: 'service-principal-client-certificat'
              )
              ]
            ),
            Option(
              name: [
                '--service-principal-client-certificate-password',
                '--sp-cert-password',
              ],
              description: 'The password for the client certificate used to authenticate a service principal with Azure Blob',
              args: [
                Arg(
                name: 'service-principal-client-certificate-passwor'
              )
              ]
            ),
            Option(
              name: [
                '--service-principal-client-certificate-send-chain',
                '--sp-cert-send-chain',
              ],
              description: 'Specify whether to include x5c header in client claims when acquiring a token to enable subject name / issuer based authentication for the client certificate'
            ),
            Option(
              name: ['--service-principal-client-id', '--sp-client-id'],
              description: 'The client ID for authenticating a service principal with Azure Blob, required for this authentication method',
              args: [
                Arg(
                name: 'service-principal-client-i'
              )
              ]
            ),
            Option(
              name: ['--service-principal-client-secret', '--sp-client-secret'],
              description: 'The client secret for authenticating a service principal with Azure Blob',
              args: [
                Arg(
                name: 'service-principal-client-secre'
              )
              ]
            ),
            Option(
              name: ['--service-principal-tenant-id', '--sp-tenant-id'],
              description: 'The tenant ID for authenticating a service principal with Azure Blob, required for this authentication method',
              args: [
                Arg(
                name: 'service-principal-tenant-i'
              )
              ]
            ),
            Option(
              name: '--ssh-private-key',
              description: 'Base64-encoded private ssh key for private repository sync',
              args: [
                Arg(
                name: 'ssh-private-ke'
              )
              ]
            ),
            Option(
              name: '--ssh-private-key-file',
              description: 'File path to private ssh key for private repository sync',
              args: [
                Arg(
                name: 'ssh-private-key-fil'
              )
              ]
            ),
            Option(
              name: '--suspend',
              description: 'Suspend the reconciliation of the source and kustomizations associated with this configuration',
              args: [
                Arg(
                name: 'suspend',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--tag',
              description: 'Tag within the git source to reconcile with the cluster',
              args: [
                Arg(
                name: 'ta'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum time to reconcile the source before timing out',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: ['--url', '-u'],
              description: 'URL of the source to reconcile',
              args: [
                Arg(
                name: 'ur'
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
          name: 'deployed-object',
          description: 'Commands to see deployed objects associated with Flux v2 Kubernetes configurations',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List deployed objects associated with a Flux v2 Kubernetes configuration',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Name of the Kubernetes cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-type', '-t'],
                  description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
                  args: [
                    Arg(
                    name: 'cluster-type',
                    suggestions: [

                      FigSuggestion(name: 'connectedClusters'),
                      FigSuggestion(name: 'managedClusters'),
                      FigSuggestion(name: 'provisionedClusters')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the flux configuration',
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
                  name: ['--cluster-resource-provider', '--cluster-rp'],
                  description: 'Cluster Resource Provider name for this clusterType (Required for provisionedClusters)',
                  args: [
                    Arg(
                    name: 'cluster-resource-provide'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show a deployed object associated with a Flux v2 Kubernetes configuration',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Name of the Kubernetes cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-type', '-t'],
                  description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
                  args: [
                    Arg(
                    name: 'cluster-type',
                    suggestions: [

                      FigSuggestion(name: 'connectedClusters'),
                      FigSuggestion(name: 'managedClusters'),
                      FigSuggestion(name: 'provisionedClusters')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the flux configuration',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--object-kind',
                  description: 'Kind of the object deployed by the configuration on the cluster',
                  args: [
                    Arg(
                    name: 'object-kind',
                    suggestions: [

                      FigSuggestion(name: 'Bucket'),
                      FigSuggestion(name: 'GitRepository'),
                      FigSuggestion(name: 'HelmChart'),
                      FigSuggestion(name: 'HelmRelease'),
                      FigSuggestion(name: 'HelmRepository'),
                      FigSuggestion(name: 'Kustomization')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--object-name',
                  description: 'Name of the object deployed by the configuration on the cluster',
                  args: [
                    Arg(
                    name: 'object-nam'
                  )
                  ]
                ),
                Option(
                  name: '--object-namespace',
                  description: 'Namespace of the object deployed by the configuration on the cluster',
                  args: [
                    Arg(
                    name: 'object-namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-resource-provider', '--cluster-rp'],
                  description: 'Cluster Resource Provider name for this clusterType (Required for provisionedClusters)',
                  args: [
                    Arg(
                    name: 'cluster-resource-provide'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'kustomization',
          description: 'Commands to manage Kustomizations associated with Flux v2 Kubernetes configurations',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Kustomization associated with a Flux v2 Kubernetes configuration',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Name of the Kubernetes cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-type', '-t'],
                  description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
                  args: [
                    Arg(
                    name: 'cluster-type',
                    suggestions: [

                      FigSuggestion(name: 'connectedClusters'),
                      FigSuggestion(name: 'managedClusters'),
                      FigSuggestion(name: 'provisionedClusters')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--kustomization-name', '-k'],
                  description: 'Specify the name of the kustomization to target',
                  args: [
                    Arg(
                    name: 'kustomization-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the flux configuration',
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
                  name: ['--cluster-resource-provider', '--cluster-rp'],
                  description: 'Cluster Resource Provider name for this clusterType (Required for provisionedClusters)',
                  args: [
                    Arg(
                    name: 'cluster-resource-provide'
                  )
                  ]
                ),
                Option(
                  name: ['--dependencies', '--depends-on', '--depends'],
                  description: 'Comma-separated list of kustomization dependencies',
                  args: [
                    Arg(
                    name: 'dependencie'
                  )
                  ]
                ),
                Option(
                  name: '--force',
                  description: 'Re-create resources that cannot be updated on the cluster (i.e. jobs)',
                  args: [
                    Arg(
                    name: 'force',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--sync-interval', '--interval'],
                  description: 'Time between reconciliations of the kustomization on the cluster',
                  args: [
                    Arg(
                    name: 'sync-interva'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--path',
                  description: 'Specify the path in the source that the kustomization should apply',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--prune',
                  description: 'Garbage collect resources deployed by the kustomization on the cluster',
                  args: [
                    Arg(
                    name: 'prune',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--retry-interval',
                  description: 'Time between reconciliations of the kustomization on the cluster on failures, defaults to --sync-interval',
                  args: [
                    Arg(
                    name: 'retry-interva'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum time to reconcile the kustomization before timing out',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Kustomization associated with a Flux v2 Kubernetes configuration',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Name of the Kubernetes cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-type', '-t'],
                  description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
                  args: [
                    Arg(
                    name: 'cluster-type',
                    suggestions: [

                      FigSuggestion(name: 'connectedClusters'),
                      FigSuggestion(name: 'managedClusters'),
                      FigSuggestion(name: 'provisionedClusters')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--kustomization-name', '-k'],
                  description: 'Specify the name of the kustomization to target',
                  args: [
                    Arg(
                    name: 'kustomization-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the flux configuration',
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
                  name: ['--cluster-resource-provider', '--cluster-rp'],
                  description: 'Cluster Resource Provider name for this clusterType (Required for provisionedClusters)',
                  args: [
                    Arg(
                    name: 'cluster-resource-provide'
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
              description: 'List Kustomizations associated with a Flux v2 Kubernetes configuration',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Name of the Kubernetes cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-type', '-t'],
                  description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
                  args: [
                    Arg(
                    name: 'cluster-type',
                    suggestions: [

                      FigSuggestion(name: 'connectedClusters'),
                      FigSuggestion(name: 'managedClusters'),
                      FigSuggestion(name: 'provisionedClusters')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the flux configuration',
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
                  name: ['--cluster-resource-provider', '--cluster-rp'],
                  description: 'Cluster Resource Provider name for this clusterType (Required for provisionedClusters)',
                  args: [
                    Arg(
                    name: 'cluster-resource-provide'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show a Kustomization associated with a Flux v2 Kubernetes configuration',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Name of the Kubernetes cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-type', '-t'],
                  description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
                  args: [
                    Arg(
                    name: 'cluster-type',
                    suggestions: [

                      FigSuggestion(name: 'connectedClusters'),
                      FigSuggestion(name: 'managedClusters'),
                      FigSuggestion(name: 'provisionedClusters')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--kustomization-name', '-k'],
                  description: 'Specify the name of the kustomization to target',
                  args: [
                    Arg(
                    name: 'kustomization-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the flux configuration',
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
                  name: ['--cluster-resource-provider', '--cluster-rp'],
                  description: 'Cluster Resource Provider name for this clusterType (Required for provisionedClusters)',
                  args: [
                    Arg(
                    name: 'cluster-resource-provide'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Kustomization associated with a Flux v2 Kubernetes configuration',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Name of the Kubernetes cluster',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-type', '-t'],
                  description: 'Specify Arc connected clusters or AKS managed clusters or provisioned clusters',
                  args: [
                    Arg(
                    name: 'cluster-type',
                    suggestions: [

                      FigSuggestion(name: 'connectedClusters'),
                      FigSuggestion(name: 'managedClusters'),
                      FigSuggestion(name: 'provisionedClusters')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--kustomization-name', '-k'],
                  description: 'Specify the name of the kustomization to target',
                  args: [
                    Arg(
                    name: 'kustomization-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the flux configuration',
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
                  name: ['--cluster-resource-provider', '--cluster-rp'],
                  description: 'Cluster Resource Provider name for this clusterType (Required for provisionedClusters)',
                  args: [
                    Arg(
                    name: 'cluster-resource-provide'
                  )
                  ]
                ),
                Option(
                  name: ['--dependencies', '--depends-on', '--depends'],
                  description: 'Comma-separated list of kustomization dependencies',
                  args: [
                    Arg(
                    name: 'dependencie'
                  )
                  ]
                ),
                Option(
                  name: '--force',
                  description: 'Re-create resources that cannot be updated on the cluster (i.e. jobs)',
                  args: [
                    Arg(
                    name: 'force',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--sync-interval', '--interval'],
                  description: 'Time between reconciliations of the kustomization on the cluster',
                  args: [
                    Arg(
                    name: 'sync-interva'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--path',
                  description: 'Specify the path in the source that the kustomization should apply',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--prune',
                  description: 'Garbage collect resources deployed by the kustomization on the cluster',
                  args: [
                    Arg(
                    name: 'prune',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--retry-interval',
                  description: 'Time between reconciliations of the kustomization on the cluster on failures, defaults to --sync-interval',
                  args: [
                    Arg(
                    name: 'retry-interva'
                  )
                  ]
                ),
                Option(
                  name: '--timeout',
                  description: 'Maximum time to reconcile the kustomization before timing out',
                  args: [
                    Arg(
                    name: 'timeou'
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
