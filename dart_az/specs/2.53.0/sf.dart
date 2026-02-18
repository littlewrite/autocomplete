// Auto-generated from TypeScript source: sf.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sf` CLI
final FigSpec sfSpec = FigSpec(
  name: 'sf',
  description: 'Manage and administer Azure Service Fabric clusters',
  subcommands: [

    Subcommand(
      name: 'application',
      description: 'Manage applications running on an Azure Service Fabric cluster. Only support ARM deployed applications',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new application on an Azure Service Fabric cluster',
          options: [

            Option(
              name: ['--application-name', '--name'],
              description: 'Specify the application name',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--application-type-name', '--type-name'],
              description: 'Specify the application type name',
              args: [
                Arg(
                name: 'application-type-nam'
              )
              ]
            ),
            Option(
              name: ['--application-type-version', '--version'],
              description: 'Specify the application type version',
              args: [
                Arg(
                name: 'application-type-versio'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--application-parameters', '--parameters'],
              description: 'Specify the application parameters as key/value pairs. These parameters must exist in the application manifest. for example: --application-parameters param1=value1 param2=value2',
              args: [
                Arg(
                name: 'application-parameter'
              )
              ]
            ),
            Option(
              name: ['--maximum-nodes', '--max-nodes'],
              description: 'Specify the maximum number of nodes on which to place an application. The value of this parameter must be a non-negative integer. The default value is 0, which indicates the application can be placed on any number of nodes in the cluster',
              args: [
                Arg(
                name: 'maximum-node'
              )
              ]
            ),
            Option(
              name: ['--minimum-nodes', '--min-nodes'],
              description: 'Specify the minimum number of nodes where Service Fabric will reserve capacity for this application, this does not mean that the application is guaranteed to have replicas on all those nodes. The value of this parameter must be a non-negative integer. Default value for this is zero, which means no capacity is reserved for the application',
              args: [
                Arg(
                name: 'minimum-node'
              )
              ]
            ),
            Option(
              name: '--package-url',
              description: 'Specify the url of the application package sfpkg file',
              args: [
                Arg(
                name: 'package-ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an application',
          options: [

            Option(
              name: ['--application-name', '--name'],
              description: 'Specify the application name',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'List applications of a given cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Show the properties of an application on an Azure Service Fabric cluster',
          options: [

            Option(
              name: ['--application-name', '--name'],
              description: 'Specify the application name',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Update a Azure Service Fabric application. This allows updating the application parameters and/or upgrade the application type version which will trigger an application upgrade',
          options: [

            Option(
              name: ['--application-name', '--name'],
              description: 'Specify the application name',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--application-parameters', '--parameters'],
              description: 'Specify the application parameters as key/value pairs. These parameters must exist in the application manifest. for example: --application-parameters param1=value1 param2=value2',
              args: [
                Arg(
                name: 'application-parameter'
              )
              ]
            ),
            Option(
              name: ['--application-type-version', '--version'],
              description: 'Specify the application type version',
              args: [
                Arg(
                name: 'application-type-versio'
              )
              ]
            ),
            Option(
              name: ['--consider-warning-as-error', '--warning-as-error'],
              description: 'Indicates whether to treat a warning health event as an error event during health evaluation'
            ),
            Option(
              name: '--failure-action',
              description: 'Specify the action to take if the monitored upgrade fails. The acceptable values for this parameter are Rollback or Manual',
              args: [
                Arg(
                name: 'failure-action',
                suggestions: [

                  FigSuggestion(name: 'Manual'),
                  FigSuggestion(name: 'Rollback')
                ]
              )
              ]
            ),
            Option(
              name: '--force-restart',
              description: 'Indicates that the service host restarts even if the upgrade is a configuration-only change'
            ),
            Option(
              name: ['--health-check-retry-timeout', '--hc-retry-timeout'],
              description: 'Specify the duration, in seconds, after which Service Fabric retries the health check if the previous health check fails',
              args: [
                Arg(
                name: 'health-check-retry-timeou'
              )
              ]
            ),
            Option(
              name: ['--health-check-stable-duration', '--hc-stable-duration'],
              description: 'Specify the duration, in seconds, that Service Fabric waits in order to verify that the application is stable before moving to the next upgrade domain or completing the upgrade. This wait duration prevents undetected changes of health right after the health check is performed',
              args: [
                Arg(
                name: 'health-check-stable-duratio'
              )
              ]
            ),
            Option(
              name: ['--health-check-wait-duration', '--hc-wait-duration'],
              description: 'Specify the duration, in seconds, that Service Fabric waits before it performs the initial health check after it finishes the upgrade on the upgrade domain',
              args: [
                Arg(
                name: 'health-check-wait-duratio'
              )
              ]
            ),
            Option(
              name: ['--maximum-nodes', '--max-nodes'],
              description: 'Specify the maximum number of nodes on which to place an application. The value of this parameter must be a non-negative integer. The default value is 0, which indicates the application can be placed on any number of nodes in the cluster',
              args: [
                Arg(
                name: 'maximum-node'
              )
              ]
            ),
            Option(
              name: ['--max-porcent-unhealthy-apps', '--max-unhealthy-apps'],
              description: 'Specify the maximum percentage of the application instances deployed on the nodes in the cluster that have a health state of error before the application health state for the cluster is error. Allowed values are form 0 to 100',
              args: [
                Arg(
                name: 'max-porcent-unhealthy-app'
              )
              ]
            ),
            Option(
              name: [
                '--max-porcent-unhealthy-partitions',
                '--max-unhealthy-parts',
              ],
              description: 'Specify the maximum percent of unhelthy partitions per service allowed by the health policy for the default service type to use for the monitored upgrade. Allowed values are form 0 to 100',
              args: [
                Arg(
                name: 'max-porcent-unhealthy-partition'
              )
              ]
            ),
            Option(
              name: [
                '--max-porcent-unhealthy-replicas',
                '--max-unhealthy-reps',
              ],
              description: 'Specify the maximum percent of unhelthy replicas per service allowed by the health policy for the default service type to use for the monitored upgrade. Allowed values are form 0 to 100',
              args: [
                Arg(
                name: 'max-porcent-unhealthy-replica'
              )
              ]
            ),
            Option(
              name: [
                '--max-porcent-unhealthy-services',
                '--max-unhealthy-servs',
              ],
              description: 'Specify the maximum percent of unhelthy services allowed by the health policy for the default service type to use for the monitored upgrade. Allowed values are form 0 to 100',
              args: [
                Arg(
                name: 'max-porcent-unhealthy-service'
              )
              ]
            ),
            Option(
              name: ['--minimum-nodes', '--min-nodes'],
              description: 'Specify the minimum number of nodes where Service Fabric will reserve capacity for this application, this does not mean that the application is guaranteed to have replicas on all those nodes. The value of this parameter must be a non-negative integer. Default value for this is zero, which means no capacity is reserved for the application',
              args: [
                Arg(
                name: 'minimum-node'
              )
              ]
            ),
            Option(
              name: [
                '--upgrade-replica-set-check-timeout',
                '--replica-check-timeout',
                '--rep-check-timeout',
              ],
              description: 'Specify the maximum time, in seconds, that Service Fabric waits for a service to reconfigure into a safe state, if not already in a safe state, before Service Fabric proceeds with the upgrade',
              args: [
                Arg(
                name: 'upgrade-replica-set-check-timeou'
              )
              ]
            ),
            Option(
              name: [
                '--service-type-health-policy-map',
                '--service-type-policy',
              ],
              description: 'Specify the map of the health policy to use for different service types as a hash table in the following format: {"ServiceTypeName" : "MaxPercentUnhealthyPartitionsPerService,MaxPercentUnhealthyReplicasPerPartition,MaxPercentUnhealthyServices"}. For example: @{ "ServiceTypeName01" = "5,10,5"; "ServiceTypeName02" = "5,5,5" }',
              args: [
                Arg(
                name: 'service-type-health-policy-ma'
              )
              ]
            ),
            Option(
              name: ['--upgrade-domain-timeout', '--ud-timeout'],
              description: 'Specify the maximum time, in seconds, that Service Fabric takes to upgrade a single upgrade domain. After this period, the upgrade fails',
              args: [
                Arg(
                name: 'upgrade-domain-timeou'
              )
              ]
            ),
            Option(
              name: '--upgrade-timeout',
              description: 'Specify the maximum time, in seconds, that Service Fabric takes for the entire upgrade. After this period, the upgrade fails',
              args: [
                Arg(
                name: 'upgrade-timeou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'certificate',
          description: 'Manage the certificate of an application',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a new certificate to the Virtual Machine Scale Sets that make up the cluster to be used by hosted applications',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--certificate-output-folder', '--cert-out-folder'],
                  description: 'The folder of the new certificate file to be created',
                  args: [
                    Arg(
                    name: 'certificate-output-folde'
                  )
                  ]
                ),
                Option(
                  name: ['--certificate-subject-name', '--cert-subject-name'],
                  description: 'The subject name of the certificate to be created',
                  args: [
                    Arg(
                    name: 'certificate-subject-nam'
                  )
                  ]
                ),
                Option(
                  name: '--certificate-file',
                  description: 'The existing certificate file path for the primary cluster certificate',
                  args: [
                    Arg(
                    name: 'certificate-fil'
                  )
                  ]
                ),
                Option(
                  name: '--certificate-password',
                  description: 'The password of the certificate file',
                  args: [
                    Arg(
                    name: 'certificate-passwor'
                  )
                  ]
                ),
                Option(
                  name: '--secret-identifier',
                  description: 'The existing Azure key vault secret URL',
                  args: [
                    Arg(
                    name: 'secret-identifie'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Azure key vault name, it not given it will be the cluster resource group name',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-rg',
                  description: 'Key vault resource group name, if not given it will be cluster resource group name',
                  args: [
                    Arg(
                    name: 'vault-r'
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
      name: 'application-type',
      description: 'Manage application types on an Azure Service Fabric cluster',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new application type on an Azure Service Fabric cluster',
          options: [

            Option(
              name: ['--application-type-name', '--name'],
              description: 'Specify the application type name',
              args: [
                Arg(
                name: 'application-type-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an application type',
          options: [

            Option(
              name: ['--application-type-name', '--name'],
              description: 'Specify the application type name',
              args: [
                Arg(
                name: 'application-type-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'List application types of a given cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Show the properties of an application type on an Azure Service Fabric cluster',
          options: [

            Option(
              name: ['--application-type-name', '--name'],
              description: 'Specify the application type name',
              args: [
                Arg(
                name: 'application-type-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'version',
          description: 'Manage application type versions on an Azure Service Fabric cluster. Only support ARM deployed application type versions',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new application type on an Azure Service Fabric cluster',
              options: [

                Option(
                  name: ['--application-type-name', '--name'],
                  description: 'Specify the application type name',
                  args: [
                    Arg(
                    name: 'application-type-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--application-type-version', '--version'],
                  description: 'Specify the application type version',
                  args: [
                    Arg(
                    name: 'application-type-versio'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--package-url',
                  description: 'Specify the url of the application package sfpkg file',
                  args: [
                    Arg(
                    name: 'package-ur'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an application type version',
              options: [

                Option(
                  name: ['--application-type-name', '--name'],
                  description: 'Specify the application type name',
                  args: [
                    Arg(
                    name: 'application-type-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--application-type-version', '--version'],
                  description: 'Specify the application type version',
                  args: [
                    Arg(
                    name: 'application-type-versio'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'List version of a given application type',
              options: [

                Option(
                  name: ['--application-type-name', '--name'],
                  description: 'Specify the application type name',
                  args: [
                    Arg(
                    name: 'application-type-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Show the properties of an application type version on an Azure Service Fabric cluster',
              options: [

                Option(
                  name: ['--application-type-name', '--name'],
                  description: 'Specify the application type name',
                  args: [
                    Arg(
                    name: 'application-type-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--application-type-version', '--version'],
                  description: 'Specify the application type version',
                  args: [
                    Arg(
                    name: 'application-type-versio'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
    ),
    Subcommand(
      name: 'cluster',
      description: 'Manage an Azure Service Fabric cluster',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new Azure Service Fabric cluster',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--certificate-output-folder', '--cert-out-folder'],
              description: 'The folder of the new certificate file to be created',
              args: [
                Arg(
                name: 'certificate-output-folde'
              )
              ]
            ),
            Option(
              name: ['--certificate-subject-name', '--cert-subject-name'],
              description: 'The subject name of the certificate to be created',
              args: [
                Arg(
                name: 'certificate-subject-nam'
              )
              ]
            ),
            Option(
              name: '--certificate-file',
              description: 'The existing certificate file path for the primary cluster certificate',
              args: [
                Arg(
                name: 'certificate-fil'
              )
              ]
            ),
            Option(
              name: '--certificate-password',
              description: 'The password of the certificate file',
              args: [
                Arg(
                name: 'certificate-passwor'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-size', '-s'],
              description: 'The number of nodes in the cluster. Default are 5 nodes',
              args: [
                Arg(
                name: 'cluster-siz'
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
              name: ['--vm-os', '--os'],
              description: 'The Operating System of the VMs that make up the cluster',
              args: [
                Arg(
                name: 'vm-os',
                suggestions: [

                  FigSuggestion(name: 'UbuntuServer1604'),
                  FigSuggestion(name: 'WindowsServer1709'),
                  FigSuggestion(name: 'WindowsServer1709withContainers'),
                  FigSuggestion(name: 'WindowsServer1803withContainers'),
                  FigSuggestion(name: 'WindowsServer1809withContainers'),
                  FigSuggestion(name: 'WindowsServer2012R2Datacenter'),
                  FigSuggestion(name: 'WindowsServer2016Datacenter'),
                  FigSuggestion(name: 'WindowsServer2016DatacenterwithContainers'),
                  FigSuggestion(name: 'WindowsServer2019Datacenter'),
                  FigSuggestion(name: 'WindowsServer2019DatacenterwithContainers')
                ]
              )
              ]
            ),
            Option(
              name: '--parameter-file',
              description: 'The path to the template parameter file',
              args: [
                Arg(
                name: 'parameter-fil'
              )
              ]
            ),
            Option(
              name: '--secret-identifier',
              description: 'The existing Azure key vault secret URL',
              args: [
                Arg(
                name: 'secret-identifie'
              )
              ]
            ),
            Option(
              name: '--template-file',
              description: 'The path to the template file',
              args: [
                Arg(
                name: 'template-fil'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Azure key vault name, it not given it will be the cluster resource group name',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--vault-rg',
              description: 'Key vault resource group name, if not given it will be cluster resource group name',
              args: [
                Arg(
                name: 'vault-r'
              )
              ]
            ),
            Option(
              name: '--vm-password',
              description: 'The password of the Vm',
              args: [
                Arg(
                name: 'vm-passwor'
              )
              ]
            ),
            Option(
              name: '--vm-sku',
              description: 'VM Sku',
              args: [
                Arg(
                name: 'vm-sk'
              )
              ]
            ),
            Option(
              name: '--vm-user-name',
              description: 'The user name for logging to Vm. Default will be adminuser',
              args: [
                Arg(
                name: 'vm-user-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List cluster resources',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
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
          description: 'Gets a Service Fabric cluster resource',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'client-certificate',
          description: 'Manage the client certificate of a cluster',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a common name or certificate thumbprint to the cluster for client authentication',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--admin-client-thumbprints', '--admin-client-tps'],
                  description: 'Client certificate thumbprint that only has admin permission',
                  args: [
                    Arg(
                    name: 'admin-client-thumbprint'
                  )
                  ]
                ),
                Option(
                  name: ['--certificate-common-name', '--cert-common-name'],
                  description: 'Client certificate common name',
                  args: [
                    Arg(
                    name: 'certificate-common-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--certificate-issuer-thumbprint', '--cert-issuer-tp'],
                  description: 'Client certificate issuer thumbprint',
                  args: [
                    Arg(
                    name: 'certificate-issuer-thumbprin'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--client-certificate-common-names',
                    '--client-cert-cn',
                  ],
                  description: 'JSON encoded parameters configuration. Use @{file} to load from a file. For example: [{"isAdmin":true, "certificateCommonName": "test.com", "certificateIssuerThumbprint": "22B4AE296B504E512DF880A77A2CAE20200FF922"}]',
                  args: [
                    Arg(
                    name: 'client-certificate-common-name'
                  )
                  ]
                ),
                Option(
                  name: '--is-admin',
                  description: 'Client authentication type'
                ),
                Option(
                  name: [
                    '--readonly-client-thumbprints',
                    '--readonly-client-tps',
                  ],
                  description: 'Space-separated list of client certificate thumbprint that has read only permission',
                  args: [
                    Arg(
                    name: 'readonly-client-thumbprint'
                  )
                  ]
                ),
                Option(
                  name: '--thumbprint',
                  description: 'Client certificate thumbprint',
                  args: [
                    Arg(
                    name: 'thumbprin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove client certificates or subject names used for authentication',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--certificate-common-name', '--cert-common-name'],
                  description: 'Client certificate common name',
                  args: [
                    Arg(
                    name: 'certificate-common-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--certificate-issuer-thumbprint', '--cert-issuer-tp'],
                  description: 'Client certificate issuer thumbprint',
                  args: [
                    Arg(
                    name: 'certificate-issuer-thumbprin'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--client-certificate-common-names',
                    '--client-cert-cn',
                  ],
                  description: 'JSON encoded parameters configuration. Use @{file} to load from a file. For example: [{"certificateCommonName": "test.com","certificateIssuerThumbprint": "22B4AE296B504E512DF880A77A2CAE20200FF922"}]',
                  args: [
                    Arg(
                    name: 'client-certificate-common-name'
                  )
                  ]
                ),
                Option(
                  name: '--thumbprints',
                  description: 'A single or Space-separated list of client certificate thumbprint(s) to be remove',
                  args: [
                    Arg(
                    name: 'thumbprint'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'durability',
          description: 'Manage the durability of a cluster',
          subcommands: [

            Subcommand(
              name: 'update',
              description: 'Update the durability tier or VM SKU of a node type in the cluster',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--durability-level',
                  description: 'Durability level',
                  args: [
                    Arg(
                    name: 'durability-level',
                    suggestions: [

                      FigSuggestion(name: 'Bronze'),
                      FigSuggestion(name: 'Gold'),
                      FigSuggestion(name: 'Silver')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--node-type',
                  description: 'The Node type name',
                  args: [
                    Arg(
                    name: 'node-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          name: 'node',
          description: 'Manage the node instance of a cluster',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add nodes to a node type in a cluster',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--node-type',
                  description: 'The Node type name',
                  args: [
                    Arg(
                    name: 'node-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--number-of-nodes-to-add', '--nodes-to-add'],
                  description: 'Number of nodes to add',
                  args: [
                    Arg(
                    name: 'number-of-nodes-to-ad'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove nodes from a node type in a cluster',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--node-type',
                  description: 'The Node type name',
                  args: [
                    Arg(
                    name: 'node-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--number-of-nodes-to-remove', '--nodes-to-remove'],
                  description: 'Number of nodes to remove',
                  args: [
                    Arg(
                    name: 'number-of-nodes-to-remov'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          name: 'node-type',
          description: 'Manage the node-type of a cluster',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a new node type to a cluster',
              options: [

                Option(
                  name: '--capacity',
                  description: 'The capacity tag applied to nodes in the node type. The cluster resource manager uses these tags to understand how much capacity a node has',
                  args: [
                    Arg(
                    name: 'capacit'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--node-type',
                  description: 'The Node type name',
                  args: [
                    Arg(
                    name: 'node-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--vm-password',
                  description: 'The password of the Vm',
                  args: [
                    Arg(
                    name: 'vm-passwor'
                  )
                  ]
                ),
                Option(
                  name: '--vm-user-name',
                  description: 'The user name for logging to Vm. Default will be adminuser',
                  args: [
                    Arg(
                    name: 'vm-user-nam'
                  )
                  ]
                ),
                Option(
                  name: '--durability-level',
                  description: 'Durability level',
                  args: [
                    Arg(
                    name: 'durability-level',
                    suggestions: [

                      FigSuggestion(name: 'Bronze'),
                      FigSuggestion(name: 'Gold'),
                      FigSuggestion(name: 'Silver')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--vm-sku',
                  description: 'VM Sku',
                  args: [
                    Arg(
                    name: 'vm-sk'
                  )
                  ]
                ),
                Option(
                  name: '--vm-tier',
                  description: 'VM tier',
                  args: [
                    Arg(
                    name: 'vm-tie'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reliability',
          description: 'Manage the reliability of a cluster',
          subcommands: [

            Subcommand(
              name: 'update',
              description: 'Update the reliability tier for the primary node in a cluster',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--reliability-level',
                  description: 'Durability level',
                  args: [
                    Arg(
                    name: 'reliability-level',
                    suggestions: [

                      FigSuggestion(name: 'Bronze'),
                      FigSuggestion(name: 'Gold'),
                      FigSuggestion(name: 'Platinum'),
                      FigSuggestion(name: 'Silver')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--auto-add-node',
                  description: 'Add node count automatically when changing reliability'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'setting',
          description: 'Manage a cluster\'s settings',
          subcommands: [

            Subcommand(
              name: 'remove',
              description: 'Remove settings from a cluster',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--parameter',
                  description: 'Parameter name',
                  args: [
                    Arg(
                    name: 'paramete'
                  )
                  ]
                ),
                Option(
                  name: '--section',
                  description: 'Section name',
                  args: [
                    Arg(
                    name: 'sectio'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--settings-section-description',
                    '--settings-section',
                  ],
                  description: 'JSON encoded parameters configuration. Use @{file} to load from a file. For example: [{"section": "NamingService","parameter": "MaxOperationTimeout"}]',
                  args: [
                    Arg(
                    name: 'settings-section-descriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Update the settings of a cluster',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--parameter',
                  description: 'Parameter name',
                  args: [
                    Arg(
                    name: 'paramete'
                  )
                  ]
                ),
                Option(
                  name: '--section',
                  description: 'Section name',
                  args: [
                    Arg(
                    name: 'sectio'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--settings-section-description',
                    '--settings-section',
                  ],
                  description: 'JSON encoded parameters configuration. Use @{file} to load from a file. For example: [{"section": "NamingService","parameter": "MaxOperationTimeout","value": 1000},{"section": "MaxFileOperationTimeout","parameter": "Max2","value": 1000]',
                  args: [
                    Arg(
                    name: 'settings-section-descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--value',
                  description: 'Specify the value',
                  args: [
                    Arg(
                    name: 'valu'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'upgrade-type',
          description: 'Manage the upgrade type of a cluster',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Change the  upgrade type for a cluster',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--upgrade-mode',
                  description: 'Cluster upgrade mode',
                  args: [
                    Arg(
                    name: 'upgrade-mode',
                    suggestions: [

                      FigSuggestion(name: 'automatic'),
                      FigSuggestion(name: 'manual')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: 'Cluster code version',
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
    ),
    Subcommand(
      name: 'managed-application',
      description: 'Manage applications running on an Azure Service Fabric managed cluster. Only support ARM deployed applications',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new managed application on an Azure Service Fabric managed cluster',
          options: [

            Option(
              name: ['--application-name', '--name'],
              description: 'Specify the application name',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--application-type-name', '--type-name'],
              description: 'Specify the application type name',
              args: [
                Arg(
                name: 'application-type-nam'
              )
              ]
            ),
            Option(
              name: ['--application-type-version', '--version'],
              description: 'Specify the application type version',
              args: [
                Arg(
                name: 'application-type-versio'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--application-parameters', '--parameters'],
              description: 'Specify the application parameters as key/value pairs. These parameters must exist in the application manifest. for example: --application-parameters param1=value1 param2=value2',
              args: [
                Arg(
                name: 'application-parameter'
              )
              ]
            ),
            Option(
              name: '--package-url',
              description: 'Specify the url of the application package sfpkg file',
              args: [
                Arg(
                name: 'package-ur'
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
          description: 'Delete a managed application',
          options: [

            Option(
              name: ['--application-name', '--name'],
              description: 'Specify the application name',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'List managed applications of a given managed cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Show the properties of a managed application on an Azure Service Fabric managed cluster',
          options: [

            Option(
              name: ['--application-name', '--name'],
              description: 'Specify the application name',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Update a Azure Service Fabric managed application',
          options: [

            Option(
              name: ['--application-name', '--name'],
              description: 'Specify the application name',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--application-parameters', '--parameters'],
              description: 'Specify the application parameters as key/value pairs. These parameters must exist in the application manifest. for example: --application-parameters param1=value1 param2=value2',
              args: [
                Arg(
                name: 'application-parameter'
              )
              ]
            ),
            Option(
              name: ['--application-type-version', '--version'],
              description: 'Specify the application type version',
              args: [
                Arg(
                name: 'application-type-versio'
              )
              ]
            ),
            Option(
              name: [
                '--instance-close-delay-duration',
                '--instance-close-duration',
                '--close-duration',
              ],
              description: 'Specify the duration in seconds, to wait before a stateless instance is closed, to allow the active requests to drain gracefully. This would be effective when the instance is closing during the application/cluster upgrade, only for those instances which have a non-zero delay duration configured in the service description',
              args: [
                Arg(
                name: 'instance-close-delay-duratio'
              )
              ]
            ),
            Option(
              name: ['--consider-warning-as-error', '--warning-as-error'],
              description: 'Indicates whether to treat a warning health event as an error event during health evaluation'
            ),
            Option(
              name: '--failure-action',
              description: 'Specify the action to take if the monitored upgrade fails. The acceptable values for this parameter are Rollback or Manual',
              args: [
                Arg(
                name: 'failure-action',
                suggestions: [

                  FigSuggestion(name: 'Manual'),
                  FigSuggestion(name: 'Rollback')
                ]
              )
              ]
            ),
            Option(
              name: '--force-restart',
              description: 'Indicates that the service host restarts even if the upgrade is a configuration-only change'
            ),
            Option(
              name: ['--health-check-retry-timeout', '--hc-retry-timeout'],
              description: 'Specify the duration, in seconds, after which Service Fabric retries the health check if the previous health check fails',
              args: [
                Arg(
                name: 'health-check-retry-timeou'
              )
              ]
            ),
            Option(
              name: ['--health-check-stable-duration', '--hc-stable-duration'],
              description: 'Specify the duration, in seconds, that Service Fabric waits in order to verify that the application is stable before moving to the next upgrade domain or completing the upgrade. This wait duration prevents undetected changes of health right after the health check is performed',
              args: [
                Arg(
                name: 'health-check-stable-duratio'
              )
              ]
            ),
            Option(
              name: ['--health-check-wait-duration', '--hc-wait-duration'],
              description: 'Specify the duration, in seconds, that Service Fabric waits before it performs the initial health check after it finishes the upgrade on the upgrade domain',
              args: [
                Arg(
                name: 'health-check-wait-duratio'
              )
              ]
            ),
            Option(
              name: [
                '--max-percent-unhealthy-deployed-applications',
                '--max-percent-unhealthy-apps',
                '--max-unhealthy-apps',
              ],
              description: 'Specify the maximum percentage of the application instances deployed on the nodes in the cluster that have a health state of error before the application health state for the cluster is error. Allowed values are form 0 to 100',
              args: [
                Arg(
                name: 'max-percent-unhealthy-deployed-application'
              )
              ]
            ),
            Option(
              name: [
                '--max-percent-unhealthy-partitions',
                '--max-unhealthy-parts',
              ],
              description: 'Specify the maximum percent of unhelthy partitions per service allowed by the health policy for the default service type to use for the monitored upgrade. Allowed values are from 0 to 100',
              args: [
                Arg(
                name: 'max-percent-unhealthy-partition'
              )
              ]
            ),
            Option(
              name: [
                '--max-percent-unhealthy-replicas',
                '--max-unhealthy-reps',
              ],
              description: 'Specify the maximum percent of unhelthy replicas per service allowed by the health policy for the default service type to use for the monitored upgrade. Allowed values are from 0 to 100',
              args: [
                Arg(
                name: 'max-percent-unhealthy-replica'
              )
              ]
            ),
            Option(
              name: [
                '--max-percent-unhealthy-services',
                '--max-unhealthy-servs',
              ],
              description: 'Specify the maximum percent of unhelthy services allowed by the health policy for the default service type to use for the monitored upgrade. Allowed values are from 0 to 100',
              args: [
                Arg(
                name: 'max-percent-unhealthy-service'
              )
              ]
            ),
            Option(
              name: '--recreate-application',
              description: 'Determines whether the application should be recreated on update. If value=true, the rest of the upgrade policy parameters are not allowed'
            ),
            Option(
              name: [
                '--upgrade-replica-set-check-timeout',
                '--replica-check-timeout',
                '--rep-check-timeout',
              ],
              description: 'Specify the maximum time, in seconds, that Service Fabric waits for a service to reconfigure into a safe state, if not already in a safe state, before Service Fabric proceeds with the upgrade',
              args: [
                Arg(
                name: 'upgrade-replica-set-check-timeou'
              )
              ]
            ),
            Option(
              name: [
                '--service-type-health-policy-map',
                '--service-type-policy',
              ],
              description: 'Specify the map of the health policy to use for different service types as key/value pairs in the following format: "ServiceTypeName"="MaxPercentUnhealthyPartitionsPerService,MaxPercentUnhealthyReplicasPerPartition,MaxPercentUnhealthyServices". for example: --service-type-health-policy-map "ServiceTypeName01"="5,10,5" "ServiceTypeName02"="5,5,5"',
              args: [
                Arg(
                name: 'service-type-health-policy-ma'
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
              name: ['--upgrade-domain-timeout', '--ud-timeout'],
              description: 'Specify the maximum time, in seconds, that Service Fabric takes to upgrade a single upgrade domain. After this period, the upgrade fails',
              args: [
                Arg(
                name: 'upgrade-domain-timeou'
              )
              ]
            ),
            Option(
              name: '--upgrade-mode',
              description: 'Specify the mode used to monitor health during a rolling upgrade. The values are Monitored, and UnmonitoredAuto',
              args: [
                Arg(
                name: 'upgrade-mode',
                suggestions: [

                  FigSuggestion(name: 'Monitored'),
                  FigSuggestion(name: 'UnmonitoredAuto')
                ]
              )
              ]
            ),
            Option(
              name: '--upgrade-timeout',
              description: 'Specify the maximum time, in seconds, that Service Fabric takes for the entire upgrade. After this period, the upgrade fails',
              args: [
                Arg(
                name: 'upgrade-timeou'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'managed-application-type',
      description: 'Manage application types on an Azure Service Fabric cluster',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new managed application type on an Azure Service Fabric managed cluster',
          options: [

            Option(
              name: ['--application-type-name', '--name'],
              description: 'Specify the application type name',
              args: [
                Arg(
                name: 'application-type-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a managed application type',
          options: [

            Option(
              name: ['--application-type-name', '--name'],
              description: 'Specify the application type name',
              args: [
                Arg(
                name: 'application-type-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'List managed application types of a given managed cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Show the properties of a managed application type on an Azure Service Fabric managed cluster',
          options: [

            Option(
              name: ['--application-type-name', '--name'],
              description: 'Specify the application type name',
              args: [
                Arg(
                name: 'application-type-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Update an managed application type',
          options: [

            Option(
              name: ['--application-type-name', '--name'],
              description: 'Specify the application type name',
              args: [
                Arg(
                name: 'application-type-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
        ),
        Subcommand(
          name: 'version',
          description: 'Manage application type versions on an Azure Service Fabric managed cluster. Only support ARM deployed application type versions',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new managed application type on an Azure Service Fabric managed cluster',
              options: [

                Option(
                  name: ['--application-type-name', '--name'],
                  description: 'Specify the application type name',
                  args: [
                    Arg(
                    name: 'application-type-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--application-type-version', '--version'],
                  description: 'Specify the application type version',
                  args: [
                    Arg(
                    name: 'application-type-versio'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--package-url',
                  description: 'Specify the url of the application package sfpkg file',
                  args: [
                    Arg(
                    name: 'package-ur'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a managed application type version',
              options: [

                Option(
                  name: ['--application-type-name', '--name'],
                  description: 'Specify the application type name',
                  args: [
                    Arg(
                    name: 'application-type-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--application-type-version', '--version'],
                  description: 'Specify the application type version',
                  args: [
                    Arg(
                    name: 'application-type-versio'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'List versions of a given managed application type',
              options: [

                Option(
                  name: ['--application-type-name', '--name'],
                  description: 'Specify the application type name',
                  args: [
                    Arg(
                    name: 'application-type-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Show the properties of a managed application type version on an Azure Service Fabric managed cluster',
              options: [

                Option(
                  name: ['--application-type-name', '--name'],
                  description: 'Specify the application type name',
                  args: [
                    Arg(
                    name: 'application-type-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--application-type-version', '--version'],
                  description: 'Specify the application type version',
                  args: [
                    Arg(
                    name: 'application-type-versio'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Update a managed application type version',
              options: [

                Option(
                  name: ['--application-type-name', '--name'],
                  description: 'Specify the application type name',
                  args: [
                    Arg(
                    name: 'application-type-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--application-type-version', '--version'],
                  description: 'Specify the application type version',
                  args: [
                    Arg(
                    name: 'application-type-versio'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--package-url',
                  description: 'Specify the url of the application package sfpkg file',
                  args: [
                    Arg(
                    name: 'package-ur'
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
    ),
    Subcommand(
      name: 'managed-cluster',
      description: 'Manage an Azure Service Fabric managed cluster',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Delete a managed cluster',
          options: [

            Option(
              name: '--admin-password',
              description: 'Admin password used for the virtual machines',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--admin-user-name',
              description: 'Admin user used for the virtual machines',
              args: [
                Arg(
                name: 'admin-user-nam'
              )
              ]
            ),
            Option(
              name: ['--client-cert-common-name', '--cert-common-name'],
              description: 'Client certificate common name',
              args: [
                Arg(
                name: 'client-cert-common-nam'
              )
              ]
            ),
            Option(
              name: ['--client-cert-is-admin', '--cert-is-admin'],
              description: 'Client authentication type',
              args: [
                Arg(
                name: 'client-cert-is-admin',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: [
                '--client-cert-issuer-thumbprint',
                '--cert-issuer-thumbprint',
                '--cert-issuer-tp',
              ],
              description: 'Space-separated list of issuer thumbprints',
              args: [
                Arg(
                name: 'client-cert-issuer-thumbprin'
              )
              ]
            ),
            Option(
              name: ['--client-cert-thumbprint', '--cert-thumbprint'],
              description: 'Client certificate thumbprint',
              args: [
                Arg(
                name: 'client-cert-thumbprin'
              )
              ]
            ),
            Option(
              name: ['--client-connection-port', '--client-port'],
              description: 'Port used for client connections to the cluster',
              args: [
                Arg(
                name: 'client-connection-por'
              )
              ]
            ),
            Option(
              name: ['--cluster-code-version', '--code-version'],
              description: 'Cluster service fabric code version. Only use if upgrade mode is Manual',
              args: [
                Arg(
                name: 'cluster-code-versio'
              )
              ]
            ),
            Option(
              name: ['--cluster-upgrade-cadence', '--upgrade-cadence'],
              description: 'The upgrade mode of the cluster when new Service Fabric runtime version is available Wave0: Cluster upgrade starts immediately after a new version is rolled out. Recommended for Test/Dev clusters.Wave1: Cluster upgrade starts 7 days after a new version is rolled out. Recommended for Pre-prod clusters.Wave2: Cluster upgrade starts 14 days after a new version is rolled out. Recommended for Production clusters',
              args: [
                Arg(
                name: 'cluster-upgrade-cadence',
                suggestions: [

                  FigSuggestion(name: 'Wave0'),
                  FigSuggestion(name: 'Wave1'),
                  FigSuggestion(name: 'Wave2')
                ]
              )
              ]
            ),
            Option(
              name: ['--cluster-upgrade-mode', '--upgrade-mode'],
              description: 'The upgrade mode of the cluster when new Service Fabric runtime version is available Automatic: The cluster will be automatically upgraded to the latest Service Fabric runtime version, upgrade_cadence will determine when the upgrade starts after the new version becomes available.Manual: The cluster will not be automatically upgraded to the latest Service Fabric runtime version. The cluster is upgraded by setting the code_version property in the cluster resource',
              args: [
                Arg(
                name: 'cluster-upgrade-mode',
                suggestions: [

                  FigSuggestion(name: 'Automatic'),
                  FigSuggestion(name: 'Manual')
                ]
              )
              ]
            ),
            Option(
              name: '--dns-name',
              description: 'Cluster\'s dns name',
              args: [
                Arg(
                name: 'dns-nam'
              )
              ]
            ),
            Option(
              name: ['--gateway-connection-port', '--gateway-port'],
              description: 'Port used for http connections to the cluster',
              args: [
                Arg(
                name: 'gateway-connection-por'
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
              name: '--sku',
              description: 'Cluster\'s Sku, the options are Basic: it will have a minimum of 3 seed nodes and only allows 1 node type and Standard: it will have a minimum of 5 seed nodes and allows multiple node types',
              args: [
                Arg(
                name: 'sk'
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
          description: 'Delete a managed cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'List managed clusters',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Show the properties of an Azure Service Fabric managed cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Update a managed cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--client-connection-port', '--client-port'],
              description: 'Port used for client connections to the cluster',
              args: [
                Arg(
                name: 'client-connection-por'
              )
              ]
            ),
            Option(
              name: '--dns-name',
              description: 'Cluster\'s dns name',
              args: [
                Arg(
                name: 'dns-nam'
              )
              ]
            ),
            Option(
              name: ['--gateway-connection-port', '--gateway-port'],
              description: 'Port used for http connections to the cluster',
              args: [
                Arg(
                name: 'gateway-connection-por'
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
          name: 'client-certificate',
          description: 'Manage client certificates of a manged cluster',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a new client certificate to the managed cluster',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--common-name',
                  description: 'Client certificate common name',
                  args: [
                    Arg(
                    name: 'common-nam'
                  )
                  ]
                ),
                Option(
                  name: '--is-admin',
                  description: 'Client authentication type'
                ),
                Option(
                  name: '--issuer-thumbprint',
                  description: 'Space-separated list of issuer thumbprints',
                  args: [
                    Arg(
                    name: 'issuer-thumbprin'
                  )
                  ]
                ),
                Option(
                  name: '--thumbprint',
                  description: 'Client certificate thumbprint',
                  args: [
                    Arg(
                    name: 'thumbprin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a client certificate from the managed cluster',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--common-name',
                  description: 'A single or Space-separated list of client certificate common name(s) to be remove',
                  args: [
                    Arg(
                    name: 'common-nam'
                  )
                  ]
                ),
                Option(
                  name: '--thumbprint',
                  description: 'A single or Space-separated list of client certificate thumbprint(s) to be remove',
                  args: [
                    Arg(
                    name: 'thumbprin'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'network-security-rule',
          description: 'Network security rule of a manged cluster',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a network security rule to a manged cluster',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--access',
                  description: 'Allows or denies network traffic',
                  args: [
                    Arg(
                    name: 'access',
                    suggestions: [

                      FigSuggestion(name: 'allow'),
                      FigSuggestion(name: 'deny')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Network security rule description',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--dest-addr-prefixes',
                  description: 'CIDR or destination IP ranges. A single or space separated list of destination address prefixes',
                  args: [
                    Arg(
                    name: 'dest-addr-prefixe'
                  )
                  ]
                ),
                Option(
                  name: '--dest-port-ranges',
                  description: 'A single or space separated list of destination port ranges',
                  args: [
                    Arg(
                    name: 'dest-port-range'
                  )
                  ]
                ),
                Option(
                  name: '--direction',
                  description: 'Network security rule direction',
                  args: [
                    Arg(
                    name: 'direction',
                    suggestions: [

                      FigSuggestion(name: 'inbound'),
                      FigSuggestion(name: 'outbound')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'Network security rule name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--priority',
                  description: 'Integer that shows priority for rule',
                  args: [
                    Arg(
                    name: 'priorit'
                  )
                  ]
                ),
                Option(
                  name: '--protocol',
                  description: 'Network protocol',
                  args: [
                    Arg(
                    name: 'protocol',
                    suggestions: [

                      FigSuggestion(name: 'ah'),
                      FigSuggestion(name: 'any'),
                      FigSuggestion(name: 'esp'),
                      FigSuggestion(name: 'http'),
                      FigSuggestion(name: 'https'),
                      FigSuggestion(name: 'icmp'),
                      FigSuggestion(name: 'tcp'),
                      FigSuggestion(name: 'udp')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--source-addr-prefixes',
                  description: 'The CIDR or source IP ranges. A single or space separated list of source address prefixes',
                  args: [
                    Arg(
                    name: 'source-addr-prefixe'
                  )
                  ]
                ),
                Option(
                  name: '--source-port-ranges',
                  description: 'A single or space separated list of source port ranges',
                  args: [
                    Arg(
                    name: 'source-port-range'
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
      name: 'managed-node-type',
      description: 'Manage a node type of an Azure Service Fabric managed cluster',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Delete a managed cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--instance-count',
              description: 'Essage = "The number of nodes in the node type',
              args: [
                Arg(
                name: 'instance-coun'
              )
              ]
            ),
            Option(
              name: ['--node-type-name', '--name', '-n'],
              description: 'Node type name',
              args: [
                Arg(
                name: 'node-type-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--application-end-port', '--app-end-port'],
              description: 'Application End port of a range of ports',
              args: [
                Arg(
                name: 'application-end-por'
              )
              ]
            ),
            Option(
              name: ['--application-start-port', '--app-start-port'],
              description: 'Application start port of a range of ports',
              args: [
                Arg(
                name: 'application-start-por'
              )
              ]
            ),
            Option(
              name: '--capacity',
              description: 'Capacity tags applied to the nodes in the node type as key/value pairs, the cluster resource manager uses these tags to understand how much resource a node has. Updating this will override the current values.for example: --capacity ClientConnections=65536 param2=value2',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: ['--data-disk-size', '--disk-size'],
              description: 'Disk size for each vm in the node type in GBs',
              args: [
                Arg(
                name: 'data-disk-siz'
              )
              ]
            ),
            Option(
              name: ['--data-disk-type', '--disk-type'],
              description: 'Managed data disk type. IOPS and throughput are given by the disk size, to see more information go to https://docs.microsoft.com/azure/virtual-machines/disks-types. Default StandardSSD_LRSStandard_LRS: Standard HDD locally redundant storage. Best for backup, non-critical, and infrequent access.StandardSSD_LRS: Standard SSD locally redundant storage. Best for web servers, lightly used enterprise applications and dev/test.Premium_LRS: Premium SSD locally redundant storage. Best for production and performance sensitive workloads',
              args: [
                Arg(
                name: 'data-disk-type',
                suggestions: [

                  FigSuggestion(name: 'Premium_LRS'),
                  FigSuggestion(name: 'StandardSSD_LRS'),
                  FigSuggestion(name: 'Standard_LRS')
                ]
              )
              ]
            ),
            Option(
              name: '--ephemeral-end-port',
              description: 'Ephemeral end port of a range of ports',
              args: [
                Arg(
                name: 'ephemeral-end-por'
              )
              ]
            ),
            Option(
              name: '--ephemeral-start-port',
              description: 'Ephemeral start port of a range of ports',
              args: [
                Arg(
                name: 'ephemeral-start-por'
              )
              ]
            ),
            Option(
              name: '--is-stateless',
              description: 'Indicates if the node type can only host Stateless workloads'
            ),
            Option(
              name: ['--multiple-placement-groups', '--multi-place-groups'],
              description: 'Indicates if scale set associated with the node type can be composed of multiple placement groups'
            ),
            Option(
              name: '--placement-property',
              description: 'Placement tags applied to nodes in the node type as key/value pairs, which can be used to indicate where certain services (workload) should run. Updating this will override the current values.for example: --placement-property NodeColor=Green SomeProperty=5',
              args: [
                Arg(
                name: 'placement-propert'
              )
              ]
            ),
            Option(
              name: '--primary',
              description: 'Specify if the node type is primary. On this node type will run system services. Only one node type should be marked as primary. Primary node type cannot be deleted or changed for existing clusters'
            ),
            Option(
              name: '--vm-image-offer',
              description: 'The offer type of the Azure Virtual Machines Marketplace image',
              args: [
                Arg(
                name: 'vm-image-offe'
              )
              ]
            ),
            Option(
              name: '--vm-image-publisher',
              description: 'The publisher of the Azure Virtual Machines Marketplace image',
              args: [
                Arg(
                name: 'vm-image-publishe'
              )
              ]
            ),
            Option(
              name: '--vm-image-sku',
              description: 'The SKU of the Azure Virtual Machines Marketplace image',
              args: [
                Arg(
                name: 'vm-image-sk'
              )
              ]
            ),
            Option(
              name: '--vm-image-version',
              description: 'The version of the Azure Virtual Machines Marketplace image',
              args: [
                Arg(
                name: 'vm-image-versio'
              )
              ]
            ),
            Option(
              name: '--vm-size',
              description: 'The size of virtual machines in the pool. All virtual machines in a pool are the same size',
              args: [
                Arg(
                name: 'vm-siz'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete node type from a cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--node-type-name', '--name', '-n'],
              description: 'Node type name',
              args: [
                Arg(
                name: 'node-type-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'List node types of a managed cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Show the properties of a node type',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--node-type-name', '--name', '-n'],
              description: 'Node type name',
              args: [
                Arg(
                name: 'node-type-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Update a managed cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--node-type-name', '--name', '-n'],
              description: 'Node type name',
              args: [
                Arg(
                name: 'node-type-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--application-end-port', '--app-end-port'],
              description: 'Application End port of a range of ports',
              args: [
                Arg(
                name: 'application-end-por'
              )
              ]
            ),
            Option(
              name: ['--application-start-port', '--app-start-port'],
              description: 'Application start port of a range of ports',
              args: [
                Arg(
                name: 'application-start-por'
              )
              ]
            ),
            Option(
              name: '--capacity',
              description: 'Capacity tags applied to the nodes in the node type as key/value pairs, the cluster resource manager uses these tags to understand how much resource a node has. Updating this will override the current values.for example: --capacity ClientConnections=65536 param2=value2',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: '--ephemeral-end-port',
              description: 'Ephemeral end port of a range of ports',
              args: [
                Arg(
                name: 'ephemeral-end-por'
              )
              ]
            ),
            Option(
              name: '--ephemeral-start-port',
              description: 'Ephemeral start port of a range of ports',
              args: [
                Arg(
                name: 'ephemeral-start-por'
              )
              ]
            ),
            Option(
              name: '--instance-count',
              description: 'Essage = "The number of nodes in the node type',
              args: [
                Arg(
                name: 'instance-coun'
              )
              ]
            ),
            Option(
              name: '--placement-property',
              description: 'Placement tags applied to nodes in the node type as key/value pairs, which can be used to indicate where certain services (workload) should run. Updating this will override the current values.for example: --placement-property NodeColor=Green SomeProperty=5',
              args: [
                Arg(
                name: 'placement-propert'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'node',
          description: 'Perform operations on nodes of a node type on managed clusters',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete nodes of a node type',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--node-type-name', '--name', '-n'],
                  description: 'Node type name',
                  args: [
                    Arg(
                    name: 'node-type-nam'
                  )
                  ]
                ),
                Option(
                  name: '--node-name',
                  description: 'List of target nodes to perform the operation',
                  args: [
                    Arg(
                    name: 'node-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--force',
                  description: 'Using this flag will force the operation even if service fabric is unable to disable the nodes. Use with caution as this might cause data loss if stateful workloads are running on the node'
                )
              ]
            ),
            Subcommand(
              name: 'reimage',
              description: 'Reimage nodes of a node type',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--node-type-name', '--name', '-n'],
                  description: 'Node type name',
                  args: [
                    Arg(
                    name: 'node-type-nam'
                  )
                  ]
                ),
                Option(
                  name: '--node-name',
                  description: 'List of target nodes to perform the operation',
                  args: [
                    Arg(
                    name: 'node-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--force',
                  description: 'Using this flag will force the operation even if service fabric is unable to disable the nodes. Use with caution as this might cause data loss if stateful workloads are running on the node'
                )
              ]
            ),
            Subcommand(
              name: 'restart',
              description: 'Restart nodes of a node type',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--node-type-name', '--name', '-n'],
                  description: 'Node type name',
                  args: [
                    Arg(
                    name: 'node-type-nam'
                  )
                  ]
                ),
                Option(
                  name: '--node-name',
                  description: 'List of target nodes to perform the operation',
                  args: [
                    Arg(
                    name: 'node-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--force',
                  description: 'Using this flag will force the operation even if service fabric is unable to disable the nodes. Use with caution as this might cause data loss if stateful workloads are running on the node'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'vm-extension',
          description: 'Managed vm extension on a node type on managed clusters',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add an extension to the node type',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--extension-name',
                  description: 'Extension name',
                  args: [
                    Arg(
                    name: 'extension-nam'
                  )
                  ]
                ),
                Option(
                  name: '--extension-type',
                  description: 'Specifies the type of the extension; an example is "CustomScriptExtension"',
                  args: [
                    Arg(
                    name: 'extension-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--node-type-name', '--name', '-n'],
                  description: 'Node type name',
                  args: [
                    Arg(
                    name: 'node-type-nam'
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
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
                ),
                Option(
                  name: ['--auto-upgrade-minor-version', '--auto-upgrade'],
                  description: 'Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true',
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
                  name: '--force-update-tag',
                  description: 'If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed',
                  args: [
                    Arg(
                    name: 'force-update-ta'
                  )
                  ]
                ),
                Option(
                  name: '--protected-setting',
                  description: 'The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all',
                  args: [
                    Arg(
                    name: 'protected-settin'
                  )
                  ]
                ),
                Option(
                  name: ['--provision-after-extension', '--provision-after'],
                  description: 'Collection of extension names after which this extension needs to be provisioned',
                  args: [
                    Arg(
                    name: 'provision-after-extensio'
                  )
                  ]
                ),
                Option(
                  name: '--setting',
                  description: 'Json formatted public settings for the extension',
                  args: [
                    Arg(
                    name: 'settin'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an extension to the node type',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--extension-name',
                  description: 'Extension name',
                  args: [
                    Arg(
                    name: 'extension-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--node-type-name', '--name', '-n'],
                  description: 'Node type name',
                  args: [
                    Arg(
                    name: 'node-type-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          name: 'vm-secret',
          description: 'Managed vm secrets on a node type on managed clusters',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a secret to the node type',
              options: [

                Option(
                  name: '--certificate-store',
                  description: 'Specifies the certificate store on the Virtual Machine to which the certificate should be added. The specified certificate store is implicitly in the LocalMachine account',
                  args: [
                    Arg(
                    name: 'certificate-stor'
                  )
                  ]
                ),
                Option(
                  name: '--certificate-url',
                  description: 'This is the URL of a certificate that has been uploaded to Key Vault as a secret. For adding a secret to the Key Vault, see Add a key or secret to the key vault. In this case, your certificate needs to be It is the Base64 encoding of the following JSON Object which is encoded in UTF-8: { "data":"", "dataType":"pfx", "password":""}/',
                  args: [
                    Arg(
                    name: 'certificate-ur'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--node-type-name', '--name', '-n'],
                  description: 'Node type name',
                  args: [
                    Arg(
                    name: 'node-type-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--source-vault-id',
                  description: 'Key Vault resource id containing the certificates',
                  args: [
                    Arg(
                    name: 'source-vault-i'
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
      name: 'managed-service',
      description: 'Manage services running on an Azure Service Fabric managed cluster. Only support ARM deployed services',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new managed service on an Azure Service Fabric managed cluster',
          options: [

            Option(
              name: ['--application-name', '--application'],
              description: 'Specify the name of the service',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--service-name', '--name'],
              description: 'Specify the name of the service',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--service-type', '--type'],
              description: 'Specify the service type name of the application, it should exist in the application manifest',
              args: [
                Arg(
                name: 'service-typ'
              )
              ]
            ),
            Option(
              name: '--state',
              description: 'Specify if the service is stateless or stateful',
              args: [
                Arg(
                name: 'state',
                suggestions: [

                  FigSuggestion(name: 'Stateful'),
                  FigSuggestion(name: 'Stateless')
                ]
              )
              ]
            ),
            Option(
              name: [
                '--service-package-activation-mode',
                '--package-activation-mode',
                '--activation-mode',
              ],
              description: 'Specify the activation mode of the service package',
              args: [
                Arg(
                name: 'service-package-activation-mod'
              )
              ]
            ),
            Option(
              name: '--default-move-cost',
              description: 'Specify the default cost for a move. Higher costs make it less likely that the Cluster Resource Manager will move the replica when trying to balance the cluster',
              args: [
                Arg(
                name: 'default-move-cost',
                suggestions: [

                  FigSuggestion(name: 'High'),
                  FigSuggestion(name: 'Low'),
                  FigSuggestion(name: 'Medium'),
                  FigSuggestion(name: 'Zero')
                ]
              )
              ]
            ),
            Option(
              name: '--has-persisted-state',
              description: 'Determines whether this is a persistent service which stores states on the local disk. If it is then the value of this property is true, if not it is false',
              args: [
                Arg(
                name: 'has-persisted-state',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--high-key',
              description: 'Specify the upper bound of the partition key range that should be split between the partition ‘Count’ This is only used with UniformInt64 partition scheme',
              args: [
                Arg(
                name: 'high-ke'
              )
              ]
            ),
            Option(
              name: '--instance-count',
              description: 'Specify the instance count for the stateless service. If -1 is used, it means it will run on all the nodes',
              args: [
                Arg(
                name: 'instance-coun'
              )
              ]
            ),
            Option(
              name: [
                '--stand-by-replica-keep-duration',
                '--stand-by-keep-duration',
                '--keep-duration',
              ],
              description: 'Specify the definition on how long StandBy replicas should be maintained before being removed, represented in ISO 8601 format "hh:mm:ss"',
              args: [
                Arg(
                name: 'stand-by-replica-keep-duratio'
              )
              ]
            ),
            Option(
              name: '--low-key',
              description: 'Specify the lower bound of the partition key range that should be split between the partition ‘Count’ This is only used with UniformInt64 partition scheme',
              args: [
                Arg(
                name: 'low-ke'
              )
              ]
            ),
            Option(
              name: ['--min-instance-percentage', '--min-inst-pct'],
              description: 'Specify the minimum percentage of InstanceCount that must be up to meet the EnsureAvailability safety check during operations like upgrade or deactivate node. The actual number that is used is max( MinInstanceCount, ceil( MinInstancePercentage/100.0 * InstanceCount) ). Note, if InstanceCount is set to -1, during MinInstancePercentage computation, -1 is first converted into the number of nodes on which the instances are allowed to be placed according to the placement constraints on the service. Allowed values are from 0 to 100',
              args: [
                Arg(
                name: 'min-instance-percentag'
              )
              ]
            ),
            Option(
              name: '--min-instance-count',
              description: 'Specify the minimum number of instances that must be up to meet the EnsureAvailability safety check during operations like upgrade or deactivate node. The actual number that is used is max( MinInstanceCount, ceil( MinInstancePercentage/100.0 * InstanceCount) ). Note, if InstanceCount is set to -1, during MinInstanceCount computation -1 is first converted into the number of nodes on which the instances are allowed to be placed according to the placement constraints on the service',
              args: [
                Arg(
                name: 'min-instance-coun'
              )
              ]
            ),
            Option(
              name: ['--min-replica-set-size', '--min-replica'],
              description: 'Specify the min replica set size for the stateful service',
              args: [
                Arg(
                name: 'min-replica-set-siz'
              )
              ]
            ),
            Option(
              name: '--partition-count',
              description: 'Specify the number of partitions. This is only used with UniformInt64 partition scheme',
              args: [
                Arg(
                name: 'partition-coun'
              )
              ]
            ),
            Option(
              name: '--partition-names',
              description: 'Specify the array for the names of the partitions. This is only used with Named partition scheme',
              args: [
                Arg(
                name: 'partition-name'
              )
              ]
            ),
            Option(
              name: '--partition-scheme',
              description: 'Specify what partition scheme to use. Singleton partitions are typically used when the service does not require any additional routing. UniformInt64 means that each partition owns a range of int64 keys. Named is usually for services with data that can be bucketed, within a bounded set. Some common examples of data fields used as named partition keys would be regions, postal codes, customer groups, or other business boundaries',
              args: [
                Arg(
                name: 'partition-scheme',
                suggestions: [

                  FigSuggestion(name: 'Named'),
                  FigSuggestion(name: 'Singleton'),
                  FigSuggestion(name: 'UniformInt64Range')
                ]
              )
              ]
            ),
            Option(
              name: '--placement-constraints',
              description: 'Specify the placement constraints as a string. Placement constraints are boolean expressions on node properties and allow for restricting a service to particular nodes based on the service requirements. For example, to place a service on nodes where NodeType is blue specify the following: "NodeColor == blue)"',
              args: [
                Arg(
                name: 'placement-constraint'
              )
              ]
            ),
            Option(
              name: ['--service-placement-time-limit', '--plcmt-time-limit'],
              description: 'Specify the duration for which replicas can stay InBuild before reporting that build is stuck, represented in ISO 8601 format "hh:mm:ss"',
              args: [
                Arg(
                name: 'service-placement-time-limi'
              )
              ]
            ),
            Option(
              name: ['--quorum-loss-wait-duration', '--quorum-loss-wait'],
              description: 'Specify the maximum duration for which a partition is allowed to be in a state of quorum loss, represented in ISO 8601 format "hh:mm:ss"',
              args: [
                Arg(
                name: 'quorum-loss-wait-duratio'
              )
              ]
            ),
            Option(
              name: [
                '--replica-restart-wait-duration',
                '--replica-restart-wait',
              ],
              description: 'Specify the duration between when a replica goes down and when a new replica is created, represented in ISO 8601 format "hh:mm:ss"',
              args: [
                Arg(
                name: 'replica-restart-wait-duratio'
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
              name: ['--target-replica-set-size', '--target-replica'],
              description: 'Specify the target replica set size for the stateful service',
              args: [
                Arg(
                name: 'target-replica-set-siz'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a managed service',
          options: [

            Option(
              name: ['--application-name', '--application'],
              description: 'Specify the name of the service',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--service-name', '--name'],
              description: 'Specify the name of the service',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'List managed services of a given managed application',
          options: [

            Option(
              name: ['--application-name', '--application'],
              description: 'Specify the name of the service',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Get a service',
          options: [

            Option(
              name: ['--application-name', '--application'],
              description: 'Specify the name of the service',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--service-name', '--name'],
              description: 'Specify the name of the service',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Update a managed service',
          options: [

            Option(
              name: ['--application-name', '--application'],
              description: 'Specify the name of the service',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--service-name', '--name'],
              description: 'Specify the name of the service',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--default-move-cost',
              description: 'Specify the default cost for a move. Higher costs make it less likely that the Cluster Resource Manager will move the replica when trying to balance the cluster',
              args: [
                Arg(
                name: 'default-move-cost',
                suggestions: [

                  FigSuggestion(name: 'High'),
                  FigSuggestion(name: 'Low'),
                  FigSuggestion(name: 'Medium'),
                  FigSuggestion(name: 'Zero')
                ]
              )
              ]
            ),
            Option(
              name: '--instance-count',
              description: 'Specify the instance count for the stateless service. If -1 is used, it means it will run on all the nodes',
              args: [
                Arg(
                name: 'instance-coun'
              )
              ]
            ),
            Option(
              name: [
                '--stand-by-replica-keep-duration',
                '--stand-by-keep-duration',
                '--keep-duration',
              ],
              description: 'Specify the definition on how long StandBy replicas should be maintained before being removed, represented in ISO 8601 format "hh:mm:ss"',
              args: [
                Arg(
                name: 'stand-by-replica-keep-duratio'
              )
              ]
            ),
            Option(
              name: ['--min-instance-percentage', '--min-inst-pct'],
              description: 'Specify the minimum percentage of InstanceCount that must be up to meet the EnsureAvailability safety check during operations like upgrade or deactivate node. The actual number that is used is max( MinInstanceCount, ceil( MinInstancePercentage/100.0 * InstanceCount) ). Note, if InstanceCount is set to -1, during MinInstancePercentage computation, -1 is first converted into the number of nodes on which the instances are allowed to be placed according to the placement constraints on the service. Allowed values are from 0 to 100',
              args: [
                Arg(
                name: 'min-instance-percentag'
              )
              ]
            ),
            Option(
              name: '--min-instance-count',
              description: 'Specify the minimum number of instances that must be up to meet the EnsureAvailability safety check during operations like upgrade or deactivate node. The actual number that is used is max( MinInstanceCount, ceil( MinInstancePercentage/100.0 * InstanceCount) ). Note, if InstanceCount is set to -1, during MinInstanceCount computation -1 is first converted into the number of nodes on which the instances are allowed to be placed according to the placement constraints on the service',
              args: [
                Arg(
                name: 'min-instance-coun'
              )
              ]
            ),
            Option(
              name: ['--min-replica-set-size', '--min-replica'],
              description: 'Specify the min replica set size for the stateful service',
              args: [
                Arg(
                name: 'min-replica-set-siz'
              )
              ]
            ),
            Option(
              name: '--placement-constraints',
              description: 'Specify the placement constraints as a string. Placement constraints are boolean expressions on node properties and allow for restricting a service to particular nodes based on the service requirements. For example, to place a service on nodes where NodeType is blue specify the following: "NodeColor == blue)"',
              args: [
                Arg(
                name: 'placement-constraint'
              )
              ]
            ),
            Option(
              name: ['--service-placement-time-limit', '--plcmt-time-limit'],
              description: 'Specify the duration for which replicas can stay InBuild before reporting that build is stuck, represented in ISO 8601 format "hh:mm:ss"',
              args: [
                Arg(
                name: 'service-placement-time-limi'
              )
              ]
            ),
            Option(
              name: ['--quorum-loss-wait-duration', '--quorum-loss-wait'],
              description: 'Specify the maximum duration for which a partition is allowed to be in a state of quorum loss, represented in ISO 8601 format "hh:mm:ss"',
              args: [
                Arg(
                name: 'quorum-loss-wait-duratio'
              )
              ]
            ),
            Option(
              name: [
                '--replica-restart-wait-duration',
                '--replica-restart-wait',
              ],
              description: 'Specify the duration between when a replica goes down and when a new replica is created, represented in ISO 8601 format "hh:mm:ss"',
              args: [
                Arg(
                name: 'replica-restart-wait-duratio'
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
              name: ['--target-replica-set-size', '--target-replica'],
              description: 'Specify the target replica set size for the stateful service',
              args: [
                Arg(
                name: 'target-replica-set-siz'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'correlation-scheme',
          description: 'Manage correlation schemes of services running on an Azure Service Fabric managed cluster. Only support ARM deployed services',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new managed service correlation scheme on an Azure Service Fabric managed cluster',
              options: [

                Option(
                  name: ['--application-name', '--application'],
                  description: 'Specify the name of the service',
                  args: [
                    Arg(
                    name: 'application-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--correlated-service-name', '--correlated-name'],
                  description: 'Specify the Arm Resource ID of the service that the correlation relationship is established with',
                  args: [
                    Arg(
                    name: 'correlated-service-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--service-name', '--name'],
                  description: 'Specify the name of the service',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--scheme',
                  description: 'Specify the ServiceCorrelationScheme which describes the relationship between this service and the service specified via correlated_service_name',
                  args: [
                    Arg(
                    name: 'schem'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a managed service correlation scheme',
              options: [

                Option(
                  name: ['--application-name', '--application'],
                  description: 'Specify the name of the service',
                  args: [
                    Arg(
                    name: 'application-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--correlated-service-name', '--correlated-name'],
                  description: 'Specify the Arm Resource ID of the service that the correlation relationship is established with',
                  args: [
                    Arg(
                    name: 'correlated-service-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--service-name', '--name'],
                  description: 'Specify the name of the service',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Update a managed service correlation scheme',
              options: [

                Option(
                  name: ['--application-name', '--application'],
                  description: 'Specify the name of the service',
                  args: [
                    Arg(
                    name: 'application-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--correlated-service-name', '--correlated-name'],
                  description: 'Specify the Arm Resource ID of the service that the correlation relationship is established with',
                  args: [
                    Arg(
                    name: 'correlated-service-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--service-name', '--name'],
                  description: 'Specify the name of the service',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--scheme',
                  description: 'Specify the ServiceCorrelationScheme which describes the relationship between this service and the service specified via correlated_service_name',
                  args: [
                    Arg(
                    name: 'schem'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'load-metrics',
          description: 'Manage service load metrics running on an Azure Service Fabric managed cluster. Only support ARM deployed services',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new managed service load metric on an Azure Service Fabric managed cluster',
              options: [

                Option(
                  name: ['--application-name', '--application'],
                  description: 'Specify the name of the service',
                  args: [
                    Arg(
                    name: 'application-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--metric-name',
                  description: 'Specify the name of the metric',
                  args: [
                    Arg(
                    name: 'metric-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--service-name', '--name'],
                  description: 'Specify the name of the service',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--default-load',
                  description: 'Specify the default amount of load, as a number, that this service creates for this metric. Used only for Stateless services',
                  args: [
                    Arg(
                    name: 'default-loa'
                  )
                  ]
                ),
                Option(
                  name: '--primary-default-load',
                  description: 'Specify the default amount of load, as a number, that this service creates for this metric when it is a Primary replica. Used only for Stateful services',
                  args: [
                    Arg(
                    name: 'primary-default-loa'
                  )
                  ]
                ),
                Option(
                  name: '--secondary-default-load',
                  description: 'Specify the default amount of load, as a number, that this service creates for this metric when it is a Secondary replica. Used only for Stateful services',
                  args: [
                    Arg(
                    name: 'secondary-default-loa'
                  )
                  ]
                ),
                Option(
                  name: '--weight',
                  description: 'Specify the service load metric relative weight, compared to other metrics configured for this service, as a number',
                  args: [
                    Arg(
                    name: 'weigh'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a managed service',
              options: [

                Option(
                  name: ['--application-name', '--application'],
                  description: 'Specify the name of the service',
                  args: [
                    Arg(
                    name: 'application-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--metric-name',
                  description: 'Specify the name of the metric',
                  args: [
                    Arg(
                    name: 'metric-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--service-name', '--name'],
                  description: 'Specify the name of the service',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Update a managed service',
              options: [

                Option(
                  name: ['--application-name', '--application'],
                  description: 'Specify the name of the service',
                  args: [
                    Arg(
                    name: 'application-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Specify the name of the cluster, if not given it will be same as resource group name',
                  args: [
                    Arg(
                    name: 'cluster-nam'
                  )
                  ]
                ),
                Option(
                  name: '--metric-name',
                  description: 'Specify the name of the metric',
                  args: [
                    Arg(
                    name: 'metric-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--service-name', '--name'],
                  description: 'Specify the name of the service',
                  args: [
                    Arg(
                    name: 'service-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--default-load',
                  description: 'Specify the default amount of load, as a number, that this service creates for this metric. Used only for Stateless services',
                  args: [
                    Arg(
                    name: 'default-loa'
                  )
                  ]
                ),
                Option(
                  name: '--primary-default-load',
                  description: 'Specify the default amount of load, as a number, that this service creates for this metric when it is a Primary replica. Used only for Stateful services',
                  args: [
                    Arg(
                    name: 'primary-default-loa'
                  )
                  ]
                ),
                Option(
                  name: '--secondary-default-load',
                  description: 'Specify the default amount of load, as a number, that this service creates for this metric when it is a Secondary replica. Used only for Stateful services',
                  args: [
                    Arg(
                    name: 'secondary-default-loa'
                  )
                  ]
                ),
                Option(
                  name: '--weight',
                  description: 'Specify the service load metric relative weight, compared to other metrics configured for this service, as a number',
                  args: [
                    Arg(
                    name: 'weigh'
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
      name: 'service',
      description: 'Manage services running on an Azure Service Fabric cluster. Only support ARM deployed services',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new service on an Azure Service Fabric cluster',
          options: [

            Option(
              name: ['--application-name', '--application'],
              description: 'Specify the name of the service. The application name must be a prefix of the service name, for example: appName~serviceName',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--service-name', '--name'],
              description: 'Specify the name of the service. The application name must be a prefix of the service name, for example: appName~serviceName',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--service-type',
              description: 'Specify the service type name of the application, it should exist in the application manifest',
              args: [
                Arg(
                name: 'service-typ'
              )
              ]
            ),
            Option(
              name: '--state',
              description: 'Specify if the service is stateless or stateful',
              args: [
                Arg(
                name: 'state',
                suggestions: [

                  FigSuggestion(name: 'stateful'),
                  FigSuggestion(name: 'stateless')
                ]
              )
              ]
            ),
            Option(
              name: '--default-move-cost',
              description: 'Specify the default cost for a move. Higher costs make it less likely that the Cluster Resource Manager will move the replica when trying to balance the cluster',
              args: [
                Arg(
                name: 'default-move-cost',
                suggestions: [

                  FigSuggestion(name: 'High'),
                  FigSuggestion(name: 'Low'),
                  FigSuggestion(name: 'Medium'),
                  FigSuggestion(name: 'Zero')
                ]
              )
              ]
            ),
            Option(
              name: '--instance-count',
              description: 'Specify the instance count for the stateless service. If -1 is used, it means it will run on all the nodes',
              args: [
                Arg(
                name: 'instance-coun'
              )
              ]
            ),
            Option(
              name: ['--min-replica-set-size', '--min-replica'],
              description: 'Specify the min replica set size for the stateful service',
              args: [
                Arg(
                name: 'min-replica-set-siz'
              )
              ]
            ),
            Option(
              name: '--partition-scheme',
              description: 'Specify what partition scheme to use. Singleton partitions are typically used when the service does not require any additional routing. UniformInt64 means that each partition owns a range of int64 keys. Named is usually for services with data that can be bucketed, within a bounded set. Some common examples of data fields used as named partition keys would be regions, postal codes, customer groups, or other business boundaries',
              args: [
                Arg(
                name: 'partition-scheme',
                suggestions: [

                  FigSuggestion(name: 'named'),
                  FigSuggestion(name: 'singleton'),
                  FigSuggestion(name: 'uniformInt64')
                ]
              )
              ]
            ),
            Option(
              name: ['--target-replica-set-size', '--target-replica'],
              description: 'Specify the target replica set size for the stateful service',
              args: [
                Arg(
                name: 'target-replica-set-siz'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a service',
          options: [

            Option(
              name: '--application-name',
              description: 'The name of the application resource',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--service-name', '--name'],
              description: 'Specify the name of the service. The application name must be a prefix of the service name, for example: appName~serviceName',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'List services of a given application',
          options: [

            Option(
              name: '--application-name',
              description: 'The name of the application resource',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Get a service',
          options: [

            Option(
              name: '--application-name',
              description: 'The name of the application resource',
              args: [
                Arg(
                name: 'application-nam'
              )
              ]
            ),
            Option(
              name: ['--cluster-name', '-c'],
              description: 'Specify the name of the cluster, if not given it will be same as resource group name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--service-name', '--name'],
              description: 'Specify the name of the service. The application name must be a prefix of the service name, for example: appName~serviceName',
              args: [
                Arg(
                name: 'service-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Specify the resource group name. You can configure the default group using az configure --defaults group=<name>',
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
