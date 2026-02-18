// Auto-generated from TypeScript source: k8s-extension.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `k8s-extension` CLI
final FigSpec k8sExtensionSpec = FigSpec(
  name: 'k8s-extension',
  description: 'Commands to manage Kubernetes Extensions',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a Kubernetes Cluster Extension, including purchasing an extension Offer from Azure Marketplace (AKS only). Please refer to the example at the end to see how to create an extension or purchase an extension offer',
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
          description: 'Specify Arc clusters or AKS managed clusters or Arc appliances or provisionedClusters',
          args: [
            Arg(
            name: 'cluster-type',
            suggestions: [

              FigSuggestion(name: 'appliances'),
              FigSuggestion(name: 'connectedClusters'),
              FigSuggestion(name: 'managedClusters'),
              FigSuggestion(name: 'provisionedClusters')
            ]
          )
          ]
        ),
        Option(
          name: '--extension-type',
          description: 'Name of the extension type',
          args: [
            Arg(
            name: 'extension-typ'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the extension instance',
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
          name: ['--auto-upgrade-minor-version', '--auto-upgrade'],
          description: 'Automatically upgrade minor version of the extension instance',
          args: [
            Arg(
            name: 'auto-upgrade-minor-version',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
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
          name: ['--configuration-settings', '--config'],
          description: 'Configuration Settings as key=value pair. Repeat parameter for each setting',
          args: [
            Arg(
            name: 'configuration-setting'
          )
          ]
        ),
        Option(
          name: ['--config-settings-file', '--config-file'],
          description: 'JSON file path for configuration-settings',
          args: [
            Arg(
            name: 'config-settings-fil'
          )
          ]
        ),
        Option(
          name: ['--config-protected-settings', '--config-protected'],
          description: 'Configuration Protected Settings as key=value pair. Repeat parameter for each setting',
          args: [
            Arg(
            name: 'config-protected-setting'
          )
          ]
        ),
        Option(
          name: ['--config-protected-settings-file', '--config-protected-file'],
          description: 'JSON file path for configuration-protected-settings',
          args: [
            Arg(
            name: 'config-protected-settings-fil'
          )
          ]
        ),
        Option(
          name: '--config-settings',
          description: 'Option \'--config-settings\' has been deprecated and will be removed in a future release. Use \'--configuration-settings\' instead. Configuration Settings as key=value pair. Repeat parameter for each setting',
          args: [
            Arg(
            name: 'config-setting'
          )
          ]
        ),
        Option(
          name: '--configuration-protected-settings',
          description: 'Option \'--configuration-protected-settings\' has been deprecated and will be removed in a future release. Use \'--config-protected-settings\' instead. Configuration Protected Settings as key=value pair. Repeat parameter for each setting',
          args: [
            Arg(
            name: 'configuration-protected-setting'
          )
          ]
        ),
        Option(
          name: '--configuration-protected-settings-file',
          description: 'Option \'--configuration-protected-settings-file\' has been deprecated and will be removed in a future release. Use \'--config-protected-file\' instead. JSON file path for configuration-protected-settings',
          args: [
            Arg(
            name: 'configuration-protected-settings-fil'
          )
          ]
        ),
        Option(
          name: '--configuration-settings-file',
          description: 'Option \'--configuration-settings-file\' has been deprecated and will be removed in a future release. Use \'--config-settings-file\' instead. JSON file path for configuration-settings',
          args: [
            Arg(
            name: 'configuration-settings-fil'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--plan-name',
          description: 'The plan name is referring to the Plan ID of the extension that is being taken from Marketplace portal under Usage Information + Support',
          args: [
            Arg(
            name: 'plan-nam'
          )
          ]
        ),
        Option(
          name: '--plan-product',
          description: 'The plan product is referring to the Product ID of the extension that is being taken from Marketplace portal under Usage Information + Support. An example of this is the name of the ISV offering used',
          args: [
            Arg(
            name: 'plan-produc'
          )
          ]
        ),
        Option(
          name: '--plan-publisher',
          description: 'The plan publisher is referring to the Publisher ID of the extension that is being taken from Marketplace portal under Usage Information + Support',
          args: [
            Arg(
            name: 'plan-publishe'
          )
          ]
        ),
        Option(
          name: '--release-namespace',
          description: 'Specify the namespace to install the extension release',
          args: [
            Arg(
            name: 'release-namespac'
          )
          ]
        ),
        Option(
          name: '--release-train',
          description: 'Specify the release train for the extension type',
          args: [
            Arg(
            name: 'release-trai'
          )
          ]
        ),
        Option(
          name: '--scope',
          description: 'Specify the extension scope',
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
          name: '--target-namespace',
          description: 'Specify the target namespace to install to for the extension instance. This parameter is required if extension scope is set to \'namespace\'',
          args: [
            Arg(
            name: 'target-namespac'
          )
          ]
        ),
        Option(
          name: '--version',
          description: 'Specify the version to install for the extension instance if --auto-upgrade-minor-version is not enabled',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a Kubernetes Extension',
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
          description: 'Specify Arc clusters or AKS managed clusters or Arc appliances or provisionedClusters',
          args: [
            Arg(
            name: 'cluster-type',
            suggestions: [

              FigSuggestion(name: 'appliances'),
              FigSuggestion(name: 'connectedClusters'),
              FigSuggestion(name: 'managedClusters'),
              FigSuggestion(name: 'provisionedClusters')
            ]
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the extension instance',
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
          description: 'Specify whether to force delete the extension from the cluster'
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Ignore confirmation prompts'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List Kubernetes Extensions',
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
          description: 'Specify Arc clusters or AKS managed clusters or Arc appliances or provisionedClusters',
          args: [
            Arg(
            name: 'cluster-type',
            suggestions: [

              FigSuggestion(name: 'appliances'),
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
      description: 'Show a Kubernetes Extension',
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
          description: 'Specify Arc clusters or AKS managed clusters or Arc appliances or provisionedClusters',
          args: [
            Arg(
            name: 'cluster-type',
            suggestions: [

              FigSuggestion(name: 'appliances'),
              FigSuggestion(name: 'connectedClusters'),
              FigSuggestion(name: 'managedClusters'),
              FigSuggestion(name: 'provisionedClusters')
            ]
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the extension instance',
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
      description: 'Update mutable properties of a Kubernetes Extension',
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
          description: 'Specify Arc clusters or AKS managed clusters or Arc appliances or provisionedClusters',
          args: [
            Arg(
            name: 'cluster-type',
            suggestions: [

              FigSuggestion(name: 'appliances'),
              FigSuggestion(name: 'connectedClusters'),
              FigSuggestion(name: 'managedClusters'),
              FigSuggestion(name: 'provisionedClusters')
            ]
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the extension instance',
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
          name: ['--auto-upgrade-minor-version', '--auto-upgrade'],
          description: 'Automatically upgrade minor version of the extension instance',
          args: [
            Arg(
            name: 'auto-upgrade-minor-version',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
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
          name: ['--configuration-settings', '--config'],
          description: 'Configuration Settings as key=value pair. Repeat parameter for each setting',
          args: [
            Arg(
            name: 'configuration-setting'
          )
          ]
        ),
        Option(
          name: ['--config-settings-file', '--config-file'],
          description: 'JSON file path for configuration-settings',
          args: [
            Arg(
            name: 'config-settings-fil'
          )
          ]
        ),
        Option(
          name: ['--config-protected-settings', '--config-protected'],
          description: 'Configuration Protected Settings as key=value pair. Repeat parameter for each setting',
          args: [
            Arg(
            name: 'config-protected-setting'
          )
          ]
        ),
        Option(
          name: ['--config-protected-settings-file', '--config-protected-file'],
          description: 'JSON file path for configuration-protected-settings',
          args: [
            Arg(
            name: 'config-protected-settings-fil'
          )
          ]
        ),
        Option(
          name: '--config-settings',
          description: 'Option \'--config-settings\' has been deprecated and will be removed in a future release. Use \'--configuration-settings\' instead. Configuration Settings as key=value pair. Repeat parameter for each setting',
          args: [
            Arg(
            name: 'config-setting'
          )
          ]
        ),
        Option(
          name: '--configuration-protected-settings',
          description: 'Option \'--configuration-protected-settings\' has been deprecated and will be removed in a future release. Use \'--config-protected-settings\' instead. Configuration Protected Settings as key=value pair. Repeat parameter for each setting',
          args: [
            Arg(
            name: 'configuration-protected-setting'
          )
          ]
        ),
        Option(
          name: '--configuration-protected-settings-file',
          description: 'Option \'--configuration-protected-settings-file\' has been deprecated and will be removed in a future release. Use \'--config-protected-file\' instead. JSON file path for configuration-protected-settings',
          args: [
            Arg(
            name: 'configuration-protected-settings-fil'
          )
          ]
        ),
        Option(
          name: '--configuration-settings-file',
          description: 'Option \'--configuration-settings-file\' has been deprecated and will be removed in a future release. Use \'--config-settings-file\' instead. JSON file path for configuration-settings',
          args: [
            Arg(
            name: 'configuration-settings-fil'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--release-train',
          description: 'Specify the release train for the extension type',
          args: [
            Arg(
            name: 'release-trai'
          )
          ]
        ),
        Option(
          name: '--version',
          description: 'Specify the version to install for the extension instance if --auto-upgrade-minor-version is not enabled',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Ignore confirmation prompts'
        )
      ]
    ),
    Subcommand(
      name: 'extension-types',
      description: 'Commands to discover Kubernetes Extension Types',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List available Cluster Extension Types for an existing cluster',
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
              description: 'Specify Arc clusters or AKS managed clusters or Arc appliances',
              args: [
                Arg(
                name: 'cluster-type',
                suggestions: [

                  FigSuggestion(name: 'appliances'),
                  FigSuggestion(name: 'connectedClusters'),
                  FigSuggestion(name: 'managedClusters')
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
              name: '--plan-name',
              description: 'The plan name is referring to the Marketplace Plan ID of the extension',
              args: [
                Arg(
                name: 'plan-nam'
              )
              ]
            ),
            Option(
              name: '--plan-product',
              description: 'The plan product is referring to the Marketplace Product ID of the extension',
              args: [
                Arg(
                name: 'plan-produc'
              )
              ]
            ),
            Option(
              name: '--plan-publisher',
              description: 'The plan publisher is referring to the Marketplace Publisher ID of the extension',
              args: [
                Arg(
                name: 'plan-publishe'
              )
              ]
            ),
            Option(
              name: '--release-train',
              description: 'Specify the release train for the extension type',
              args: [
                Arg(
                name: 'release-trai'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-by-cluster',
          description: 'List available Cluster Extension Types for an existing cluster. The properties used for filtering include type of cluster (managed, connected, etc), kubernetes version, location of the cluster',
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
              description: 'Specify Arc clusters or AKS managed clusters or Arc appliances',
              args: [
                Arg(
                name: 'cluster-type',
                suggestions: [

                  FigSuggestion(name: 'appliances'),
                  FigSuggestion(name: 'connectedClusters'),
                  FigSuggestion(name: 'managedClusters')
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
              name: '--plan-name',
              description: 'The plan name is referring to the Marketplace Plan ID of the extension',
              args: [
                Arg(
                name: 'plan-nam'
              )
              ]
            ),
            Option(
              name: '--plan-product',
              description: 'The plan product is referring to the Marketplace Product ID of the extension',
              args: [
                Arg(
                name: 'plan-produc'
              )
              ]
            ),
            Option(
              name: '--plan-publisher',
              description: 'The plan publisher is referring to the Marketplace Publisher ID of the extension',
              args: [
                Arg(
                name: 'plan-publishe'
              )
              ]
            ),
            Option(
              name: '--release-train',
              description: 'Specify the release train for the extension type',
              args: [
                Arg(
                name: 'release-trai'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-by-location',
          description: 'List available Cluster Extension Types in a region',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Name of the location. Values from: az account list-locations',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--cluster-type', '-t'],
              description: 'Specify Arc clusters or AKS managed clusters or Arc appliances',
              args: [
                Arg(
                name: 'cluster-type',
                suggestions: [

                  FigSuggestion(name: 'appliances'),
                  FigSuggestion(name: 'connectedClusters'),
                  FigSuggestion(name: 'managedClusters')
                ]
              )
              ]
            ),
            Option(
              name: '--plan-name',
              description: 'The plan name is referring to the Marketplace Plan ID of the extension',
              args: [
                Arg(
                name: 'plan-nam'
              )
              ]
            ),
            Option(
              name: '--plan-product',
              description: 'The plan product is referring to the Marketplace Product ID of the extension',
              args: [
                Arg(
                name: 'plan-produc'
              )
              ]
            ),
            Option(
              name: '--plan-publisher',
              description: 'The plan publisher is referring to the Marketplace Publisher ID of the extension',
              args: [
                Arg(
                name: 'plan-publishe'
              )
              ]
            ),
            Option(
              name: '--release-train',
              description: 'Specify the release train for the extension type',
              args: [
                Arg(
                name: 'release-trai'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-versions',
          description: 'List available versions for a Cluster Extension Type for a given cluster',
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
              description: 'Specify Arc clusters or AKS managed clusters or Arc appliances',
              args: [
                Arg(
                name: 'cluster-type',
                suggestions: [

                  FigSuggestion(name: 'appliances'),
                  FigSuggestion(name: 'connectedClusters'),
                  FigSuggestion(name: 'managedClusters')
                ]
              )
              ]
            ),
            Option(
              name: '--extension-type',
              description: 'Name of the extension type',
              args: [
                Arg(
                name: 'extension-typ'
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
              name: '--major-version',
              description: 'Filter results by only the major version of an extension type. For example if 1 is specified, all versions with major version 1 (1.1, 1.1.2) will be shown. The default value is None',
              args: [
                Arg(
                name: 'major-versio'
              )
              ]
            ),
            Option(
              name: '--release-train',
              description: 'Specify the release train for the extension type',
              args: [
                Arg(
                name: 'release-trai'
              )
              ]
            ),
            Option(
              name: '--show-latest',
              description: 'Filter results by only the latest version. For example, if this flag is used the latest version of the extensionType will be shown'
            )
          ]
        ),
        Subcommand(
          name: 'list-versions-by-cluster',
          description: 'List available versions for a Cluster Extension Type for a given cluster. The properties used for filtering include type of cluster (managed, connected, etc), kubernetes version, location of the cluster',
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
              description: 'Specify Arc clusters or AKS managed clusters or Arc appliances',
              args: [
                Arg(
                name: 'cluster-type',
                suggestions: [

                  FigSuggestion(name: 'appliances'),
                  FigSuggestion(name: 'connectedClusters'),
                  FigSuggestion(name: 'managedClusters')
                ]
              )
              ]
            ),
            Option(
              name: '--extension-type',
              description: 'Name of the extension type',
              args: [
                Arg(
                name: 'extension-typ'
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
              name: '--major-version',
              description: 'Filter results by only the major version of an extension type. For example if 1 is specified, all versions with major version 1 (1.1, 1.1.2) will be shown. The default value is None',
              args: [
                Arg(
                name: 'major-versio'
              )
              ]
            ),
            Option(
              name: '--release-train',
              description: 'Specify the release train for the extension type',
              args: [
                Arg(
                name: 'release-trai'
              )
              ]
            ),
            Option(
              name: '--show-latest',
              description: 'Filter results by only the latest version. For example, if this flag is used the latest version of the extensionType will be shown'
            )
          ]
        ),
        Subcommand(
          name: 'list-versions-by-location',
          description: 'List available versions for a Cluster Extension Type versions in a region',
          options: [

            Option(
              name: '--extension-type',
              description: 'Name of the extension type',
              args: [
                Arg(
                name: 'extension-typ'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Name of the location. Values from: az account list-locations',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--cluster-type', '-t'],
              description: 'Specify Arc clusters or AKS managed clusters or Arc appliances',
              args: [
                Arg(
                name: 'cluster-type',
                suggestions: [

                  FigSuggestion(name: 'appliances'),
                  FigSuggestion(name: 'connectedClusters'),
                  FigSuggestion(name: 'managedClusters')
                ]
              )
              ]
            ),
            Option(
              name: '--major-version',
              description: 'Filter results by only the major version of an extension type. For example if 1 is specified, all versions with major version 1 (1.1, 1.1.2) will be shown. The default value is None',
              args: [
                Arg(
                name: 'major-versio'
              )
              ]
            ),
            Option(
              name: '--release-train',
              description: 'Specify the release train for the extension type',
              args: [
                Arg(
                name: 'release-trai'
              )
              ]
            ),
            Option(
              name: '--show-latest',
              description: 'Filter results by only the latest version. For example, if this flag is used the latest version of the extensionType will be shown'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get properties for a Cluster Extension Type in a region',
          options: [

            Option(
              name: '--extension-type',
              description: 'Name of the extension type',
              args: [
                Arg(
                name: 'extension-typ'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Name of the location. Values from: az account list-locations',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-by-cluster',
          description: 'Show properties for a Cluster Extension Type for an existing cluster. The properties used for filtering include type of cluster (managed, connected, etc), kubernetes version, location of the cluster',
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
              description: 'Specify Arc clusters or AKS managed clusters or Arc appliances',
              args: [
                Arg(
                name: 'cluster-type',
                suggestions: [

                  FigSuggestion(name: 'appliances'),
                  FigSuggestion(name: 'connectedClusters'),
                  FigSuggestion(name: 'managedClusters')
                ]
              )
              ]
            ),
            Option(
              name: '--extension-type',
              description: 'Name of the extension type',
              args: [
                Arg(
                name: 'extension-typ'
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
          name: 'show-by-location',
          description: 'Show properties for a Cluster Extension Type in a region',
          options: [

            Option(
              name: '--extension-type',
              description: 'Name of the extension type',
              args: [
                Arg(
                name: 'extension-typ'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Name of the location. Values from: az account list-locations',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-version-by-cluster',
          description: 'Show properties associated with a Cluster Extension Type version for an existing cluster. The properties used for filtering include type of cluster (managed, connected, etc), kubernetes version, location of the cluster',
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
              description: 'Specify Arc clusters or AKS managed clusters or Arc appliances',
              args: [
                Arg(
                name: 'cluster-type',
                suggestions: [

                  FigSuggestion(name: 'appliances'),
                  FigSuggestion(name: 'connectedClusters'),
                  FigSuggestion(name: 'managedClusters')
                ]
              )
              ]
            ),
            Option(
              name: '--extension-type',
              description: 'Name of the extension type',
              args: [
                Arg(
                name: 'extension-typ'
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
              name: '--version',
              description: 'Version for the extension type',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-version-by-location',
          description: 'Show properties associated with a Cluster Extension Type version in a region',
          options: [

            Option(
              name: '--extension-type',
              description: 'Name of the extension type',
              args: [
                Arg(
                name: 'extension-typ'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Name of the location. Values from: az account list-locations',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Version for the extension type',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
