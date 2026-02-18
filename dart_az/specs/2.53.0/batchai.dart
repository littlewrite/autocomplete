// Auto-generated from TypeScript source: batchai.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `batchai` CLI
final FigSpec batchaiSpec = FigSpec(
  name: 'batchai',
  description: 'Manage Batch AI resources',
  subcommands: [

    Subcommand(
      name: 'cluster',
      description: 'Commands to manage clusters',
      subcommands: [

        Subcommand(
          name: 'auto-scale',
          description: 'Set auto-scale parameters for a cluster',
          options: [

            Option(
              name: '--max',
              description: 'Maximum number of nodes',
              args: [
                Arg(
                name: 'ma'
              )
              ]
            ),
            Option(
              name: '--min',
              description: 'Minimum number of nodes',
              args: [
                Arg(
                name: 'mi'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a cluster',
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
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            ),
            Option(
              name: '--afs-mount-path',
              description: 'Relative mount path for Azure File share. The file share will be available at \$AZ_BATCHAI_MOUNT_ROOT/<relative_mount_path> folder',
              args: [
                Arg(
                name: 'afs-mount-pat'
              )
              ]
            ),
            Option(
              name: '--afs-name',
              description: 'Name of Azure File Share to be mounted on each cluster node. Must be used in conjunction with --storage-account-name. Multiple shares can be mounted using configuration file (see --config-file option)',
              args: [
                Arg(
                name: 'afs-nam'
              )
              ]
            ),
            Option(
              name: '--bfs-mount-path',
              description: 'Relative mount path for Azure Storage container. The container will be available at \$AZ_BATCHAI_MOUNT_ROOT/<relative_mount_path> folder',
              args: [
                Arg(
                name: 'bfs-mount-pat'
              )
              ]
            ),
            Option(
              name: '--bfs-name',
              description: 'Name of Azure Storage container to be mounted on each cluster node. Must be used in conjunction with --storage-account-name. Multiple containers can be mounted using configuration file (see --config-file option)',
              args: [
                Arg(
                name: 'bfs-nam'
              )
              ]
            ),
            Option(
              name: ['--config-file', '-f'],
              description: 'A path to a json file containing cluster create parameters (json representation of azure.mgmt.batchai.models.ClusterCreateParameters)',
              args: [
                Arg(
                name: 'config-fil'
              )
              ]
            ),
            Option(
              name: '--custom-image',
              description: 'ARM ID of a virtual machine image to be used for nodes creation. Note, you need to provide --image containing information about the base image used for this image creation',
              args: [
                Arg(
                name: 'custom-imag'
              )
              ]
            ),
            Option(
              name: '--generate-ssh-keys',
              description: 'Generate SSH public and private key files in ~/.ssh directory (if missing)',
              args: [
                Arg(
                name: 'generate-ssh-key'
              )
              ]
            ),
            Option(
              name: ['--image', '-i'],
              description: 'Operation system image for cluster nodes. The value may contain an alias (UbuntuLTS, UbuntuDSVM) or specify image details in the form "publisher:offer:sku:version". If image configuration is not provided via command line or configuration file, Batch AI will choose default OS image',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: '--max',
              description: 'Max nodes count for the auto-scale cluster',
              args: [
                Arg(
                name: 'ma'
              )
              ]
            ),
            Option(
              name: '--min',
              description: 'Min nodes count for the auto-scale cluster',
              args: [
                Arg(
                name: 'mi'
              )
              ]
            ),
            Option(
              name: '--nfs',
              description: 'Name or ARM ID of a file server to be mounted on each cluster node. You need to provide full ARM ID if the file server belongs to a different workspace. Multiple NFS can be mounted using configuration file (see --config-file option)',
              args: [
                Arg(
                name: 'nf'
              )
              ]
            ),
            Option(
              name: '--nfs-mount-path',
              description: 'Relative mount path for NFS. The NFS will be available at \$AZ_BATCHAI_MOUNT_ROOT/<relative_mount_path> folder',
              args: [
                Arg(
                name: 'nfs-mount-pat'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'Optional password for the admin user account to be created on each compute node',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--setup-task',
              description: 'A command line which should be executed on each compute node when it\'s got allocated or rebooted. The task is executed in a bash subshell under root account',
              args: [
                Arg(
                name: 'setup-tas'
              )
              ]
            ),
            Option(
              name: '--setup-task-output',
              description: 'Directory path to store where setup-task\'s logs. Note, Batch AI will create several helper directories under this path. The created directories are reported as stdOutErrPathSuffix by \'az cluster show\' command',
              args: [
                Arg(
                name: 'setup-task-outpu'
              )
              ]
            ),
            Option(
              name: ['--ssh-key', '-k'],
              description: 'Optional SSH public key value or path. If ommited and no password specified, default SSH key (~/.ssh/id_rsa.pub) will be used',
              args: [
                Arg(
                name: 'ssh-ke'
              )
              ]
            ),
            Option(
              name: '--storage-account-key',
              description: 'Storage account key. Required if the storage account belongs to a different subscription. Can be specified using AZURE_BATCHAI_STORAGE_KEY environment variable',
              args: [
                Arg(
                name: 'storage-account-ke'
              )
              ]
            ),
            Option(
              name: '--storage-account-name',
              description: 'Storage account name for Azure File Shares and/or Azure Storage Containers to be mounted on each cluster node. Can be specified using AZURE_BATCHAI_STORAGE_ACCOUNT environment variable',
              args: [
                Arg(
                name: 'storage-account-nam'
              )
              ]
            ),
            Option(
              name: '--subnet',
              description: 'ARM ID of a virtual network subnet to put the cluster in',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: ['--target', '-t'],
              description: 'Number of nodes which should be allocated immediately after cluster creation. If the cluster is in auto-scale mode, BatchAI can change the number of nodes later based on number of running and queued jobs',
              args: [
                Arg(
                name: 'targe'
              )
              ]
            ),
            Option(
              name: '--use-auto-storage',
              description: 'If provided, the command will create a storage account in a new or existing resource group named "batchaiautostorage". It will also create Azure File Share with name "batchaishare", Azure Blob Container with name "batchaicontainer". The File Share and Blob Container will be mounted on each cluster node at \$AZ_BATCHAI_MOUNT_ROOT/autoafs and \$AZ_BATCHAI_MOUNT_ROOT/autobfs. If the resource group already exists and contains an approapriate storage account belonging to the same region as cluster, this command will reuse existing storage account'
            ),
            Option(
              name: ['--user-name', '-u'],
              description: 'Name of admin user account to be created on each compute node. If the value is not provided and no user configuration is provided in the config file, current user\'s name will be used',
              args: [
                Arg(
                name: 'user-nam'
              )
              ]
            ),
            Option(
              name: '--vm-priority',
              description: 'VM priority',
              args: [
                Arg(
                name: 'vm-priority',
                suggestions: [

                  FigSuggestion(name: 'dedicated'),
                  FigSuggestion(name: 'lowpriority')
                ]
              )
              ]
            ),
            Option(
              name: ['--vm-size', '-s'],
              description: 'VM size for cluster nodes (e.g. Standard_NC6 for 1 GPU node)',
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
          description: 'Delete a cluster',
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
              description: 'Name of cluster',
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
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
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
            ),
            Option(
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'resize',
          description: 'Resize a cluster',
          options: [

            Option(
              name: ['--target', '-t'],
              description: 'Target number of compute nodes',
              args: [
                Arg(
                name: 'targe'
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show information about a cluster',
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'file',
          description: 'Commands to work with files generated by node setup task',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List files generated by the cluster\'s node setup task',
              options: [

                Option(
                  name: ['--cluster', '-c'],
                  description: 'Name of cluster',
                  args: [
                    Arg(
                    name: 'cluste'
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
                  name: ['--workspace', '-w'],
                  description: 'Name of workspace',
                  args: [
                    Arg(
                    name: 'workspac'
                  )
                  ]
                ),
                Option(
                  name: '--expiry',
                  description: 'Time in minutes for how long generated download URLs should remain valid',
                  args: [
                    Arg(
                    name: 'expir'
                  )
                  ]
                ),
                Option(
                  name: ['--path', '-p'],
                  description: 'Relative path of a subfolder inside of the node setup task output directory',
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
          name: 'node',
          description: 'Commands to work with cluster nodes',
          subcommands: [

            Subcommand(
              name: 'exec',
              description: 'Executes a command line on a cluster\'s node with optional ports forwarding',
              options: [

                Option(
                  name: ['--cluster', '-c'],
                  description: 'Name of cluster',
                  args: [
                    Arg(
                    name: 'cluste'
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
                  name: ['--workspace', '-w'],
                  description: 'Name of workspace',
                  args: [
                    Arg(
                    name: 'workspac'
                  )
                  ]
                ),
                Option(
                  name: ['--address', '-L'],
                  description: 'Specifies that connections to the given TCP port or Unix socket on the local (client) host are to be forwarded to the given host and port, or Unix socket, on the remote side. e.g. -L 8080:localhost:8080',
                  args: [
                    Arg(
                    name: 'addres'
                  )
                  ]
                ),
                Option(
                  name: '--exec',
                  description: 'Optional command line to be executed on the node. If not provided, the command will perform ports forwarding only',
                  args: [
                    Arg(
                    name: 'exe'
                  )
                  ]
                ),
                Option(
                  name: ['--node-id', '-n'],
                  description: 'ID of the node to forward the ports to. If not provided, the command will be executed on the first available node',
                  args: [
                    Arg(
                    name: 'node-i'
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'Optional password to establish SSH connection',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: ['--ssh-private-key', '-k'],
                  description: 'Optional SSH private key path to establish SSH connection. If omitted, the default SSH private key will be used',
                  args: [
                    Arg(
                    name: 'ssh-private-ke'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List remote login information for cluster\'s nodes',
              options: [

                Option(
                  name: ['--cluster', '-c'],
                  description: 'Name of cluster',
                  args: [
                    Arg(
                    name: 'cluste'
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
                  name: ['--workspace', '-w'],
                  description: 'Name of workspace',
                  args: [
                    Arg(
                    name: 'workspac'
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
      name: 'experiment',
      description: 'Commands to manage experiments',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an experiment',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of experiment',
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
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an experiment',
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
              description: 'Name of experiment',
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
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
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
          description: 'List experiments',
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
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show information about an experiment',
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
              description: 'Name of experiment',
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
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'file-server',
      description: 'Commands to manage file servers',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a file server',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of file server',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure a default value by setting up default workspace using az batchai workspace set-default',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace', '-w'],
              description: 'Name or ARM ID of the workspace. You can configure default workspace using az batchai workspace set-default',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            ),
            Option(
              name: '--caching-type',
              description: 'Caching type for premium disks. If not provided via command line or in configuration file, no caching will be used',
              args: [
                Arg(
                name: 'caching-type',
                suggestions: [

                  FigSuggestion(name: 'none'),
                  FigSuggestion(name: 'readonly'),
                  FigSuggestion(name: 'readwrite')
                ]
              )
              ]
            ),
            Option(
              name: ['--config-file', '-f'],
              description: 'A path to a json file containing file server create parameters (json representation of azure.mgmt.batchai.models.FileServerCreateParameters). Note, parameters given via command line will overwrite parameters specified in the configuration file',
              args: [
                Arg(
                name: 'config-fil'
              )
              ]
            ),
            Option(
              name: '--disk-count',
              description: 'Number of disks',
              args: [
                Arg(
                name: 'disk-coun'
              )
              ]
            ),
            Option(
              name: '--disk-size',
              description: 'Disk size in Gb',
              args: [
                Arg(
                name: 'disk-siz'
              )
              ]
            ),
            Option(
              name: '--generate-ssh-keys',
              description: 'Generate SSH public and private key files in ~/.ssh directory (if missing)',
              args: [
                Arg(
                name: 'generate-ssh-key'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--password', '-p'],
              description: 'Optional password for the admin user created on the NFS node',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: ['--ssh-key', '-k'],
              description: 'Optional SSH public key value or path. If ommited and no password specified, default SSH key (~/.ssh/id_rsa.pub) will be used',
              args: [
                Arg(
                name: 'ssh-ke'
              )
              ]
            ),
            Option(
              name: '--storage-sku',
              description: 'The sku of storage account to persist VM',
              args: [
                Arg(
                name: 'storage-sku',
                suggestions: [

                  FigSuggestion(name: 'Premium_LRS'),
                  FigSuggestion(name: 'Standard_LRS')
                ]
              )
              ]
            ),
            Option(
              name: '--subnet',
              description: 'ARM ID of a virtual network subnet to put the file server in. If not provided via command line or in the configuration file, Batch AI will create a new virtual network and subnet under your subscription',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: ['--user-name', '-u'],
              description: 'Name of admin user account to be created on NFS node. If the value is not provided and no user configuration is provided in the config file, current user\'s name will be used',
              args: [
                Arg(
                name: 'user-nam'
              )
              ]
            ),
            Option(
              name: ['--vm-size', '-s'],
              description: 'VM size',
              args: [
                Arg(
                name: 'vm-siz'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List file servers',
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
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'job',
      description: 'Commands to manage jobs',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a job',
          options: [

            Option(
              name: ['--cluster', '-c'],
              description: 'Name or ARM ID of the cluster to run the job. You need to provide ARM ID if the cluster belongs to a different workspace',
              args: [
                Arg(
                name: 'cluste'
              )
              ]
            ),
            Option(
              name: ['--config-file', '-f'],
              description: 'A path to a json file containing job create parameters (json representation of azure.mgmt.batchai.models.JobCreateParameters)',
              args: [
                Arg(
                name: 'config-fil'
              )
              ]
            ),
            Option(
              name: ['--experiment', '-e'],
              description: 'Name of experiment',
              args: [
                Arg(
                name: 'experimen'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of job',
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
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            ),
            Option(
              name: '--afs-mount-path',
              description: 'Relative mount path for Azure File Share. The File Share will be available at \$AZ_BATCHAI_JOB_MOUNT_ROOT/<relative_mount_path> folder',
              args: [
                Arg(
                name: 'afs-mount-pat'
              )
              ]
            ),
            Option(
              name: '--afs-name',
              description: 'Name of Azure File Share to mount during the job execution. The File Share will be mounted only on the nodes which are executing the job. Must be used in conjunction with --storage-account-name. Multiple shares can be mounted using configuration file (see --config-file option)',
              args: [
                Arg(
                name: 'afs-nam'
              )
              ]
            ),
            Option(
              name: '--bfs-mount-path',
              description: 'Relative mount path for Azure Storage Blob Container. The container will be available at \$AZ_BATCHAI_JOB_MOUNT_ROOT/<relative_mount_path> folder',
              args: [
                Arg(
                name: 'bfs-mount-pat'
              )
              ]
            ),
            Option(
              name: '--bfs-name',
              description: 'Name of Azure Storage Blob Container to mount during the job execution. The container will be mounted only on the nodes which are executing the job. Must be used in conjunction with --storage-account-name. Multiple containers can be mounted using configuration file (see --config-file option)',
              args: [
                Arg(
                name: 'bfs-nam'
              )
              ]
            ),
            Option(
              name: '--nfs',
              description: 'Name or ARM ID of the file server to be mounted during the job execution. You need to provide ARM ID if the file server belongs to a different workspace. You can configure multiple file servers using job\'s configuration file',
              args: [
                Arg(
                name: 'nf'
              )
              ]
            ),
            Option(
              name: '--nfs-mount-path',
              description: 'Relative mount path for NFS. The NFS will be available at \$AZ_BATCHAI_JOB_MOUNT_ROOT/<relative_mount_path> folder',
              args: [
                Arg(
                name: 'nfs-mount-pat'
              )
              ]
            ),
            Option(
              name: '--storage-account-key',
              description: 'Storage account key. Required if the storage account belongs to a different subscription. Can be specified using AZURE_BATCHAI_STORAGE_KEY environment variable',
              args: [
                Arg(
                name: 'storage-account-ke'
              )
              ]
            ),
            Option(
              name: '--storage-account-name',
              description: 'Storage account name for Azure File Shares and/or Azure Storage Containers to be mounted on each cluster node. Can be specified using AZURE_BATCHAI_STORAGE_ACCOUNT environment variable',
              args: [
                Arg(
                name: 'storage-account-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a job',
          options: [

            Option(
              name: ['--experiment', '-e'],
              description: 'Name of experiment',
              args: [
                Arg(
                name: 'experimen'
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
              name: ['--name', '-n'],
              description: 'Name of job',
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
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
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
          description: 'List jobs',
          options: [

            Option(
              name: ['--experiment', '-e'],
              description: 'Name of experiment',
              args: [
                Arg(
                name: 'experimen'
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
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show information about a job',
          options: [

            Option(
              name: ['--experiment', '-e'],
              description: 'Name of experiment',
              args: [
                Arg(
                name: 'experimen'
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
              name: ['--name', '-n'],
              description: 'Name of job',
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
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'terminate',
          description: 'Terminate a job',
          options: [

            Option(
              name: ['--experiment', '-e'],
              description: 'Name of experiment',
              args: [
                Arg(
                name: 'experimen'
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
              name: ['--name', '-n'],
              description: 'Name of job',
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
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
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
          description: 'Waits for specified job completion and setups the exit code to the job\'s exit code',
          options: [

            Option(
              name: ['--experiment', '-e'],
              description: 'Name of experiment',
              args: [
                Arg(
                name: 'experimen'
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
              name: '--interval',
              description: 'Polling interval in sec',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of job',
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
              name: ['--workspace', '-w'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'file',
          description: 'Commands to list and stream files in job\'s output directories',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List job\'s output files in a directory with given id',
              options: [

                Option(
                  name: ['--experiment', '-e'],
                  description: 'Name of experiment',
                  args: [
                    Arg(
                    name: 'experimen'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '-j'],
                  description: 'Name of job',
                  args: [
                    Arg(
                    name: 'jo'
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
                  name: ['--workspace', '-w'],
                  description: 'Name of workspace',
                  args: [
                    Arg(
                    name: 'workspac'
                  )
                  ]
                ),
                Option(
                  name: '--expiry',
                  description: 'Time in minutes for how long generated download URL should remain valid',
                  args: [
                    Arg(
                    name: 'expir'
                  )
                  ]
                ),
                Option(
                  name: ['--output-directory-id', '-d'],
                  description: 'The Id of the job\'s output directory (as specified by "id" element in outputDirectories collection in the job create parameters)',
                  args: [
                    Arg(
                    name: 'output-directory-i'
                  )
                  ]
                ),
                Option(
                  name: ['--path', '-p'],
                  description: 'Relative path in the given output directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'stream',
              description: 'Stream the content of a file (similar to \'tail -f\')',
              options: [

                Option(
                  name: ['--experiment', '-e'],
                  description: 'Name of experiment',
                  args: [
                    Arg(
                    name: 'experimen'
                  )
                  ]
                ),
                Option(
                  name: ['--file-name', '-f'],
                  description: 'The name of the file to stream',
                  args: [
                    Arg(
                    name: 'file-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '-j'],
                  description: 'Name of job',
                  args: [
                    Arg(
                    name: 'jo'
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
                  name: ['--workspace', '-w'],
                  description: 'Name of workspace',
                  args: [
                    Arg(
                    name: 'workspac'
                  )
                  ]
                ),
                Option(
                  name: ['--output-directory-id', '-d'],
                  description: 'The Id of the job\'s output directory (as specified by "id" element in outputDirectories collection in the job create parameters)',
                  args: [
                    Arg(
                    name: 'output-directory-i'
                  )
                  ]
                ),
                Option(
                  name: ['--path', '-p'],
                  description: 'Relative path in the given output directory',
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
          name: 'node',
          description: 'Commands to work with nodes which executed a job',
          subcommands: [

            Subcommand(
              name: 'exec',
              description: 'Executes a command line on a cluster\'s node used to execute the job with optional ports forwarding',
              options: [

                Option(
                  name: ['--experiment', '-e'],
                  description: 'Name of experiment',
                  args: [
                    Arg(
                    name: 'experimen'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '-j'],
                  description: 'Name of job',
                  args: [
                    Arg(
                    name: 'jo'
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
                  name: ['--workspace', '-w'],
                  description: 'Name of workspace',
                  args: [
                    Arg(
                    name: 'workspac'
                  )
                  ]
                ),
                Option(
                  name: ['--address', '-L'],
                  description: 'Specifies that connections to the given TCP port or Unix socket on the local (client) host are to be forwarded to the given host and port, or Unix socket, on the remote side. e.g. -L 8080:localhost:8080',
                  args: [
                    Arg(
                    name: 'addres'
                  )
                  ]
                ),
                Option(
                  name: '--exec',
                  description: 'Optional command line to be executed on the node. If not provided, the command will perform ports forwarding only',
                  args: [
                    Arg(
                    name: 'exe'
                  )
                  ]
                ),
                Option(
                  name: ['--node-id', '-n'],
                  description: 'ID of the node to forward the ports to. If not provided, the command will be executed on the first available node',
                  args: [
                    Arg(
                    name: 'node-i'
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'Optional password to establish SSH connection',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: ['--ssh-private-key', '-k'],
                  description: 'Optional SSH private key path to establish SSH connection. If omitted, the default SSH private key will be used',
                  args: [
                    Arg(
                    name: 'ssh-private-ke'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List remote login information for nodes which executed the job',
              options: [

                Option(
                  name: ['--experiment', '-e'],
                  description: 'Name of experiment',
                  args: [
                    Arg(
                    name: 'experimen'
                  )
                  ]
                ),
                Option(
                  name: ['--job', '-j'],
                  description: 'Name of job',
                  args: [
                    Arg(
                    name: 'jo'
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
                  name: ['--workspace', '-w'],
                  description: 'Name of workspace',
                  args: [
                    Arg(
                    name: 'workspac'
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
      name: 'list-usages',
      description: 'Gets the current usage information as well as limits for Batch AI resources for given location',
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
      name: 'workspace',
      description: 'Commands to manage workspaces',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a workspace',
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
              name: ['--workspace', '-n'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location of the workspace. If omitted, the location of the resource group will be used',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a workspace',
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
              name: ['--workspace', '-n'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
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
          description: 'List workspaces',
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
          description: 'Show information about a workspace',
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
              name: ['--workspace', '-n'],
              description: 'Name of workspace',
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
