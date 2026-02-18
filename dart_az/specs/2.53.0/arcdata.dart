// Auto-generated from TypeScript source: arcdata.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `arcdata` CLI
final FigSpec arcdataSpec = FigSpec(
  name: 'arcdata',
  description: 'Commands for using Azure Arc-enabled data services',
  subcommands: [

    Subcommand(
      name: 'ad-connector',
      description: 'Manage Active Directory authentication for Azure Arc data services',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new Active Directory connector',
          options: [

            Option(
              name: '--account-provisioning',
              description: 'Value indicating whether service account provisioning for data services should be automatic or manual. Allowed values are: \'manual\' or \'automatic\'',
              args: [
                Arg(
                name: 'account-provisionin'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Active Directory connector',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--nameserver-addresses',
              description: 'List of Active Directory DNS server IP addresses separated by \',\' (e.g. 10.10.10.11,10.10.10.12,10.10.10.13)',
              args: [
                Arg(
                name: 'nameserver-addresse'
              )
              ]
            ),
            Option(
              name: '--realm',
              description: 'The name of the Active Directory domain in uppercase (e.g CONTOSO.LOCAL)',
              args: [
                Arg(
                name: 'real'
              )
              ]
            ),
            Option(
              name: '--data-controller-name',
              description: 'The name of the Arc data controller associated with this Active Directory connector',
              args: [
                Arg(
                name: 'data-controller-nam'
              )
              ]
            ),
            Option(
              name: '--dns-domain-name',
              description: 'The DNS domain name (e.g. contoso.com)',
              args: [
                Arg(
                name: 'dns-domain-nam'
              )
              ]
            ),
            Option(
              name: '--dns-replicas',
              description: 'The number of copies for DNS proxy service',
              args: [
                Arg(
                name: 'dns-replica'
              )
              ]
            ),
            Option(
              name: '--domain-service-account-secret',
              description: 'The name of the Kubernetes secret containing the credentials for the pre-created Active Directory account with permissions to create and manage accounts in the given OU. Alternatively, setting the \'DOMAIN_SERVICE_ACCOUNT_USERNAME\' and \'DOMAIN_SERVICE_ACCOUNT_PASSWORD\' env variables will create this secret automatically',
              args: [
                Arg(
                name: 'domain-service-account-secre'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace to deploy the Active Directory connector',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--netbios-domain-name',
              description: 'The NETBIOS name of the Active Directory domain (e.g. CONTOSO)',
              args: [
                Arg(
                name: 'netbios-domain-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--ou-distinguished-name',
              description: 'The distinguished name of the pre-created Organizational Unit (OU) in the Active Directory domain. (e.g. OU=arcou,DC=contoso,DC=com)',
              args: [
                Arg(
                name: 'ou-distinguished-nam'
              )
              ]
            ),
            Option(
              name: '--prefer-k8s-dns',
              description: 'Use Kubernetes DNS Server responses over the Active Directory DNS server responses for IP address lookup. Allowed values are \'true\' or \'false\'',
              args: [
                Arg(
                name: 'prefer-k8s-dn'
              )
              ]
            ),
            Option(
              name: '--primary-ad-dc-hostname',
              description: 'The hostname of the primary AD domain controller',
              args: [
                Arg(
                name: 'primary-ad-dc-hostnam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group of the Arc data controller associated with this Active Directory connector',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--secondary-ad-dc-hostnames',
              description: 'List of the hostnames of the secondary Active Directory domain controller separated by \',\'(e.g. azdc02.contoso.local,azdc03.contoso.local)',
              args: [
                Arg(
                name: 'secondary-ad-dc-hostname'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Use local Kubernetes APIs to perform this action',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an existing Active Directory connector',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Active Directory connector',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--data-controller-name',
              description: 'The name of the Arc data controller associated with this Active Directory connector',
              args: [
                Arg(
                name: 'data-controller-nam'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace containing the Active Directory connector',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group of the Arc data controller associated with this Active Directory connector',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Use local Kubernetes APIs to perform this action',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all Active Directory connectors',
          options: [

            Option(
              name: '--data-controller-name',
              description: 'The name of the Arc data controller associated with the Active Directory connectors',
              args: [
                Arg(
                name: 'data-controller-nam'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace containing the Active Directory connectors',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group containing the Active Directory connectors',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Use local Kubernetes APIs to perform this action',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of an existing Active Directory connector',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Active Directory connector',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--data-controller-name',
              description: 'The name of the Arc data controller associated with this Active Directory connector',
              args: [
                Arg(
                name: 'data-controller-nam'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace containing the Active Directory connector',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group of the Arc data controller associated with this Active Directory connector',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Use local Kubernetes APIs to perform this action',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the settings of an existing Active Directory connector',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Active Directory connector',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--data-controller-name',
              description: 'The name of the Arc data controller associated with this Active Directory connector',
              args: [
                Arg(
                name: 'data-controller-nam'
              )
              ]
            ),
            Option(
              name: '--dns-replicas',
              description: 'The number of copies for DNS proxy service',
              args: [
                Arg(
                name: 'dns-replica'
              )
              ]
            ),
            Option(
              name: '--domain-service-account-secret',
              description: 'The name of the Kubernetes secret containing the credentials for the pre-created Active Directory account with permissions to create and manage accounts in the given OU',
              args: [
                Arg(
                name: 'domain-service-account-secre'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace containing Active Directory connector',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--nameserver-addresses',
              description: 'List of Active Directory DNS server IP addresses separated by \',\' (e.g. 10.10.10.11,10.10.10.12,10.10.10.13)',
              args: [
                Arg(
                name: 'nameserver-addresse'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--prefer-k8s-dns',
              description: 'Use Kubernetes DNS Server responses over the Active Directory DNS server responses for IP address lookup. Allowed values are \'true\' or \'false\'',
              args: [
                Arg(
                name: 'prefer-k8s-dn'
              )
              ]
            ),
            Option(
              name: '--primary-ad-dc-hostname',
              description: 'The hostname of the primary AD domain controller',
              args: [
                Arg(
                name: 'primary-ad-dc-hostnam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group of the Arc data controller associated with this Active Directory connector',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--secondary-ad-dc-hostnames',
              description: 'List of the hostnames of the secondary Active Directory domain controller separated by \',\'(e.g. azdc02.contoso.local,azdc03.contoso.local)',
              args: [
                Arg(
                name: 'secondary-ad-dc-hostname'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Use local Kubernetes APIs to perform this action',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'dc',
      description: 'Create, delete, and manage data controllers',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create data controller',
          options: [

            Option(
              name: '--connectivity-mode',
              description: 'The connectivity to Azure - indirect or direct - which the data controller should operate in',
              args: [
                Arg(
                name: 'connectivity-mod'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name for the data controller',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group in which the data controller resource should be added',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--annotations',
              description: 'Comma-separated list of annotations to apply all data controller resources',
              args: [
                Arg(
                name: 'annotation'
              )
              ]
            ),
            Option(
              name: '--auto-upload-logs',
              description: 'Enable auto upload logs',
              args: [
                Arg(
                name: 'auto-upload-logs',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--auto-upload-metrics',
              description: 'Enable auto upload metrics',
              args: [
                Arg(
                name: 'auto-upload-metrics',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--cluster-name',
              description: 'Name of the Kubernetes cluster',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--custom-location',
              description: 'The name of the custom location',
              args: [
                Arg(
                name: 'custom-locatio'
              )
              ]
            ),
            Option(
              name: '--image-tag',
              description: 'Arc data services image tag to use for the data controller',
              args: [
                Arg(
                name: 'image-ta'
              )
              ]
            ),
            Option(
              name: '--infrastructure',
              description: 'The infrastructure on which the data controller will be running on. Allowed values: [\'aws\', \'gcp\', \'azure\', \'alibaba\', \'onpremises\', \'other\', \'auto\']',
              args: [
                Arg(
                name: 'infrastructur'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace to deploy the data controller into. If it exists already it will be used. If it does not exist, an attempt will be made to create it first',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'Comma-separated list of labels to apply to all data controller resources',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'The Azure location in which the data controller metadata will be stored (e.g. eastus)',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--logs-ui-private-key-file',
              description: 'Path to the file containing a PEM formatted certificate private key to be used for the Logs UI dashboard endpoint',
              args: [
                Arg(
                name: 'logs-ui-private-key-fil'
              )
              ]
            ),
            Option(
              name: '--logs-ui-public-key-file',
              description: 'Path to the file containing a PEM formatted certificate to be used for the Logs UI dashboard endpoint',
              args: [
                Arg(
                name: 'logs-ui-public-key-fil'
              )
              ]
            ),
            Option(
              name: '--metrics-ui-private-key-file',
              description: 'Path to the file containing a PEM formatted certificate private key to be used for the Metrics UI dashboard endpoint',
              args: [
                Arg(
                name: 'metrics-ui-private-key-fil'
              )
              ]
            ),
            Option(
              name: '--metrics-ui-public-key-file',
              description: 'Path to the file containing a PEM formatted certificate to be used for the Metrics UI dashboard endpoint',
              args: [
                Arg(
                name: 'metrics-ui-public-key-fil'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--path', '-p'],
              description: 'The path to a directory containing a custom configuration profile to use. Run az arcdata dc config init to create a custom configuration profile',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--profile-name',
              description: 'The name of an existing configuration profile. Run az arcdata dc config list to see available options. One of the following: [\'azure-arc-ake\', \'azure-arc-aks-default-storage\', \'azure-arc-aks-hci\', \'azure-arc-aks-premium-storage\', \'azure-arc-azure-openshift\', \'azure-arc-eks\', \'azure-arc-gke\', \'azure-arc-kubeadm\', \'azure-arc-openshift\', \'azure-arc-unit-test\']',
              args: [
                Arg(
                name: 'profile-nam'
              )
              ]
            ),
            Option(
              name: '--service-annotations',
              description: 'Comma-separated list of annotations to apply to all external data controller services',
              args: [
                Arg(
                name: 'service-annotation'
              )
              ]
            ),
            Option(
              name: '--service-labels',
              description: 'Comma-separated list of labels to apply to all external data controller services',
              args: [
                Arg(
                name: 'service-label'
              )
              ]
            ),
            Option(
              name: '--storage-annotations',
              description: 'Comma-separated list of annotations to apply to all PVCs created by the data controller',
              args: [
                Arg(
                name: 'storage-annotation'
              )
              ]
            ),
            Option(
              name: '--storage-class',
              description: 'The storage class to be used for all data and logs persistent volumes for all data controller pods that require them',
              args: [
                Arg(
                name: 'storage-clas'
              )
              ]
            ),
            Option(
              name: '--storage-labels',
              description: 'Comma-separated list of labels to apply to all PVCs created by the data controller',
              args: [
                Arg(
                name: 'storage-label'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Create data controller using local Kubernetes APIs',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete data controller',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Data controller name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--force', '-f'],
              description: 'Force delete data controller and all of its data services',
              args: [
                Arg(
                name: 'forc'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace in which the data controller exists',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group in which the data controller exists',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Use local Kubernetes APIs to perform this action',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Delete data controller without confirmation prompt'
            )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Export metrics, logs or usage',
          options: [

            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace in which the data controller exists',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: ['--path', '-p'],
              description: 'The full or relative path including the file name of the file to be exported',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--type', '-t'],
              description: 'The type of data to be exported. Options: logs, metrics, and usage',
              args: [
                Arg(
                name: 'typ'
              )
              ]
            ),
            Option(
              name: ['--force', '-f'],
              description: 'Force create output file. Overwrites any existing file at the same path',
              args: [
                Arg(
                name: 'forc'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Use local Kubernetes APIs to perform this action',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List Azure Arc data controllers by resource group or subscription',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group containing the Arc data controller(s)',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-upgrades',
          description: 'List available upgrade versions',
          options: [

            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace in which the data controller exists',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'List available data controller versions using local Kubernetes APIs',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update data controller',
          options: [

            Option(
              name: '--auto-upload-logs',
              description: 'Enable auto upload logs',
              args: [
                Arg(
                name: 'auto-upload-logs',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--auto-upload-metrics',
              description: 'Enable auto upload metrics',
              args: [
                Arg(
                name: 'auto-upload-metrics',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--desired-version', '-v'],
              description: 'The desired version tag to which the data controller will be upgraded, or empty to use the latest valid version',
              args: [
                Arg(
                name: 'desired-versio'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace with a deployed data controller',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--maintenance-duration',
              description: 'Duration of the default maintenance window',
              args: [
                Arg(
                name: 'maintenance-duratio'
              )
              ]
            ),
            Option(
              name: '--maintenance-enabled',
              description: 'Set the enabled flag on the default maintenance window',
              args: [
                Arg(
                name: 'maintenance-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--maintenance-recurrence',
              description: 'Recurring interval for the default maintenance window',
              args: [
                Arg(
                name: 'maintenance-recurrenc'
              )
              ]
            ),
            Option(
              name: '--maintenance-start',
              description: 'Date time of the start of the first default maintenance window',
              args: [
                Arg(
                name: 'maintenance-star'
              )
              ]
            ),
            Option(
              name: '--maintenance-time-zone',
              description: 'Timezone used to calculate the default maintenance window',
              args: [
                Arg(
                name: 'maintenance-time-zon'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Data controller name',
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
              description: 'The Azure resource group in which the data controller exists',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Use local Kubernetes APIs to perform this action',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade data controller',
          options: [

            Option(
              name: ['--desired-version', '-v'],
              description: 'The desired version tag to which the data controller will be upgraded, or empty to use the latest valid version',
              args: [
                Arg(
                name: 'desired-versio'
              )
              ]
            ),
            Option(
              name: ['--dry-run', '-d'],
              description: 'Indicates which instance would be upgraded but does not actually upgrade the instances',
              args: [
                Arg(
                name: 'dry-ru'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace in which the data controller exists',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the data controller',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'If given, the command will start the upgrade, but will not wait for the entire upgrade to complete. Upgrade will continue in the background'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group in which the data controller exists',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--target',
              description: 'Option \'--target\' has been deprecated and will be removed in a future release. Use \'--desired-version\' instead. The desired version tag to which the data controller will be upgraded, or empty to use the latest valid version',
              args: [
                Arg(
                name: 'targe'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Upgrade data controller using local Kubernetes APIs',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'upload',
          description: 'Upload exported data file',
          options: [

            Option(
              name: ['--path', '-p'],
              description: 'The full or relative path including the file name of the file to be uploaded',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'config',
          description: 'Configuration commands',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a value for a json path in a config file',
              options: [

                Option(
                  name: ['--config-file', '-c'],
                  description: 'Option \'-c\' has been deprecated and will be removed in a future release. Use \'-p\' instead. Data controller config file path of the config you would like to set, i.e. custom/control.json',
                  args: [
                    Arg(
                    name: 'config-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--json-values', '-j'],
                  description: 'A key value pair list of json paths to values: key1.subkey1=value1,key2.subkey2=value2. You may provide inline json values such as: key=\'{"kind":"cluster","name":"test-cluster"}\' or provide a file path, such as key=./values.json. The add command does NOT support conditionals. If the inline value you are providing is a key value pair itself with "=" and "," escape those characters. For example, key1="key2=val2,key3=val3". See http://jsonpatch.com/ for examples of how your path should look. If you would like to access an array, you must do so by indicating the index, such as key.0=value',
                  args: [
                    Arg(
                    name: 'json-value'
                  )
                  ]
                ),
                Option(
                  name: ['--path', '-p'],
                  description: 'Data controller config file path of the config you would like to set, i.e. custom/control.json',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'init',
              description: 'Initialize a data controller configuration profile that can be used with az arcdata dc create',
              options: [

                Option(
                  name: ['--force', '-f'],
                  description: 'Force overwrite of the target file',
                  args: [
                    Arg(
                    name: 'forc'
                  )
                  ]
                ),
                Option(
                  name: ['--path', '-p'],
                  description: 'File path of where you would like the config profile placed, defaults to /custom',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--source', '-s'],
                  description: 'Config profile source: [\'azure-arc-ake\', \'azure-arc-aks-default-storage\', \'azure-arc-aks-dev-test\', \'azure-arc-aks-hci\', \'azure-arc-aks-premium-storage\', \'azure-arc-azure-openshift\', \'azure-arc-eks\', \'azure-arc-gke\', \'azure-arc-kubeadm\', \'azure-arc-kubeadm-dev-test\', \'azure-arc-openshift\', \'azure-arc-unit-test\']',
                  args: [
                    Arg(
                    name: 'sourc'
                  )
                  ]
                ),
                Option(
                  name: ['--target', '-t'],
                  description: 'Option \'-t\' has been deprecated and will be removed in a future release. Use \'-p\' instead. File path of where you would like the config profile placed, defaults to /custom',
                  args: [
                    Arg(
                    name: 'targe'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List available configuration profile choices',
              options: [

                Option(
                  name: ['--config-profile', '-c'],
                  description: 'Default config profile: [\'azure-arc-ake\', \'azure-arc-aks-default-storage\', \'azure-arc-aks-dev-test\', \'azure-arc-aks-hci\', \'azure-arc-aks-premium-storage\', \'azure-arc-azure-openshift\', \'azure-arc-eks\', \'azure-arc-gke\', \'azure-arc-kubeadm\', \'azure-arc-kubeadm-dev-test\', \'azure-arc-openshift\', \'azure-arc-unit-test\']',
                  args: [
                    Arg(
                    name: 'config-profil'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'patch',
              description: 'Patch a config file based on a json patch file',
              options: [

                Option(
                  name: ['--config-file', '-c'],
                  description: 'Option \'-c\' has been deprecated and will be removed in a future release. Use \'--path\' instead. Data controller config file path of the config you would like to set, i.e. custom/control.json',
                  args: [
                    Arg(
                    name: 'config-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--patch-file', '-p'],
                  description: 'Path to a patch json file that is based off the jsonpatch library: http://jsonpatch.com/. You must start your patch json file with a key called "patch", whose value is an array of patch operations you intend to make. For the path of a patch operation, you may use dot notation, such as key1.key2 for most operations. If you would like to do a replace operation, and you are replacing a value in an array that requires a conditional, please use the jsonpath notation by beginning your path with a \$. This will allow you to do a conditional such as \$.key1.key2[?(@.key3=="someValue"].key4. See the examples below. For additional help with conditionals, See: https://jsonpath.com/',
                  args: [
                    Arg(
                    name: 'patch-fil'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Data controller config file path of the config you would like to set, i.e. custom/control.json',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove a value for a json path in a config file',
              options: [

                Option(
                  name: ['--config-file', '-c'],
                  description: 'Option \'-c\' has been deprecated and will be removed in a future release. Use \'-p\' instead. Data controller config file path of the config you would like to set, i.e. custom/control.json',
                  args: [
                    Arg(
                    name: 'config-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--json-path', '-j'],
                  description: 'A list of json paths based on the jsonpatch library that indicates which values you would like removed, such as: key1.subkey1,key2.subkey2. The remove command does NOT support conditionals. See http://jsonpatch.com/ for examples of how your path should look. If you would like to access an array, you must do so by indicating the index, such as key.0=value',
                  args: [
                    Arg(
                    name: 'json-pat'
                  )
                  ]
                ),
                Option(
                  name: ['--path', '-p'],
                  description: 'Data controller config file path of the config you would like to set, i.e. custom/control.json',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'replace',
              description: 'Replace a value for a json path in a config file',
              options: [

                Option(
                  name: ['--config-file', '-c'],
                  description: 'Option \'-c\' has been deprecated and will be removed in a future release. Use \'-p\' instead. Data controller config file path of the config you would like to set, i.e. custom/control.json',
                  args: [
                    Arg(
                    name: 'config-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--json-values', '-j'],
                  description: 'A key value pair list of json paths to values: key1.subkey1=value1,key2.subkey2=value2. You may provide inline json values such as: key=\'{"kind":"cluster","name":"test-cluster"}\' or provide a file path, such as key=./values.json. The replace command supports conditionals through the jsonpath library. To use this, start your path with a \$. This will allow you to do a conditional such as -j \$.key1.key2[?(@.key3=="someValue"].key4=value. If the inline value you are providing is a key value pair itself with "=" and "," escape those characters. For example, key1="key2=val2,key3=val3". You may see examples below. For additional help, See: https://jsonpath.com/',
                  args: [
                    Arg(
                    name: 'json-value'
                  )
                  ]
                ),
                Option(
                  name: ['--path', '-p'],
                  description: 'Data controller config file path of the config you would like to set, i.e. custom/control.json',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Return the config of the data controller custom resource',
              options: [

                Option(
                  name: ['--k8s-namespace', '-k'],
                  description: 'The Kubernetes namespace in which the data controller exists',
                  args: [
                    Arg(
                    name: 'k8s-namespac'
                  )
                  ]
                ),
                Option(
                  name: '--use-k8s',
                  description: 'Use local Kubernetes APIs to perform this action',
                  args: [
                    Arg(
                    name: 'use-k8'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'debug',
          description: 'Debug data controller',
          subcommands: [

            Subcommand(
              name: 'controldb-cdc',
              description: 'Enable/disable CDC on Data Controller Database and Tables - for troubleshooting purposes only',
              options: [

                Option(
                  name: ['--k8s-namespace', '-k'],
                  description: 'Kubernetes namespace of the existing data controller',
                  args: [
                    Arg(
                    name: 'k8s-namespac'
                  )
                  ]
                ),
                Option(
                  name: '--enable',
                  description: 'Enable or disable change data capture',
                  args: [
                    Arg(
                    name: 'enable',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--retention-hours',
                  description: 'CDC retention period, specified in hours. Allowed values are 1 to 24',
                  args: [
                    Arg(
                    name: 'retention-hour'
                  )
                  ]
                ),
                Option(
                  name: '--use-k8s',
                  description: 'Use local Kubernetes APIs to perform this action',
                  args: [
                    Arg(
                    name: 'use-k8'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'copy-logs',
              description: 'Copy logs',
              options: [

                Option(
                  name: ['--k8s-namespace', '-k'],
                  description: 'Kubernetes namespace of the data controller',
                  args: [
                    Arg(
                    name: 'k8s-namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'Copy the logs for the containers with similar name, Optional, by default copies logs for all containers. Cannot be specified multiple times. If specified multiple times, last one will be used',
                  args: [
                    Arg(
                    name: 'containe'
                  )
                  ]
                ),
                Option(
                  name: '--exclude-arcdata-logs',
                  description: 'Whether or not to exclude arc data services logs from result folder. The default value is False which includes all arc data services container logs'
                ),
                Option(
                  name: '--exclude-cluster-info',
                  description: 'Whether or not to exclude kubernetes resource info from result folder per namespace. The default value is False which includes namespaced resource info'
                ),
                Option(
                  name: '--exclude-controldb',
                  description: 'Whether or not to exclude a backup of controldb from result folder. The default value is False which includes a controldb backup'
                ),
                Option(
                  name: '--exclude-dumps',
                  description: 'Whether or not to exclude dumps from result folder. The default value is False which includes dumps'
                ),
                Option(
                  name: '--exclude-system-logs',
                  description: 'Whether or not to exclude kube-system and azure-arc namespace logs from collection. The default value is False which includes kube-system and connectedk8s logs, if accessible'
                ),
                Option(
                  name: '--pod',
                  description: 'Copy the logs for the pods with similar name. Optional, by default copies logs for all pods. Cannot be specified multiple times. If specified multiple times, last one will be used',
                  args: [
                    Arg(
                    name: 'po'
                  )
                  ]
                ),
                Option(
                  name: '--resource-kind',
                  description: 'Copy the logs for the resource of a particular kind. Cannot specified multiple times. If specified multiple times, last one will be used. If specified, --resource-name should also be specified to identify the resource',
                  args: [
                    Arg(
                    name: 'resource-kin'
                  )
                  ]
                ),
                Option(
                  name: '--resource-name',
                  description: 'Copy the logs for the resource of the specified name. Cannot be specified multiple times. If specified multiple times, last one will be used. If specified, --resource-kind should also be specified to identify the resource',
                  args: [
                    Arg(
                    name: 'resource-nam'
                  )
                  ]
                ),
                Option(
                  name: '--skip-compress',
                  description: 'Whether or not to skip compressing the result folder. The default value is False which compresses the result folder'
                ),
                Option(
                  name: ['--target-folder', '-d'],
                  description: 'Target folder path to copy logs to. Optional, by default creates the result in the local folder. Cannot be specified multiple times. If specified multiple times, last one will be used',
                  args: [
                    Arg(
                    name: 'target-folde'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout', '-t'],
                  description: 'The number of seconds to wait for the command to complete. The default value is 0 which is unlimited',
                  args: [
                    Arg(
                    name: 'timeou'
                  )
                  ]
                ),
                Option(
                  name: '--use-k8s',
                  description: 'Use local Kubernetes APIs to perform this action',
                  args: [
                    Arg(
                    name: 'use-k8'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'dump',
              description: 'Trigger memory dump',
              options: [

                Option(
                  name: ['--k8s-namespace', '-k'],
                  description: 'Kubernetes namespace of the data controller',
                  args: [
                    Arg(
                    name: 'k8s-namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--container', '-c'],
                  description: 'The target container to be triggered for dumping the running processes',
                  args: [
                    Arg(
                    name: 'container',
                    suggestions: [

                      FigSuggestion(name: 'controller')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--target-folder', '-d'],
                  description: 'Target folder to copy the dump out',
                  args: [
                    Arg(
                    name: 'target-folde'
                  )
                  ]
                ),
                Option(
                  name: '--use-k8s',
                  description: 'Use local Kubernetes APIs to perform this action',
                  args: [
                    Arg(
                    name: 'use-k8'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'restore-controldb-snapshot',
              description: 'Restores a unique copy of ControlDB from backup - for troubleshooting purposes only',
              options: [

                Option(
                  name: ['--backup-file', '-f'],
                  description: 'Existing Controller Database backup file - must end in \'.bak\', will be restored under a unique database name based on execution timestamp',
                  args: [
                    Arg(
                    name: 'backup-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--k8s-namespace', '-k'],
                  description: 'Kubernetes namespace of the existing data controller',
                  args: [
                    Arg(
                    name: 'k8s-namespac'
                  )
                  ]
                ),
                Option(
                  name: '--use-k8s',
                  description: 'Use local Kubernetes APIs to perform this action',
                  args: [
                    Arg(
                    name: 'use-k8'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'endpoint',
          description: 'Endpoint commands',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the data controller endpoint',
              options: [

                Option(
                  name: ['--k8s-namespace', '-k'],
                  description: 'The Kubernetes namespace in which the data controller exists',
                  args: [
                    Arg(
                    name: 'k8s-namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--endpoint-name', '-e'],
                  description: 'Arc data controller endpoint name',
                  args: [
                    Arg(
                    name: 'endpoint-nam'
                  )
                  ]
                ),
                Option(
                  name: '--use-k8s',
                  description: 'Use local Kubernetes APIs to perform this action',
                  args: [
                    Arg(
                    name: 'use-k8'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'status',
          description: 'Status commands',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show the status of the data controller',
              options: [

                Option(
                  name: ['--k8s-namespace', '-k'],
                  description: 'The Kubernetes namespace in which the data controller exists',
                  args: [
                    Arg(
                    name: 'k8s-namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name for the data controller',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The Azure resource group in which the data controller exists',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--use-k8s',
                  description: 'Use local Kubernetes APIs to perform this action',
                  args: [
                    Arg(
                    name: 'use-k8'
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
      name: 'resource-kind',
      description: 'Resource-kind commands to define and template custom resources on your cluster',
      subcommands: [

        Subcommand(
          name: 'get',
          description: 'Get the Arc resource-kind\'s template file',
          options: [

            Option(
              name: ['--kind', '-k'],
              description: 'The kind of arc resource you want the template file for',
              args: [
                Arg(
                name: 'kin'
              )
              ]
            ),
            Option(
              name: ['--dest', '-d'],
              description: 'The directory where you"d like to place the template files',
              args: [
                Arg(
                name: 'des'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the available custom resource kinds for Arc that can be defined and created'
        )
      ]
    )
  ]
);
