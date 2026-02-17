// Auto-generated from TypeScript source: managed-cassandra.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `managed-cassandra` CLI
final FigSpec managedCassandraSpec = FigSpec(
  name: 'managed-cassandra',
  description: 'Azure Managed Cassandra',
  subcommands: [

    Subcommand(
      name: 'cluster',
      description: 'Azure Managed Cassandra Cluster',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Managed Cassandra Cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Cluster Name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--delegated-management-subnet-id', '-s'],
              description: 'The resource id of a subnet where the ip address of the cassandra management server will be allocated. This subnet must have connectivity to the delegated_subnet_id subnet of each data center',
              args: [
                Arg(
                name: 'delegated-management-subnet-i'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Azure Location of the Cluster',
              args: [
                Arg(
                name: 'locatio'
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
              name: '--authentication-method',
              description: 'Authentication mode can be None or Cassandra. If None, no authentication will be required to connect to the Cassandra API. If Cassandra, then passwords will be used',
              args: [
                Arg(
                name: 'authentication-method',
                suggestions: [

                  FigSuggestion(name: 'Cassandra'),
                  FigSuggestion(name: 'None')
                ]
              )
              ]
            ),
            Option(
              name: '--cassandra-version',
              description: 'The version of Cassandra chosen',
              args: [
                Arg(
                name: 'cassandra-versio'
              )
              ]
            ),
            Option(
              name: '--client-certificates',
              description: 'If specified, enables client certificate authentication to the Cassandra API',
              args: [
                Arg(
                name: 'client-certificate'
              )
              ]
            ),
            Option(
              name: '--cluster-name-override',
              description: 'If a cluster must have a name that is not a valid azure resource name, this field can be specified to choose the Cassandra cluster name. Otherwise, the resource name will be used as the cluster name',
              args: [
                Arg(
                name: 'cluster-name-overrid'
              )
              ]
            ),
            Option(
              name: ['--external-gossip-certificates', '-e'],
              description: 'A list of certificates that the managed cassandra data center\'s should accept',
              args: [
                Arg(
                name: 'external-gossip-certificate'
              )
              ]
            ),
            Option(
              name: '--external-seed-nodes',
              description: 'A list of ip addresses of the seed nodes of on-premise data centers',
              args: [
                Arg(
                name: 'external-seed-node'
              )
              ]
            ),
            Option(
              name: '--hours-between-backups',
              description: 'The number of hours between backup attempts',
              args: [
                Arg(
                name: 'hours-between-backup'
              )
              ]
            ),
            Option(
              name: '--identity-type',
              description: 'Type of identity used for Customer Managed Disk Key',
              args: [
                Arg(
                name: 'identity-type',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'SystemAssigned')
                ]
              )
              ]
            ),
            Option(
              name: ['--initial-cassandra-admin-password', '-i'],
              description: 'The intial password to be configured when a cluster is created for authentication_method Cassandra',
              args: [
                Arg(
                name: 'initial-cassandra-admin-passwor'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--repair-enabled',
              description: 'Enables automatic repair',
              args: [
                Arg(
                name: 'repair-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--restore-from-backup-id',
              description: 'The resource id of a backup. If provided on create, the backup will be used to prepopulate the cluster. The cluster data center count and node counts must match the backup',
              args: [
                Arg(
                name: 'restore-from-backup-i'
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
          name: 'deallocate',
          description: 'Deallocate the Managed Cassandra Cluster and Associated Data Centers. Deallocation will deallocate the host virtual machine of this cluster, and reserved the data disk. This won\'t do anything on an already deallocated cluster. Use Start to restart the cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Cluster Name',
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
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a Managed Cassandra Cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Cluster Name',
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
          name: 'invoke-command',
          description: 'Invoke a command like nodetool for cassandra maintenance',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Cluster Name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: '--command-name',
              description: 'The command which should be run',
              args: [
                Arg(
                name: 'command-nam'
              )
              ]
            ),
            Option(
              name: '--host',
              description: 'IP address of the cassandra host to run the command on',
              args: [
                Arg(
                name: 'hos'
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
              name: '--arguments',
              description: 'The key="value" of arguments for the command',
              args: [
                Arg(
                name: 'argument'
              )
              ]
            ),
            Option(
              name: '--cassandra-stop-start',
              description: 'If true, stops cassandra before executing the command and then start it again',
              args: [
                Arg(
                name: 'cassandra-stop-start',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--readwrite',
              description: 'If true, allows the command to write to the cassandra directory, otherwise read-only',
              args: [
                Arg(
                name: 'readwrite',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the Managed Cassandra Clusters in a ResourceGroup and Subscription. If the ResourceGroup is not specified all the clusters in this Subscription are returned',
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
          description: 'Get a Managed Cassandra Cluster Resource',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Cluster Name',
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
          name: 'start',
          description: 'Start the Managed Cassandra Cluster and Associated Data Centers. Start will start the host virtual machine of this cluster with reserved data disk. This won\'t do anything on an already running cluster. Use Deallocate to deallocate the cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Cluster Name',
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
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'status',
          description: 'Gets the CPU, memory, and disk usage statistics for each Cassandra node in a cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Cluster Name',
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
          description: 'Update a Managed Cassandra Cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Cluster Name',
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
            ),
            Option(
              name: '--authentication-method',
              description: 'Authentication mode can be None or Cassandra. If None, no authentication will be required to connect to the Cassandra API. If Cassandra, then passwords will be used',
              args: [
                Arg(
                name: 'authentication-method',
                suggestions: [

                  FigSuggestion(name: 'Cassandra'),
                  FigSuggestion(name: 'None')
                ]
              )
              ]
            ),
            Option(
              name: '--cassandra-version',
              description: 'The version of Cassandra chosen',
              args: [
                Arg(
                name: 'cassandra-versio'
              )
              ]
            ),
            Option(
              name: '--client-certificates',
              description: 'If specified, enables client certificate authentication to the Cassandra API',
              args: [
                Arg(
                name: 'client-certificate'
              )
              ]
            ),
            Option(
              name: ['--external-gossip-certificates', '-e'],
              description: 'A list of certificates that the managed cassandra data center\'s should accept',
              args: [
                Arg(
                name: 'external-gossip-certificate'
              )
              ]
            ),
            Option(
              name: '--external-seed-nodes',
              description: 'A list of ip addresses of the seed nodes of on-premise data centers',
              args: [
                Arg(
                name: 'external-seed-node'
              )
              ]
            ),
            Option(
              name: '--hours-between-backups',
              description: 'The number of hours between backup attempts',
              args: [
                Arg(
                name: 'hours-between-backup'
              )
              ]
            ),
            Option(
              name: '--identity-type',
              description: 'Type of identity used for Customer Managed Disk Key',
              args: [
                Arg(
                name: 'identity-type',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'SystemAssigned')
                ]
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--repair-enabled',
              description: 'Enables automatic repair',
              args: [
                Arg(
                name: 'repair-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
            )
          ]
        ),
        Subcommand(
          name: 'backup',
          description: 'Azure Managed Cassandra cluster Backup',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the backups of this cluster that are available to restore',
              options: [

                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Cluster Name',
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
              description: 'Get a managed cassandra backup resource of this cluster',
              options: [

                Option(
                  name: '--backup-id',
                  description: 'The resource id of the backup',
                  args: [
                    Arg(
                    name: 'backup-i'
                  )
                  ]
                ),
                Option(
                  name: ['--cluster-name', '-c'],
                  description: 'Cluster Name',
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'datacenter',
      description: 'Azure Managed Cassandra DataCenter',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Datacenter in an Azure Managed Cassandra Cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Cluster Name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--data-center-location', '-l'],
              description: 'Azure Location of the Datacenter',
              args: [
                Arg(
                name: 'data-center-locatio'
              )
              ]
            ),
            Option(
              name: ['--data-center-name', '-d'],
              description: 'Datacenter Name',
              args: [
                Arg(
                name: 'data-center-nam'
              )
              ]
            ),
            Option(
              name: ['--delegated-subnet-id', '-s'],
              description: 'The resource id of a subnet where ip addresses of the Cassandra virtual machines will be allocated. This must be in the same region as data_center_location',
              args: [
                Arg(
                name: 'delegated-subnet-i'
              )
              ]
            ),
            Option(
              name: ['--node-count', '-n'],
              description: 'The number of Cassandra virtual machines in this data center. The minimum value is 3',
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
              name: ['--availability-zone', '-z'],
              description: 'If the data center haves Availability Zone feature, apply it to the Virtual Machine ScaleSet that host the data center virtual machines',
              args: [
                Arg(
                name: 'availability-zone',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--backup-storage-customer-key-uri', '-p'],
              description: 'Indicates the Key Uri of the customer key to use for encryption of the backup storage account',
              args: [
                Arg(
                name: 'backup-storage-customer-key-ur'
              )
              ]
            ),
            Option(
              name: ['--base64-encoded-cassandra-yaml-fragment', '-b'],
              description: 'This is a Base64 encoded yaml file that is a subset of cassandra.yaml. Supported fields will be honored and others will be ignored',
              args: [
                Arg(
                name: 'base64-encoded-cassandra-yaml-fragmen'
              )
              ]
            ),
            Option(
              name: '--disk-capacity',
              description: 'Number of disk used for data centers. Default value is 4',
              args: [
                Arg(
                name: 'disk-capacit'
              )
              ]
            ),
            Option(
              name: '--disk-sku',
              description: 'Disk SKU used for data centers. Default value is P30',
              args: [
                Arg(
                name: 'disk-sk'
              )
              ]
            ),
            Option(
              name: ['--managed-disk-customer-key-uri', '-k'],
              description: 'Key uri to use for encryption of managed disks. Ensure the system assigned identity of the cluster has been assigned appropriate permissions(key get/wrap/unwrap permissions) on the key',
              args: [
                Arg(
                name: 'managed-disk-customer-key-ur'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--sku',
              description: 'Virtual Machine SKU used for data centers. Default value is Standard_DS14_v2',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a Managed Cassandra Datacenter',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Cluster Name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--data-center-name', '-d'],
              description: 'Datacenter Name',
              args: [
                Arg(
                name: 'data-center-nam'
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
          description: 'List the Managed Cassandra Datacenters in a given Cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Cluster Name',
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
          description: 'Get a Managed Cassandra DataCenter Resource',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Cluster Name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--data-center-name', '-d'],
              description: 'Datacenter Name',
              args: [
                Arg(
                name: 'data-center-nam'
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
          description: 'Update a Datacenter in an Azure Managed Cassandra Cluster',
          options: [

            Option(
              name: ['--cluster-name', '-c'],
              description: 'Cluster Name',
              args: [
                Arg(
                name: 'cluster-nam'
              )
              ]
            ),
            Option(
              name: ['--data-center-name', '-d'],
              description: 'Datacenter Name',
              args: [
                Arg(
                name: 'data-center-nam'
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
              name: ['--backup-storage-customer-key-uri', '-p'],
              description: 'Indicates the Key Uri of the customer key to use for encryption of the backup storage account',
              args: [
                Arg(
                name: 'backup-storage-customer-key-ur'
              )
              ]
            ),
            Option(
              name: ['--base64-encoded-cassandra-yaml-fragment', '-b'],
              description: 'This is a Base64 encoded yaml file that is a subset of cassandra.yaml. Supported fields will be honored and others will be ignored',
              args: [
                Arg(
                name: 'base64-encoded-cassandra-yaml-fragmen'
              )
              ]
            ),
            Option(
              name: ['--managed-disk-customer-key-uri', '-k'],
              description: 'Key uri to use for encryption of managed disks. Ensure the system assigned identity of the cluster has been assigned appropriate permissions(key get/wrap/unwrap permissions) on the key',
              args: [
                Arg(
                name: 'managed-disk-customer-key-ur'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--node-count', '-n'],
              description: 'The number of Cassandra virtual machines in this data center. The minimum value is 3',
              args: [
                Arg(
                name: 'node-coun'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'Virtual Machine SKU used for data centers. Default value is Standard_DS14_v2',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
