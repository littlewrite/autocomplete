// Auto-generated from TypeScript source: ml.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ml` CLI
final FigSpec mlSpec = FigSpec(
  name: 'ml',
  description: 'Manage Azure Machine Learning resources with the Azure CLI ML extension v1',
  subcommands: [

    Subcommand(
      name: 'computetarget',
      description: 'Computetarget subgroup commands',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a compute target (aks or amlcompute or computeinstance)',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of compute target to delete',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing the environment to delete',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'detach',
          description: 'Detach a compute target (aks or remote) from a workspace',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of compute target to detach',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing the environment to detach',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-credentials',
          description: 'Get credentials for a compute target (aks or remote)',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of compute target to retrieve keys for',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing the compute target to get credentials for',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all the compute targets attached to a workspace',
          options: [

            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing the compute target to show',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of a specific compute target',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of compute target to show',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing the compute target to show',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag'
            )
          ]
        ),
        Subcommand(
          name: 'amlcompute',
          description: 'AzureML compute commands',
          subcommands: [

            Subcommand(
              name: 'identity',
              description: 'AzureML compute target identity commands',
              subcommands: [

                Subcommand(
                  name: 'assign',
                  description: 'Assign identity to an AzureML compute target',
                  options: [

                    Option(
                      name: '--identities',
                      description: 'Use \'[system]\' to set a system assigned identity else input resource IDs separated by commas (ie \'ResourceID1,ResourceID2\') to set user assigned identities',
                      args: [
                        Arg(
                        name: 'identitie'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of compute target to provision',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--path',
                      description: 'Path to a project folder. Default: current directory',
                      args: [
                        Arg(
                        name: 'pat'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Resource group corresponding to the provided workspace',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription-id',
                      description: 'Specifies the subscription Id',
                      args: [
                        Arg(
                        name: 'subscription-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--workspace-name', '-w'],
                      description: 'Name of the workspace to create this compute target under',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '-v',
                      description: 'Verbosity flag'
                    )
                  ]
                ),
                Subcommand(
                  name: 'remove',
                  description: 'Remove identity from an AzureML compute target',
                  options: [

                    Option(
                      name: '--identities',
                      description: 'Use \'[system]\' to remove a system assigned identity else input resource IDs separated by commas (ie \'ResourceID1,ResourceID2\') to remove user assigned identities',
                      args: [
                        Arg(
                        name: 'identitie'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of compute target to provision',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--path',
                      description: 'Path to a project folder. Default: current directory',
                      args: [
                        Arg(
                        name: 'pat'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Resource group corresponding to the provided workspace',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription-id',
                      description: 'Specifies the subscription Id',
                      args: [
                        Arg(
                        name: 'subscription-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--workspace-name', '-w'],
                      description: 'Name of the workspace to create this compute target under',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '-v',
                      description: 'Verbosity flag'
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Display identities of an AzureML compute target',
                  options: [

                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of compute target to provision',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--path',
                      description: 'Path to a project folder. Default: current directory',
                      args: [
                        Arg(
                        name: 'pat'
                      )
                      ]
                    ),
                    Option(
                      name: ['--resource-group', '-g'],
                      description: 'Resource group corresponding to the provided workspace',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription-id',
                      description: 'Specifies the subscription Id',
                      args: [
                        Arg(
                        name: 'subscription-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--workspace-name', '-w'],
                      description: 'Name of the workspace to create this compute target under',
                      args: [
                        Arg(
                        name: 'workspace-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '-v',
                      description: 'Verbosity flag'
                    )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'attach',
          description: 'Attach subgroup commands',
          subcommands: [

            Subcommand(
              name: 'aks',
              description: 'Attach an AKS cluster to the workspace',
              options: [

                Option(
                  name: ['--compute-resource-id', '-i'],
                  description: 'Resource ID of the compute object to attach to the workspace',
                  args: [
                    Arg(
                    name: 'compute-resource-i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Specifies the compute target name. Must be unique to the workspace',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace. A default value for all commands can be set by running "az configure --defaults group=". This parameter will override any set default',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace to create this compute target under. A default value for all commands can be set by running "az configure --defaults workspace_name=". This parameter will override any set default',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'kubernetes',
              description: 'Attach a KubernetesCompute as a compute target to the workspace',
              options: [

                Option(
                  name: ['--compute-resource-id', '-i'],
                  description: 'Resource ID of the compute object to attach to the workspace',
                  args: [
                    Arg(
                    name: 'compute-resource-i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Specifies the compute target name. Must be unique to the workspace',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--namespace',
                  description: 'The Kubernetes namespace to which workloads for the compute target are submitted',
                  args: [
                    Arg(
                    name: 'namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace. A default value for all commands can be set by running "az configure --defaults group=". This parameter will override any set default',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace to create this compute target under. A default value for all commands can be set by running "az configure --defaults workspace_name=". This parameter will override any set default',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remote',
              description: 'Attach a remote machine without Docker as a compute target to the workspace',
              options: [

                Option(
                  name: ['--address', '-a'],
                  description: 'DNS name or IP address of the target',
                  args: [
                    Arg(
                    name: 'addres'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Specifies the compute target name. Must be unique to the workspace',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--ssh-port',
                  description: 'Ssh port that can be use to connect to the compute',
                  args: [
                    Arg(
                    name: 'ssh-por'
                  )
                  ]
                ),
                Option(
                  name: ['--username', '-u'],
                  description: 'The username for the remote machine being attached. Must also provide either a password or public and private key files',
                  args: [
                    Arg(
                    name: 'usernam'
                  )
                  ]
                ),
                Option(
                  name: ['--password', '-p'],
                  description: 'The password for the remote machine being attached. Must either provide a password or public and private key files',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: '--private-key-file',
                  description: 'Path to a file containing the private key information for the remote machine being attached',
                  args: [
                    Arg(
                    name: 'private-key-fil'
                  )
                  ]
                ),
                Option(
                  name: '--private-key-passphrase',
                  description: 'Passphrase for private key specified with the --private-key-file option',
                  args: [
                    Arg(
                    name: 'private-key-passphras'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace. A default value for all commands can be set by running "az configure --defaults group=". This parameter will override any set default',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace to create this compute target under. A default value for all commands can be set by running "az configure --defaults workspace_name=". This parameter will override any set default',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'computeinstance',
          description: 'AzureML compute instance commands',
          subcommands: [

            Subcommand(
              name: 'restart',
              description: 'Restart a compute instance',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of compute instance to restart',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Flag to not wait for asynchronous calls',
                  args: [
                    Arg(
                    name: 'no-wai'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the compute target to restart',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag'
                )
              ]
            ),
            Subcommand(
              name: 'start',
              description: 'Start a compute instance',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of compute instance to start',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Flag to not wait for asynchronous calls',
                  args: [
                    Arg(
                    name: 'no-wai'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the compute target to start',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag'
                )
              ]
            ),
            Subcommand(
              name: 'stop',
              description: 'Stop a compute instance',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of compute instance to stop',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Flag to not wait for asynchronous calls',
                  args: [
                    Arg(
                    name: 'no-wai'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the compute target to stop',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a compute target (aks or amlcompute or computeinstance)',
          subcommands: [

            Subcommand(
              name: 'aks',
              description: 'Create an AKS compute target',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of compute target to provision',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--agent-count', '-a'],
                  description: 'Number of agents to provision with the AKS cluster. Default: 3',
                  args: [
                    Arg(
                    name: 'agent-coun'
                  )
                  ]
                ),
                Option(
                  name: '--cluster-purpose',
                  description: 'Targeted purpose of the cluster. This is used when provisioning AzureML components to ensure the desired level of fault-tolerance and QoS. Accepted values are "FastProd" and "DevTest". Further detail of the use cases can be found here: https://aka.ms/azureml-create-new-aks-cluster',
                  args: [
                    Arg(
                    name: 'cluster-purpos'
                  )
                  ]
                ),
                Option(
                  name: '--dns-service-ip',
                  description: 'Containers DNS server IP address',
                  args: [
                    Arg(
                    name: 'dns-service-i'
                  )
                  ]
                ),
                Option(
                  name: '--docker-bridge-cidr',
                  description: 'A CIDR notation IP for Docker bridge',
                  args: [
                    Arg(
                    name: 'docker-bridge-cid'
                  )
                  ]
                ),
                Option(
                  name: '--load-balancer-subnet',
                  description: 'You can specify subnet for the AKS cluster when Internal Load Balancer is used as load balancer type. Default is "aks-subnet"',
                  args: [
                    Arg(
                    name: 'load-balancer-subne'
                  )
                  ]
                ),
                Option(
                  name: '--load-balancer-type',
                  description: 'You can create an AKS cluster with either Public IP or Internal Load Balancer. Accepted values are "PublicIp" and "InternalLoadBalancer". Default is "PublicIp"',
                  args: [
                    Arg(
                    name: 'load-balancer-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location to provision cluster in. If not specified, will default to workspace location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Flag to not wait for asynchronous calls',
                  args: [
                    Arg(
                    name: 'no-wai'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
                  name: '--ssl-cert-file',
                  description: 'Cert pem file to use for SSL validation. If provided, must also provide cname and key pem file',
                  args: [
                    Arg(
                    name: 'ssl-cert-fil'
                  )
                  ]
                ),
                Option(
                  name: '--ssl-cname',
                  description: 'Cname to use for SSL validation. If provided, must also provide cert and key pem files',
                  args: [
                    Arg(
                    name: 'ssl-cnam'
                  )
                  ]
                ),
                Option(
                  name: '--ssl-key-file',
                  description: 'Key pem file to use for SSL validation. If provided, must also provide cname and cert pem file',
                  args: [
                    Arg(
                    name: 'ssl-key-fil'
                  )
                  ]
                ),
                Option(
                  name: '--ssl-leaf-domain-label',
                  description: 'Leaf domain label to use for the auto generated certificate',
                  args: [
                    Arg(
                    name: 'ssl-leaf-domain-labe'
                  )
                  ]
                ),
                Option(
                  name: '--ssl-overwrite-domain',
                  description: 'When set overwrites the existing leaf domain label',
                  args: [
                    Arg(
                    name: 'ssl-overwrite-domai'
                  )
                  ]
                ),
                Option(
                  name: '--subnet-name',
                  description: 'Name of the subnet inside the vnet',
                  args: [
                    Arg(
                    name: 'subnet-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--vm-size', '-s'],
                  description: 'VM size to use for the compute target. A full list of options can be found here: https://aka.ms/azureml-aks-details Default: Standard_D3_v2',
                  args: [
                    Arg(
                    name: 'vm-siz'
                  )
                  ]
                ),
                Option(
                  name: '--vnet-name',
                  description: 'Name of the virtual network',
                  args: [
                    Arg(
                    name: 'vnet-nam'
                  )
                  ]
                ),
                Option(
                  name: '--vnet-resourcegroup-name',
                  description: 'Name of the resource group where the virtual network is located',
                  args: [
                    Arg(
                    name: 'vnet-resourcegroup-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace to create this compute target under',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag'
                )
              ]
            ),
            Subcommand(
              name: 'amlcompute',
              description: 'Create an AzureML compute target',
              options: [

                Option(
                  name: '--max-nodes',
                  description: 'Maximum number of nodes to use. Default: 4',
                  args: [
                    Arg(
                    name: 'max-node'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of compute target to provision',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--vm-size', '-s'],
                  description: 'VM size to use for the compute target. More details can be found here: https://aka.ms/azureml-vm-details Default: Standard_NC6',
                  args: [
                    Arg(
                    name: 'vm-siz'
                  )
                  ]
                ),
                Option(
                  name: '--admin-user-password',
                  description: 'Password of the administrator user account',
                  args: [
                    Arg(
                    name: 'admin-user-passwor'
                  )
                  ]
                ),
                Option(
                  name: '--admin-user-ssh-key',
                  description: 'SSH public key of the administrator user account',
                  args: [
                    Arg(
                    name: 'admin-user-ssh-ke'
                  )
                  ]
                ),
                Option(
                  name: '--admin-username',
                  description: 'Name of the administrator user account which can be used to SSH into nodes',
                  args: [
                    Arg(
                    name: 'admin-usernam'
                  )
                  ]
                ),
                Option(
                  name: '--assign-identity',
                  description: 'Use \'[system]\' to set a system assigned identity else input resource IDs separated by commas (ie \'ResourceID1,ResourceID2\') to set user assigned identities',
                  args: [
                    Arg(
                    name: 'assign-identit'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of the compute target',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--enable-node-public-ip',
                  description: 'Enable Node Public IP',
                  args: [
                    Arg(
                    name: 'enable-node-public-i'
                  )
                  ]
                ),
                Option(
                  name: '--idle-seconds-before-scaledown',
                  description: 'Node idle time in seconds before scaling down the cluster',
                  args: [
                    Arg(
                    name: 'idle-seconds-before-scaledow'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location to provision cluster in. If not specified, will default to workspace location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--min-nodes',
                  description: 'Minimum number of nodes to use. Default: 0',
                  args: [
                    Arg(
                    name: 'min-node'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Flag to not wait for asynchronous calls',
                  args: [
                    Arg(
                    name: 'no-wai'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--remote-login-port-public-access',
                  description: 'State of the public SSH port. Possible values are: Enabled or Disabled',
                  args: [
                    Arg(
                    name: 'remote-login-port-public-acces'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subnet-name',
                  description: 'Name of the subnet inside the vnet',
                  args: [
                    Arg(
                    name: 'subnet-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: '--tag',
                  description: 'Key/value tag to add (e.g. key=value ). Multiple tags can be specified with multiple --tag options',
                  args: [
                    Arg(
                    name: 'ta'
                  )
                  ]
                ),
                Option(
                  name: ['--vm-priority', '-p'],
                  description: 'VM priority to use for the compute target. (Options are \'dedicated\', \'lowpriority\') Default: dedicated',
                  args: [
                    Arg(
                    name: 'vm-priorit'
                  )
                  ]
                ),
                Option(
                  name: '--vnet-name',
                  description: 'Name of the virtual network',
                  args: [
                    Arg(
                    name: 'vnet-nam'
                  )
                  ]
                ),
                Option(
                  name: '--vnet-resourcegroup-name',
                  description: 'Name of the resource group where the virtual network is located',
                  args: [
                    Arg(
                    name: 'vnet-resourcegroup-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace to create this compute target under',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag'
                )
              ]
            ),
            Subcommand(
              name: 'computeinstance',
              description: 'Create an AzureML compute instance target',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of compute instance to create',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--vm-size', '-s'],
                  description: 'VM size to use for the compute target. More details can be found here: https://aka.ms/azureml-vm-details Default: Standard_NC6',
                  args: [
                    Arg(
                    name: 'vm-siz'
                  )
                  ]
                ),
                Option(
                  name: '--admin-user-ssh-public-key',
                  description: 'SSH public key of the administrator user account',
                  args: [
                    Arg(
                    name: 'admin-user-ssh-public-ke'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'Description of the compute target',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Flag to not wait for asynchronous calls',
                  args: [
                    Arg(
                    name: 'no-wai'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--ssh-public-access',
                  description: 'State of the public SSH port. Possible values are: True or False',
                  args: [
                    Arg(
                    name: 'ssh-public-acces'
                  )
                  ]
                ),
                Option(
                  name: '--subnet-name',
                  description: 'Name of the subnet inside the vnet',
                  args: [
                    Arg(
                    name: 'subnet-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: '--tag',
                  description: 'Key/value tag to add (e.g. key=value ). Multiple tags can be specified with multiple --tag options',
                  args: [
                    Arg(
                    name: 'ta'
                  )
                  ]
                ),
                Option(
                  name: '--user-object-id',
                  description: 'The AAD Object ID of the assigned user of this compute instance (preview)',
                  args: [
                    Arg(
                    name: 'user-object-i'
                  )
                  ]
                ),
                Option(
                  name: '--user-tenant-id',
                  description: 'The AAD Tenant ID of the assigned user of this compute instance (preview)',
                  args: [
                    Arg(
                    name: 'user-tenant-i'
                  )
                  ]
                ),
                Option(
                  name: '--vnet-name',
                  description: 'Name of the virtual network',
                  args: [
                    Arg(
                    name: 'vnet-nam'
                  )
                  ]
                ),
                Option(
                  name: '--vnet-resourcegroup-name',
                  description: 'Name of the resource group where the virtual network is located',
                  args: [
                    Arg(
                    name: 'vnet-resourcegroup-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace to create this compute target under',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag'
                )
              ]
            ),
            Subcommand(
              name: 'datafactory',
              description: 'Create a data factory compute target',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of compute target to provision',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location to provision cluster in. If not specified, will default to workspace location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Flag to not wait for asynchronous calls',
                  args: [
                    Arg(
                    name: 'no-wai'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace to create this compute target under',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a compute target (aks or amlcompute)',
          subcommands: [

            Subcommand(
              name: 'aks',
              description: 'Update an AKS compute target',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of compute target to update',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--load-balancer-subnet',
                  description: 'You can specify subnet for the AKS cluster when Internal Load Balancer is used as load balancer type. Default is "aks-subnet"',
                  args: [
                    Arg(
                    name: 'load-balancer-subne'
                  )
                  ]
                ),
                Option(
                  name: '--load-balancer-type',
                  description: 'You can create an AKS cluster with either Public IP or Internal Load Balancer. Accepted values are "PublicIp" and "InternalLoadBalancer". Default is "PublicIp"',
                  args: [
                    Arg(
                    name: 'load-balancer-typ'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Flag to not wait for asynchronous calls',
                  args: [
                    Arg(
                    name: 'no-wai'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--ssl-cert-file',
                  description: 'Cert pem file to use for SSL validation. If provided, must also provide cname and key pem file',
                  args: [
                    Arg(
                    name: 'ssl-cert-fil'
                  )
                  ]
                ),
                Option(
                  name: '--ssl-cname',
                  description: 'Cname to use for SSL validation. If provided, must also provide cert and key pem files',
                  args: [
                    Arg(
                    name: 'ssl-cnam'
                  )
                  ]
                ),
                Option(
                  name: '--ssl-disable',
                  description: 'Disable SSL validation',
                  args: [
                    Arg(
                    name: 'ssl-disabl'
                  )
                  ]
                ),
                Option(
                  name: '--ssl-key-file',
                  description: 'Key pem file to use for SSL validation. If provided, must also provide cname and cert pem file',
                  args: [
                    Arg(
                    name: 'ssl-key-fil'
                  )
                  ]
                ),
                Option(
                  name: '--ssl-leaf-domain-label',
                  description: 'Leaf domain label to use for the auto generated certificate',
                  args: [
                    Arg(
                    name: 'ssl-leaf-domain-labe'
                  )
                  ]
                ),
                Option(
                  name: '--ssl-overwrite-domain',
                  description: 'When set overwrites the existing leaf domain label',
                  args: [
                    Arg(
                    name: 'ssl-overwrite-domai'
                  )
                  ]
                ),
                Option(
                  name: '--ssl-renew',
                  description: 'Refreshes the auto generated certificate. If provided, the existing SSL configuration must be auto',
                  args: [
                    Arg(
                    name: 'ssl-rene'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace to create this compute target under',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag'
                )
              ]
            ),
            Subcommand(
              name: 'amlcompute',
              description: 'Update an AzureML compute target',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of compute target to provision',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--idle-seconds-before-scaledown',
                  description: 'Node idle time in seconds before scaling down the cluster',
                  args: [
                    Arg(
                    name: 'idle-seconds-before-scaledow'
                  )
                  ]
                ),
                Option(
                  name: '--max-nodes',
                  description: 'Maximum number of nodes to use',
                  args: [
                    Arg(
                    name: 'max-node'
                  )
                  ]
                ),
                Option(
                  name: '--min-nodes',
                  description: 'Minimum number of nodes to use',
                  args: [
                    Arg(
                    name: 'min-node'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace to create this compute target under',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag'
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'dataset',
      description: 'Commands for managing datasets in Azure Machine Learning Workspace',
      subcommands: [

        Subcommand(
          name: 'archive',
          description: 'Archive an active or deprecated dataset',
          options: [

            Option(
              name: ['--id', '-i'],
              description: 'Dataset ID (guid)',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Registration name of the dataset',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deprecate',
          description: 'Deprecate an active dataset in a workspace by another dataset',
          options: [

            Option(
              name: ['--deprecate-by-id', '-d'],
              description: 'Dataset ID (guid) which is the intended replacement for this Dataset',
              args: [
                Arg(
                name: 'deprecate-by-i'
              )
              ]
            ),
            Option(
              name: ['--id', '-i'],
              description: 'Dataset ID (guid)',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Registration name of the dataset',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all datasets in the workspace',
          options: [

            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reactivate',
          description: 'Reactivate an archived or deprecated dataset',
          options: [

            Option(
              name: ['--id', '-i'],
              description: 'Dataset ID (guid)',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Registration name of the dataset',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'register',
          description: 'Register a new dataset from the specified file',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'Specification file for dataset',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--show-template',
              description: 'Show template of dataset specification file'
            ),
            Option(
              name: '--skip-validation',
              description: 'Skip validation that ensures data can be loaded from the dataset before registration'
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get details of a dataset by its id or registration name',
          options: [

            Option(
              name: ['--id', '-i'],
              description: 'ID of the dataset saved to workspace',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Registration name of the dataset',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'Registration version of the dataset',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'unregister',
          description: 'Unregister all versions under the specified registration name',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Registration name of the dataset',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'datastore',
      description: 'Commands for managing and using datastores with the Azure ML Workspace',
      subcommands: [

        Subcommand(
          name: 'attach-adls',
          description: 'Attach an ADLS datastore',
          options: [

            Option(
              name: '--client-id',
              description: 'The service principal\'s client/application ID',
              args: [
                Arg(
                name: 'client-i'
              )
              ]
            ),
            Option(
              name: '--client-secret',
              description: 'The service principal\'s secret',
              args: [
                Arg(
                name: 'client-secre'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The datastore name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--store-name', '-c'],
              description: 'The ADLS store name',
              args: [
                Arg(
                name: 'store-nam'
              )
              ]
            ),
            Option(
              name: '--tenant-id',
              description: 'The service principal Tenant ID',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            ),
            Option(
              name: '--adls-resource-group',
              description: 'The resource group the ADLS store belongs to',
              args: [
                Arg(
                name: 'adls-resource-grou'
              )
              ]
            ),
            Option(
              name: '--adls-subscription-id',
              description: 'The ID of the subscription the ADLS store belongs to',
              args: [
                Arg(
                name: 'adls-subscription-i'
              )
              ]
            ),
            Option(
              name: '--authority-url',
              description: 'Authority url used to authenticate the user',
              args: [
                Arg(
                name: 'authority-ur'
              )
              ]
            ),
            Option(
              name: '--grant-workspace-msi-access',
              description: 'Defaults to False. Set it to True to access data behind virtual network from Machine Learning Studio. This makes data access from Machine Learning Studio use workspace managed identity for authentication, You have to be Owner or User Access Administrator of the storage to opt-in. Ask your administrator to configure it for you if you do not have the required permission. Learn more \'https://docs.microsoft.com/azure/machine-learning/how-to-enable-studio-virtual-network',
              args: [
                Arg(
                name: 'grant-workspace-msi-acces'
              )
              ]
            ),
            Option(
              name: '--include-secret',
              description: 'Show the registered secret for the datastores',
              args: [
                Arg(
                name: 'include-secre'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-url',
              description: 'Determines what operations will be performed on the data lake store',
              args: [
                Arg(
                name: 'resource-ur'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'attach-adls-gen2',
          description: 'Attach a ADLS Gen2 datastore',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the storage account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--client-id',
              description: 'The service principal\'s client/application ID',
              args: [
                Arg(
                name: 'client-i'
              )
              ]
            ),
            Option(
              name: '--client-secret',
              description: 'The service principal\'s secret',
              args: [
                Arg(
                name: 'client-secre'
              )
              ]
            ),
            Option(
              name: ['--file-system', '-c'],
              description: 'The file system name of the ADLS Gen2',
              args: [
                Arg(
                name: 'file-syste'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The datastore name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--tenant-id',
              description: 'The service principal Tenant ID',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            ),
            Option(
              name: '--adlsgen2-account-resource-group',
              description: 'The resource group of the ADLS Gen2 storage account',
              args: [
                Arg(
                name: 'adlsgen2-account-resource-grou'
              )
              ]
            ),
            Option(
              name: '--adlsgen2-account-subscription-id',
              description: 'The subscription ID of the ADLS Gen2 storage account',
              args: [
                Arg(
                name: 'adlsgen2-account-subscription-i'
              )
              ]
            ),
            Option(
              name: '--authority-url',
              description: 'Authority url used to authenticate the user',
              args: [
                Arg(
                name: 'authority-ur'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'The endpoint of the storage account. Defaults to core.windows.net',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--grant-workspace-msi-access',
              description: 'Defaults to False. Set it to True to access data behind virtual network from Machine Learning Studio. This makes data access from Machine Learning Studio use workspace managed identity for authentication, You have to be Owner or User Access Administrator of the storage to opt-in. Ask your administrator to configure it for you if you do not have the required permission. Learn more \'https://docs.microsoft.com/azure/machine-learning/how-to-enable-studio-virtual-network',
              args: [
                Arg(
                name: 'grant-workspace-msi-acces'
              )
              ]
            ),
            Option(
              name: '--include-secret',
              description: 'Show the registered secret for the datastores',
              args: [
                Arg(
                name: 'include-secre'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--protocol',
              description: 'Protocol to use to connect to the blob container. If not specified, defaults to https',
              args: [
                Arg(
                name: 'protoco'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-url',
              description: 'Determines what operations will be performed on the data lake store',
              args: [
                Arg(
                name: 'resource-ur'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'attach-blob',
          description: 'Attach a blob storage datastore',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the storage account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'The blob container name',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The datastore name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--account-key', '-k'],
              description: 'The storage account key',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'The endpoint of the storage account. Defaults to core.windows.net',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--grant-workspace-msi-access',
              description: 'Defaults to False. Set it to True to access data behind virtual network from Machine Learning Studio. This makes data access from Machine Learning Studio use workspace managed identity for authentication, You have to be Owner or User Access Administrator of the storage to opt-in. Ask your administrator to configure it for you if you do not have the required permission. Learn more \'https://docs.microsoft.com/azure/machine-learning/how-to-enable-studio-virtual-network',
              args: [
                Arg(
                name: 'grant-workspace-msi-acces'
              )
              ]
            ),
            Option(
              name: '--include-secret',
              description: 'Show the registered secret for the datastores',
              args: [
                Arg(
                name: 'include-secre'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--protocol',
              description: 'Protocol to use to connect to the blob container. If not specified, defaults to https',
              args: [
                Arg(
                name: 'protoco'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--sas-token',
              description: 'A SAS token for the blob container',
              args: [
                Arg(
                name: 'sas-toke'
              )
              ]
            ),
            Option(
              name: '--storage-account-resource-group',
              description: 'The resource group of the storage account',
              args: [
                Arg(
                name: 'storage-account-resource-grou'
              )
              ]
            ),
            Option(
              name: '--storage-account-subscription-id',
              description: 'The subscription ID of the storage account',
              args: [
                Arg(
                name: 'storage-account-subscription-i'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'attach-dbfs',
          description: 'Attach a Databricks File System datastore',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The datastore name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'attach-file',
          description: 'Attach a file share datastore',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the storage account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The datastore name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--share-name', '-c'],
              description: 'The file share name',
              args: [
                Arg(
                name: 'share-nam'
              )
              ]
            ),
            Option(
              name: ['--account-key', '-k'],
              description: 'The storage account key',
              args: [
                Arg(
                name: 'account-ke'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'The endpoint of the storage account. Defaults to core.windows.net',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--include-secret',
              description: 'Show the registered secret for the datastores',
              args: [
                Arg(
                name: 'include-secre'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--protocol',
              description: 'Protocol to use to connect to the blob container. If not specified, defaults to https',
              args: [
                Arg(
                name: 'protoco'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--sas-token',
              description: 'A SAS token for the blob container',
              args: [
                Arg(
                name: 'sas-toke'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'attach-mysqldb',
          description: 'Attach an Azure MySQL datastore',
          options: [

            Option(
              name: ['--database-name', '-d'],
              description: 'The database name',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The datastore name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--server-name',
              description: 'The SQL/PostgreSQL/MySQL server name',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            ),
            Option(
              name: ['--user-id', '-u'],
              description: 'The user ID',
              args: [
                Arg(
                name: 'user-i'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'The endpoint of the server. Defaults to mysql.database.azure.com',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--include-secret',
              description: 'Show the registered secret for the datastores',
              args: [
                Arg(
                name: 'include-secre'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'The port number',
              args: [
                Arg(
                name: 'por'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'attach-psqldb',
          description: 'Attach an Azure PostgreSQL datastore',
          options: [

            Option(
              name: ['--database-name', '-d'],
              description: 'The database name',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The datastore name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--password', '-p'],
              description: 'The password',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--server-name',
              description: 'The SQL/PostgreSQL/MySQL server name',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            ),
            Option(
              name: ['--user-id', '-u'],
              description: 'The user ID',
              args: [
                Arg(
                name: 'user-i'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'The endpoint of the server. Defaults to postgres.database.azure.com',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--enforce-ssl',
              description: 'This sets the ssl value of the server. Defaults to true if not set',
              args: [
                Arg(
                name: 'enforce-ss'
              )
              ]
            ),
            Option(
              name: '--include-secret',
              description: 'Show the registered secret for the datastores',
              args: [
                Arg(
                name: 'include-secre'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'The port number',
              args: [
                Arg(
                name: 'por'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'attach-sqldb',
          description: 'Attach an Azure SQL datastore',
          options: [

            Option(
              name: ['--database-name', '-d'],
              description: 'The database name',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The datastore name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--server-name',
              description: 'The SQL/PostgreSQL/MySQL server name',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            ),
            Option(
              name: '--authority-url',
              description: 'Authority url used to authenticate the user',
              args: [
                Arg(
                name: 'authority-ur'
              )
              ]
            ),
            Option(
              name: '--client-id',
              description: 'The service principal/application ID',
              args: [
                Arg(
                name: 'client-i'
              )
              ]
            ),
            Option(
              name: '--client-secret',
              description: 'The service principal\'s secret',
              args: [
                Arg(
                name: 'client-secre'
              )
              ]
            ),
            Option(
              name: '--endpoint',
              description: 'The endpoint of the sql server. Defaults to database.windows.net',
              args: [
                Arg(
                name: 'endpoin'
              )
              ]
            ),
            Option(
              name: '--grant-workspace-msi-access',
              description: 'Defaults to False. Set it to True to access data behind virtual network from Machine Learning Studio. This makes data access from Machine Learning Studio use workspace managed identity for authentication, You have to be Owner or User Access Administrator of the storage to opt-in. Ask your administrator to configure it for you if you do not have the required permission. Learn more \'https://docs.microsoft.com/azure/machine-learning/how-to-enable-studio-virtual-network',
              args: [
                Arg(
                name: 'grant-workspace-msi-acces'
              )
              ]
            ),
            Option(
              name: '--include-secret',
              description: 'Show the registered secret for the datastores',
              args: [
                Arg(
                name: 'include-secre'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'The password of the database user to access the database',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-url',
              description: 'Determines what operations will be performed on the database',
              args: [
                Arg(
                name: 'resource-ur'
              )
              ]
            ),
            Option(
              name: '--sql-resource-group',
              description: 'The resource group of the Azure Sql Server',
              args: [
                Arg(
                name: 'sql-resource-grou'
              )
              ]
            ),
            Option(
              name: '--sql-subscription-id',
              description: 'The subscription ID of the Azure Sql Server',
              args: [
                Arg(
                name: 'sql-subscription-i'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: '--tenant-id',
              description: 'The service principal Tenant ID',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            ),
            Option(
              name: '--username',
              description: 'The username of the database user to access the database',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'detach',
          description: 'Detach a datastore by name',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The datastore name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'download',
          description: 'Download files from a Datastore',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The datastore name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--target-path', '-d'],
              description: 'Target path for the downloaded files',
              args: [
                Arg(
                name: 'target-pat'
              )
              ]
            ),
            Option(
              name: '--hide-progress',
              description: 'Whether to hide progress of operation',
              args: [
                Arg(
                name: 'hide-progres'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--overwrite',
              description: 'Overwrite target files if they exist',
              args: [
                Arg(
                name: 'overwrit'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--prefix', '-p'],
              description: 'Path filter for files to download. If none is provided, downloads everything',
              args: [
                Arg(
                name: 'prefi'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List datastores in the workspace',
          options: [

            Option(
              name: '--include-secret',
              description: 'Show the registered secret for the datastores',
              args: [
                Arg(
                name: 'include-secre'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set-default',
          description: 'Set the workspace default datastore by name',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The datastore name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a single datastore by name',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The datastore name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--include-secret',
              description: 'Show the registered secret for the datastores',
              args: [
                Arg(
                name: 'include-secre'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-default',
          description: 'Show the workspace default datastore',
          options: [

            Option(
              name: '--include-secret',
              description: 'Show the registered secret for the datastores',
              args: [
                Arg(
                name: 'include-secre'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'upload',
          description: 'Upload files to a Datastore',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The datastore name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--src-path', '-p'],
              description: 'Path from which to upload data',
              args: [
                Arg(
                name: 'src-pat'
              )
              ]
            ),
            Option(
              name: '--hide-progress',
              description: 'Whether to hide progress of operation',
              args: [
                Arg(
                name: 'hide-progres'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--overwrite',
              description: 'Overwrite target files if they exist',
              args: [
                Arg(
                name: 'overwrit'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--target-path', '-u'],
              description: 'Path to upload data in the container. Uploads to the root by default',
              args: [
                Arg(
                name: 'target-pat'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'endpoint',
      description: 'Manage machine learning endpoints',
      subcommands: [

        Subcommand(
          name: 'realtime',
          description: 'Manage operationalized realtime endpoints',
          subcommands: [

            Subcommand(
              name: 'create-version',
              description: 'Create a version for realtime endpoint in the workspace',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The endpoint name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--version-name', '--vn'],
                  description: 'The version name to create in an Endpoint',
                  args: [
                    Arg(
                    name: 'version-nam'
                  )
                  ]
                ),
                Option(
                  name: '--add-property',
                  description: 'Key/value property to add (e.g. key=value ). Multiple properties can be specified with multiple --add-property options',
                  args: [
                    Arg(
                    name: 'add-propert'
                  )
                  ]
                ),
                Option(
                  name: '--add-tag',
                  description: 'Key/value tag to add (e.g. key=value ). Multiple tags can be specified with multiple --add-tag options',
                  args: [
                    Arg(
                    name: 'add-ta'
                  )
                  ]
                ),
                Option(
                  name: ['--autoscale-refresh-seconds', '--ar'],
                  description: 'How often the autoscaler should attempt to scale this Webservice. Defaults to 1',
                  args: [
                    Arg(
                    name: 'autoscale-refresh-second'
                  )
                  ]
                ),
                Option(
                  name: ['--autoscale-enabled', '--as'],
                  description: 'Whether or not to enable autoscaling for this Webservice. Defaults to True if num_replicas is None',
                  args: [
                    Arg(
                    name: 'autoscale-enable'
                  )
                  ]
                ),
                Option(
                  name: ['--autoscale-target-utilization', '--at'],
                  description: 'The target utilization (in percent out of 100) the autoscaler should attempt to maintain for this Webservice. Defaults to 70',
                  args: [
                    Arg(
                    name: 'autoscale-target-utilizatio'
                  )
                  ]
                ),
                Option(
                  name: ['--autoscale-max-replicas', '--ma'],
                  description: 'The maximum number of containers to use when autoscaling this Webservice. Defaults to 10',
                  args: [
                    Arg(
                    name: 'autoscale-max-replica'
                  )
                  ]
                ),
                Option(
                  name: ['--autoscale-min-replicas', '--mi'],
                  description: 'The minimum number of containers to use when autoscaling this Webservice. Defaults to 1',
                  args: [
                    Arg(
                    name: 'autoscale-min-replica'
                  )
                  ]
                ),
                Option(
                  name: ['--cpu-cores', '--cc'],
                  description: 'The number of cpu cores to allocate for this Webservice. Can be a decimal. Defaults to 0.1',
                  args: [
                    Arg(
                    name: 'cpu-core'
                  )
                  ]
                ),
                Option(
                  name: ['--cpu-cores-limit', '--ccl'],
                  description: 'The max number of CPU cores this Webservice is allowed to use. Can be a decimal',
                  args: [
                    Arg(
                    name: 'cpu-cores-limi'
                  )
                  ]
                ),
                Option(
                  name: ['--conda-file', '--cf'],
                  description: 'Path to local file containing a conda environment definition to use for the image',
                  args: [
                    Arg(
                    name: 'conda-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--collect-model-data', '--md'],
                  description: 'Whether or not to enable model data collection for this Webservice. Defaults to False',
                  args: [
                    Arg(
                    name: 'collect-model-dat'
                  )
                  ]
                ),
                Option(
                  name: ['--is-control-version-type', '--cvt'],
                  description: 'Whether or not this is the control version in an Endpoint. Defaults to False',
                  args: [
                    Arg(
                    name: 'is-control-version-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--deploy-config-file', '--dc'],
                  description: 'Path to a JSON file containing deployment metadata',
                  args: [
                    Arg(
                    name: 'deploy-config-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--description', '-d'],
                  description: 'Description of the service',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--environment-directory', '--ed'],
                  description: 'Directory for Azure Machine Learning Environment for deployment. It is the same directory path as provided in \'az ml environment scaffold\' command',
                  args: [
                    Arg(
                    name: 'environment-director'
                  )
                  ]
                ),
                Option(
                  name: ['--entry-script', '--es'],
                  description: 'Path to local file that contains the code to run for service (relative path from source_directory if one is provided)',
                  args: [
                    Arg(
                    name: 'entry-scrip'
                  )
                  ]
                ),
                Option(
                  name: ['--environment-name', '-e'],
                  description: 'Name of Azure Machine Learning Environment for deployment',
                  args: [
                    Arg(
                    name: 'environment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--environment-version', '--ev'],
                  description: 'Version of an existing Azure Machine Learning Environment for deployment',
                  args: [
                    Arg(
                    name: 'environment-versio'
                  )
                  ]
                ),
                Option(
                  name: ['--failure-threshold', '--ft'],
                  description: 'When a Pod starts and the liveness probe fails, Kubernetes will try --failure-threshold times before giving up. Defaults to 3. Minimum value is 1',
                  args: [
                    Arg(
                    name: 'failure-threshol'
                  )
                  ]
                ),
                Option(
                  name: ['--memory-gb', '--gb'],
                  description: 'The amount of memory (in GB) to allocate for this Webservice. Can be a decimal',
                  args: [
                    Arg(
                    name: 'memory-g'
                  )
                  ]
                ),
                Option(
                  name: ['--memory-gb-limit', '--gbl'],
                  description: 'The max amount of memory (in GB) this Webservice is allowed to use. Can be a decimal',
                  args: [
                    Arg(
                    name: 'memory-gb-limi'
                  )
                  ]
                ),
                Option(
                  name: ['--gpu-cores', '--gc'],
                  description: 'The number of gpu cores to allocate for this Webservice. Default is 1',
                  args: [
                    Arg(
                    name: 'gpu-core'
                  )
                  ]
                ),
                Option(
                  name: ['--inference-config-file', '--ic'],
                  description: 'Path to a JSON or YAML file containing inference configuration',
                  args: [
                    Arg(
                    name: 'inference-config-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--initial-delay-seconds', '--id'],
                  description: 'Number of seconds after the container has started before liveness probes are initiated. Defaults to 310',
                  args: [
                    Arg(
                    name: 'initial-delay-second'
                  )
                  ]
                ),
                Option(
                  name: '--is-default',
                  description: 'Whether or not this is the default version in an Endpoint. Defaults to False',
                  args: [
                    Arg(
                    name: 'is-defaul'
                  )
                  ]
                ),
                Option(
                  name: ['--max-request-wait-time', '--mr'],
                  description: 'The maximum amount of time a request will stay in the queue (in milliseconds) before returning a 503 error. Defaults to 500',
                  args: [
                    Arg(
                    name: 'max-request-wait-tim'
                  )
                  ]
                ),
                Option(
                  name: ['--model', '-m'],
                  description: 'The ID of the model to be deployed. Multiple models can be specified with additional -m arguments. Models need to be registered first',
                  args: [
                    Arg(
                    name: 'mode'
                  )
                  ]
                ),
                Option(
                  name: ['--model-metadata-file', '-f'],
                  description: 'Path to a JSON file containing model registration metadata. Multiple models can be provided using multiple -f parameters',
                  args: [
                    Arg(
                    name: 'model-metadata-fil'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Flag to not wait for asynchronous calls',
                  args: [
                    Arg(
                    name: 'no-wai'
                  )
                  ]
                ),
                Option(
                  name: ['--num-replicas', '--nr'],
                  description: 'The number of containers to allocate for this Webservice. No default, if this parameter is not set then the autoscaler is enabled by default',
                  args: [
                    Arg(
                    name: 'num-replica'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--period-seconds', '--ps'],
                  description: 'How often (in seconds) to perform the liveness probe. Default to 10 seconds. Minimum value is 1',
                  args: [
                    Arg(
                    name: 'period-second'
                  )
                  ]
                ),
                Option(
                  name: ['--replica-max-concurrent-requests', '--rm'],
                  description: 'The number of maximum concurrent requests per node to allow for this Webservice. Defaults to 1',
                  args: [
                    Arg(
                    name: 'replica-max-concurrent-request'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--scoring-timeout-ms', '--tm'],
                  description: 'A timeout to enforce for scoring calls to this Webservice. Defaults to 60000',
                  args: [
                    Arg(
                    name: 'scoring-timeout-m'
                  )
                  ]
                ),
                Option(
                  name: ['--source-directory', '--sd'],
                  description: 'Path to folders that contain all files to create the image',
                  args: [
                    Arg(
                    name: 'source-director'
                  )
                  ]
                ),
                Option(
                  name: ['--success-threshold', '--st'],
                  description: 'Minimum consecutive successes for the liveness probe to be considered successful after having failed. Defaults to 1. Minimum value is 1',
                  args: [
                    Arg(
                    name: 'success-threshol'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout-seconds', '--ts'],
                  description: 'Number of seconds after which the liveness probe times out. Defaults to 2 second. Minimum value is 1',
                  args: [
                    Arg(
                    name: 'timeout-second'
                  )
                  ]
                ),
                Option(
                  name: ['--traffic-percentile', '--tp'],
                  description: 'The traffic percentile this version takes in Endpoint',
                  args: [
                    Arg(
                    name: 'traffic-percentil'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the service to update',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag',
                  args: [
                    Arg(
                    name: ''
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a realtime endpoint and its version from the workspace',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The endpoint name to delete',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the endpoint to delete',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag',
                  args: [
                    Arg(
                    name: ''
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete-version',
              description: 'Delete a version for realtime endpoint in the workspace',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The endpoint name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--version-name', '--vn'],
                  description: 'The version name to delete',
                  args: [
                    Arg(
                    name: 'version-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Flag to not wait for asynchronous calls',
                  args: [
                    Arg(
                    name: 'no-wai'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the endpoint to delete',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag',
                  args: [
                    Arg(
                    name: ''
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get-access-token',
              description: 'Get a token to issue requests a realtime endpoint',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Endpoint Name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the endpoint to show',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag',
                  args: [
                    Arg(
                    name: ''
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get-keys',
              description: 'Get keys to issue requests against a realtime endpoint',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Endpoint Name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the endpoint to show',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag',
                  args: [
                    Arg(
                    name: ''
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'get-logs',
              description: 'Get logs for a realtime endpoint',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Endpoint Name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--init', '-i'],
                  description: 'Get logs of init container instead of the scoring container'
                ),
                Option(
                  name: ['--num_lines', '-l'],
                  description: 'Number of log lines to return from tail (default is 5000)',
                  args: [
                    Arg(
                    name: 'num_line'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the endpoint to show',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag',
                  args: [
                    Arg(
                    name: ''
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List realtime endpoints in the workspace',
              options: [

                Option(
                  name: ['--compute-type', '-c'],
                  description: 'If provided, will only show services that have the specified compute type. (Options are \'ACI\', \'AKS\', \'AKSENDPOINT\')',
                  args: [
                    Arg(
                    name: 'compute-typ'
                  )
                  ]
                ),
                Option(
                  name: '--model-id',
                  description: 'If provided, will only show services that have the specified model id',
                  args: [
                    Arg(
                    name: 'model-i'
                  )
                  ]
                ),
                Option(
                  name: '--model-name',
                  description: 'If provided, will only show services that have the specified model name',
                  args: [
                    Arg(
                    name: 'model-nam'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--property',
                  description: 'If provided, will filter based on the provided key/value (e.g. key, or key=value). Multiple properties can be specified with multiple --property options',
                  args: [
                    Arg(
                    name: 'propert'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: '--tag',
                  description: 'If provided, will filter based on the provided key/value (e.g. key, or key=value). Multiple tags can be specified with multiple --tag options',
                  args: [
                    Arg(
                    name: 'ta'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the endpoints to list',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag',
                  args: [
                    Arg(
                    name: ''
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'regen-key',
              description: 'Regenerate keys for a realtime endpoint',
              options: [

                Option(
                  name: ['--key', '-k'],
                  description: 'Which key to regenerate, if regen is specified. Options: Primary, Secondary',
                  args: [
                    Arg(
                    name: 'ke'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Endpoint Name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--set-key', '-s'],
                  description: 'Provide auth value for the specified key',
                  args: [
                    Arg(
                    name: 'set-ke'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the endpoint to show',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag',
                  args: [
                    Arg(
                    name: ''
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'run',
              description: 'Run a realtime endpoint in the workspace',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The endpoint name to score against',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--input-data', '-d'],
                  description: 'The data to use for calling the endpoint',
                  args: [
                    Arg(
                    name: 'input-dat'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the endpoint to run',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag',
                  args: [
                    Arg(
                    name: ''
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show details for a realtime endpoint in the workspace',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the endpoint to show',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the endpoint to show',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag',
                  args: [
                    Arg(
                    name: ''
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a realtime endpoint in the workspace',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The endpoint name to update',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--add-property',
                  description: 'Key/value property to add (e.g. key=value ). Multiple properties can be specified with multiple --add-property options',
                  args: [
                    Arg(
                    name: 'add-propert'
                  )
                  ]
                ),
                Option(
                  name: '--add-tag',
                  description: 'Key/value tag to add (e.g. key=value ). Multiple tags can be specified with multiple --add-tag options',
                  args: [
                    Arg(
                    name: 'add-ta'
                  )
                  ]
                ),
                Option(
                  name: ['--auth-enabled', '--ae'],
                  description: 'Whether or not to enable key auth for this Endpoint. Defaults to False',
                  args: [
                    Arg(
                    name: 'auth-enable'
                  )
                  ]
                ),
                Option(
                  name: ['--enable-app-insights', '--ai'],
                  description: 'Whether or not to enable AppInsights for this Endpoint. Defaults to False',
                  args: [
                    Arg(
                    name: 'enable-app-insight'
                  )
                  ]
                ),
                Option(
                  name: ['--description', '-d'],
                  description: 'Description of the endpoint',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Flag to not wait for asynchronous calls',
                  args: [
                    Arg(
                    name: 'no-wai'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--remove-tag',
                  description: 'Key of tag to remove. Multiple tags can be specified with multiple --remove-tag options',
                  args: [
                    Arg(
                    name: 'remove-ta'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: '--token-auth-enabled',
                  description: 'Whether or not to enable token auth for this Endpoint. Defaults to False',
                  args: [
                    Arg(
                    name: 'token-auth-enable'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the Endpoint to update',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag',
                  args: [
                    Arg(
                    name: ''
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update-version',
              description: 'Update a version for realtime endpoint in the workspace',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The endpoint name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--version-name', '--vn'],
                  description: 'The version name to create in an Endpoint',
                  args: [
                    Arg(
                    name: 'version-nam'
                  )
                  ]
                ),
                Option(
                  name: '--add-property',
                  description: 'Key/value property to add (e.g. key=value ). Multiple properties can be specified with multiple --add-property options',
                  args: [
                    Arg(
                    name: 'add-propert'
                  )
                  ]
                ),
                Option(
                  name: '--add-tag',
                  description: 'Key/value tag to add (e.g. key=value ). Multiple tags can be specified with multiple --add-tag options',
                  args: [
                    Arg(
                    name: 'add-ta'
                  )
                  ]
                ),
                Option(
                  name: ['--autoscale-refresh-seconds', '--ar'],
                  description: 'How often the autoscaler should attempt to scale this Webservice. Defaults to 1',
                  args: [
                    Arg(
                    name: 'autoscale-refresh-second'
                  )
                  ]
                ),
                Option(
                  name: ['--autoscale-enabled', '--as'],
                  description: 'Whether or not to enable autoscaling for this Webservice. Defaults to True if num_replicas is None',
                  args: [
                    Arg(
                    name: 'autoscale-enable'
                  )
                  ]
                ),
                Option(
                  name: ['--autoscale-target-utilization', '--at'],
                  description: 'The target utilization (in percent out of 100) the autoscaler should attempt to maintain for this Webservice. Defaults to 70',
                  args: [
                    Arg(
                    name: 'autoscale-target-utilizatio'
                  )
                  ]
                ),
                Option(
                  name: ['--autoscale-max-replicas', '--ma'],
                  description: 'The maximum number of containers to use when autoscaling this Webservice. Defaults to 10',
                  args: [
                    Arg(
                    name: 'autoscale-max-replica'
                  )
                  ]
                ),
                Option(
                  name: ['--autoscale-min-replicas', '--mi'],
                  description: 'The minimum number of containers to use when autoscaling this Webservice. Defaults to 1',
                  args: [
                    Arg(
                    name: 'autoscale-min-replica'
                  )
                  ]
                ),
                Option(
                  name: ['--cpu-cores', '--cc'],
                  description: 'The number of cpu cores to allocate for this Webservice. Can be a decimal. Defaults to 0.1',
                  args: [
                    Arg(
                    name: 'cpu-core'
                  )
                  ]
                ),
                Option(
                  name: ['--cpu-cores-limit', '--ccl'],
                  description: 'The max number of CPU cores this Webservice is allowed to use. Can be a decimal',
                  args: [
                    Arg(
                    name: 'cpu-cores-limi'
                  )
                  ]
                ),
                Option(
                  name: ['--conda-file', '--cf'],
                  description: 'Path to local file containing a conda environment definition to use for the image',
                  args: [
                    Arg(
                    name: 'conda-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--collect-model-data', '--md'],
                  description: 'Whether or not to enable model data collection for this Webservice. Defaults to False',
                  args: [
                    Arg(
                    name: 'collect-model-dat'
                  )
                  ]
                ),
                Option(
                  name: ['--is-control-version-type', '--cvt'],
                  description: 'Whether or not this is the control version in an Endpoint. Defaults to False',
                  args: [
                    Arg(
                    name: 'is-control-version-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--deploy-config-file', '--dc'],
                  description: 'Path to a JSON file containing deployment metadata',
                  args: [
                    Arg(
                    name: 'deploy-config-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--description', '-d'],
                  description: 'Description of the service',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--environment-directory', '--ed'],
                  description: 'Directory for Azure Machine Learning Environment for deployment. It is the same directory path as provided in \'az ml environment scaffold\' command',
                  args: [
                    Arg(
                    name: 'environment-director'
                  )
                  ]
                ),
                Option(
                  name: ['--entry-script', '--es'],
                  description: 'Path to local file that contains the code to run for service (relative path from source_directory if one is provided)',
                  args: [
                    Arg(
                    name: 'entry-scrip'
                  )
                  ]
                ),
                Option(
                  name: ['--environment-name', '-e'],
                  description: 'Name of Azure Machine Learning Environment for deployment',
                  args: [
                    Arg(
                    name: 'environment-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--environment-version', '--ev'],
                  description: 'Version of an existing Azure Machine Learning Environment for deployment',
                  args: [
                    Arg(
                    name: 'environment-versio'
                  )
                  ]
                ),
                Option(
                  name: ['--failure-threshold', '--ft'],
                  description: 'When a Pod starts and the liveness probe fails, Kubernetes will try --failure-threshold times before giving up. Defaults to 3. Minimum value is 1',
                  args: [
                    Arg(
                    name: 'failure-threshol'
                  )
                  ]
                ),
                Option(
                  name: ['--memory-gb', '--gb'],
                  description: 'The amount of memory (in GB) to allocate for this Webservice. Can be a decimal',
                  args: [
                    Arg(
                    name: 'memory-g'
                  )
                  ]
                ),
                Option(
                  name: ['--memory-gb-limit', '--gbl'],
                  description: 'The max amount of memory (in GB) this Webservice is allowed to use. Can be a decimal',
                  args: [
                    Arg(
                    name: 'memory-gb-limi'
                  )
                  ]
                ),
                Option(
                  name: ['--gpu-cores', '--gc'],
                  description: 'The number of gpu cores to allocate for this Webservice. Default is 1',
                  args: [
                    Arg(
                    name: 'gpu-core'
                  )
                  ]
                ),
                Option(
                  name: ['--inference-config-file', '--ic'],
                  description: 'Path to a JSON or YAML file containing inference configuration',
                  args: [
                    Arg(
                    name: 'inference-config-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--initial-delay-seconds', '--id'],
                  description: 'Number of seconds after the container has started before liveness probes are initiated. Defaults to 310',
                  args: [
                    Arg(
                    name: 'initial-delay-second'
                  )
                  ]
                ),
                Option(
                  name: '--is-default',
                  description: 'Whether or not this is the default version in an Endpoint. Defaults to False',
                  args: [
                    Arg(
                    name: 'is-defaul'
                  )
                  ]
                ),
                Option(
                  name: ['--max-request-wait-time', '--mr'],
                  description: 'The maximum amount of time a request will stay in the queue (in milliseconds) before returning a 503 error. Defaults to 500',
                  args: [
                    Arg(
                    name: 'max-request-wait-tim'
                  )
                  ]
                ),
                Option(
                  name: ['--model', '-m'],
                  description: 'The ID of the model to be deployed. Multiple models can be specified with additional -m arguments. Models need to be registered first',
                  args: [
                    Arg(
                    name: 'mode'
                  )
                  ]
                ),
                Option(
                  name: ['--model-metadata-file', '-f'],
                  description: 'Path to a JSON file containing model registration metadata. Multiple models can be provided using multiple -f parameters',
                  args: [
                    Arg(
                    name: 'model-metadata-fil'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Flag to not wait for asynchronous calls',
                  args: [
                    Arg(
                    name: 'no-wai'
                  )
                  ]
                ),
                Option(
                  name: ['--num-replicas', '--nr'],
                  description: 'The number of containers to allocate for this Webservice. No default, if this parameter is not set then the autoscaler is enabled by default',
                  args: [
                    Arg(
                    name: 'num-replica'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a project folder. Default: current directory',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--period-seconds', '--ps'],
                  description: 'How often (in seconds) to perform the liveness probe. Default to 10 seconds. Minimum value is 1',
                  args: [
                    Arg(
                    name: 'period-second'
                  )
                  ]
                ),
                Option(
                  name: ['--replica-max-concurrent-requests', '--rm'],
                  description: 'The number of maximum concurrent requests per node to allow for this Webservice. Defaults to 1',
                  args: [
                    Arg(
                    name: 'replica-max-concurrent-request'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group corresponding to the provided workspace',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--scoring-timeout-ms', '--tm'],
                  description: 'A timeout to enforce for scoring calls to this Webservice. Defaults to 60000',
                  args: [
                    Arg(
                    name: 'scoring-timeout-m'
                  )
                  ]
                ),
                Option(
                  name: ['--source-directory', '--sd'],
                  description: 'Path to folders that contain all files to create the image',
                  args: [
                    Arg(
                    name: 'source-director'
                  )
                  ]
                ),
                Option(
                  name: ['--success-threshold', '--st'],
                  description: 'Minimum consecutive successes for the liveness probe to be considered successful after having failed. Defaults to 1. Minimum value is 1',
                  args: [
                    Arg(
                    name: 'success-threshol'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--timeout-seconds', '--ts'],
                  description: 'Number of seconds after which the liveness probe times out. Defaults to 2 second. Minimum value is 1',
                  args: [
                    Arg(
                    name: 'timeout-second'
                  )
                  ]
                ),
                Option(
                  name: ['--traffic-percentile', '--tp'],
                  description: 'The traffic percentile this version takes in Endpoint',
                  args: [
                    Arg(
                    name: 'traffic-percentil'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Name of the workspace containing the service to update',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                ),
                Option(
                  name: '-v',
                  description: 'Verbosity flag',
                  args: [
                    Arg(
                    name: ''
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
      name: 'environment',
      description: 'Commands to manage environments',
      subcommands: [

        Subcommand(
          name: 'download',
          description: 'Download an environment definition to a specified directory',
          options: [

            Option(
              name: ['--directory', '-d'],
              description: 'Directory for the environment',
              args: [
                Arg(
                name: 'director'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the environment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--overwrite',
              description: 'Overwrite any existing destination folder'
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'Version of the environment',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List environments in a workspace',
          options: [

            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'register',
          description: 'Register an environment definition from a specified directory',
          options: [

            Option(
              name: ['--directory', '-d'],
              description: 'Directory for the environment',
              args: [
                Arg(
                name: 'director'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'scaffold',
          description: 'Scaffold the files for a default environment definition in the specified directory',
          options: [

            Option(
              name: ['--directory', '-d'],
              description: 'Directory for the environment',
              args: [
                Arg(
                name: 'director'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the environment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show an environment by name and optionally version',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the environment',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'Version of the environment',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
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
          name: 'list',
          description: 'List experiments in a workspace',
          options: [

            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'folder',
      description: 'Folder subgroup commands',
      subcommands: [

        Subcommand(
          name: 'attach',
          description: 'Attach a folder to an AzureML workspace and optionally a specific experiment to use by default. If experiment name is not specified, it defaults to the folder name',
          options: [

            Option(
              name: ['--experiment-name', '-e'],
              description: 'Experiment name',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'model',
      description: 'Manage machine learning models',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a model from the workspace',
          options: [

            Option(
              name: ['--model-id', '-i'],
              description: 'ID of model to delete',
              args: [
                Arg(
                name: 'model-i'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deploy',
          description: 'Deploy model(s) from the workspace',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the service deployed',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--auth-enabled', '--ae'],
              description: 'Whether or not to enable key auth for this Webservice. Defaults to False',
              args: [
                Arg(
                name: 'auth-enable'
              )
              ]
            ),
            Option(
              name: ['--enable-app-insights', '--ai'],
              description: 'Whether or not to enable AppInsights for this Webservice. Defaults to False',
              args: [
                Arg(
                name: 'enable-app-insight'
              )
              ]
            ),
            Option(
              name: ['--autoscale-refresh-seconds', '--ar'],
              description: 'How often the autoscaler should attempt to scale this Webservice. Defaults to 1',
              args: [
                Arg(
                name: 'autoscale-refresh-second'
              )
              ]
            ),
            Option(
              name: ['--autoscale-enabled', '--as'],
              description: 'Whether or not to enable autoscaling for this Webservice. Defaults to True if num_replicas is None',
              args: [
                Arg(
                name: 'autoscale-enable'
              )
              ]
            ),
            Option(
              name: ['--autoscale-target-utilization', '--at'],
              description: 'The target utilization (in percent out of 100) the autoscaler should attempt to maintain for this Webservice. Defaults to 70',
              args: [
                Arg(
                name: 'autoscale-target-utilizatio'
              )
              ]
            ),
            Option(
              name: ['--autoscale-max-replicas', '--ma'],
              description: 'The maximum number of containers to use when autoscaling this Webservice. Defaults to 10',
              args: [
                Arg(
                name: 'autoscale-max-replica'
              )
              ]
            ),
            Option(
              name: ['--autoscale-min-replicas', '--mi'],
              description: 'The minimum number of containers to use when autoscaling this Webservice. Defaults to 1',
              args: [
                Arg(
                name: 'autoscale-min-replica'
              )
              ]
            ),
            Option(
              name: ['--base-image', '--bi'],
              description: 'A custom image to be used as base image. If no base image is given then the base image will be used based off of given runtime parameter',
              args: [
                Arg(
                name: 'base-imag'
              )
              ]
            ),
            Option(
              name: ['--base-image-registry', '--ir'],
              description: 'Image registry that contains the base image',
              args: [
                Arg(
                name: 'base-image-registr'
              )
              ]
            ),
            Option(
              name: ['--cpu-cores', '--cc'],
              description: 'The number of cpu cores to allocate for this Webservice. Can be a decimal. Defaults to 0.1',
              args: [
                Arg(
                name: 'cpu-core'
              )
              ]
            ),
            Option(
              name: ['--cpu-cores-limit', '--ccl'],
              description: 'The max number of CPU cores this Webservice is allowed to use. Can be a decimal',
              args: [
                Arg(
                name: 'cpu-cores-limi'
              )
              ]
            ),
            Option(
              name: ['--conda-file', '--cf'],
              description: 'Path to local file containing a conda environment definition to use for the image',
              args: [
                Arg(
                name: 'conda-fil'
              )
              ]
            ),
            Option(
              name: ['--collect-model-data', '--md'],
              description: 'Whether or not to enable model data collection for this Webservice. Defaults to False',
              args: [
                Arg(
                name: 'collect-model-dat'
              )
              ]
            ),
            Option(
              name: ['--compute-target', '--ct'],
              description: 'Name of compute target. Only applicable when deploying to AKS',
              args: [
                Arg(
                name: 'compute-targe'
              )
              ]
            ),
            Option(
              name: ['--compute-type', '--cp'],
              description: 'Compute type of service to deploy',
              args: [
                Arg(
                name: 'compute-typ'
              )
              ]
            ),
            Option(
              name: ['--cuda-version', '--cv'],
              description: 'Version of CUDA to install for images that need GPU support. The GPU image must be used on Microsoft Azure Services such as Azure Container Instances, Azure Machine Learning Compute, Azure Virtual Machines, and Azure Kubernetes Service. Supported versions are 9.0, 9.1, and 10.0. If \'enable_gpu\' is set, this defaults to \'9.1\'',
              args: [
                Arg(
                name: 'cuda-versio'
              )
              ]
            ),
            Option(
              name: ['--deploy-config-file', '--dc'],
              description: 'Path to a JSON or YAML file containing deployment metadata',
              args: [
                Arg(
                name: 'deploy-config-fil'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the service deployed',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--dns-name-label', '--dn'],
              description: 'The dns name for this Webservice',
              args: [
                Arg(
                name: 'dns-name-labe'
              )
              ]
            ),
            Option(
              name: ['--extra-docker-file-steps', '--ds'],
              description: 'Path to local file containing additional Docker steps to run when setting up image',
              args: [
                Arg(
                name: 'extra-docker-file-step'
              )
              ]
            ),
            Option(
              name: ['--environment-directory', '--ed'],
              description: 'Directory for Azure Machine Learning Environment for deployment. It is the same directory path as provided in \'az ml environment scaffold\' command',
              args: [
                Arg(
                name: 'environment-director'
              )
              ]
            ),
            Option(
              name: ['--enable-gpu', '--eg'],
              description: 'Whether or not to enable GPU support in the image. The GPU image must be used on Microsoft Azure Services such as Azure Container Instances, Azure Machine Learning Compute, Azure Virtual Machines, and Azure Kubernetes Service. Defaults to False',
              args: [
                Arg(
                name: 'enable-gp'
              )
              ]
            ),
            Option(
              name: ['--entry-script', '--es'],
              description: 'Path to local file that contains the code to run for service (relative path from source_directory if one is provided)',
              args: [
                Arg(
                name: 'entry-scrip'
              )
              ]
            ),
            Option(
              name: ['--environment-name', '-e'],
              description: 'Name of Azure Machine Learning Environment for deployment',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
            ),
            Option(
              name: ['--environment-version', '--ev'],
              description: 'Version of an existing Azure Machine Learning Environment for deployment',
              args: [
                Arg(
                name: 'environment-versio'
              )
              ]
            ),
            Option(
              name: ['--failure-threshold', '--ft'],
              description: 'When a Pod starts and the liveness probe fails, Kubernetes will try --failure-threshold times before giving up. Defaults to 3. Minimum value is 1',
              args: [
                Arg(
                name: 'failure-threshol'
              )
              ]
            ),
            Option(
              name: ['--memory-gb', '--gb'],
              description: 'The amount of memory (in GB) to allocate for this Webservice. Can be a decimal',
              args: [
                Arg(
                name: 'memory-g'
              )
              ]
            ),
            Option(
              name: ['--memory-gb-limit', '--gbl'],
              description: 'The max amount of memory (in GB) this Webservice is allowed to use. Can be a decimal',
              args: [
                Arg(
                name: 'memory-gb-limi'
              )
              ]
            ),
            Option(
              name: ['--gpu-cores', '--gc'],
              description: 'The number of gpu cores to allocate for this Webservice. Default is 1',
              args: [
                Arg(
                name: 'gpu-core'
              )
              ]
            ),
            Option(
              name: ['--inference-config-file', '--ic'],
              description: 'Path to a JSON or YAML file containing inference configuration',
              args: [
                Arg(
                name: 'inference-config-fil'
              )
              ]
            ),
            Option(
              name: ['--initial-delay-seconds', '--id'],
              description: 'Number of seconds after the container has started before liveness probes are initiated. Defaults to 310',
              args: [
                Arg(
                name: 'initial-delay-second'
              )
              ]
            ),
            Option(
              name: '--key-name',
              description: 'Key name for for encryption properties in customer-managed keys (CMK) for ACI',
              args: [
                Arg(
                name: 'key-nam'
              )
              ]
            ),
            Option(
              name: '--key-version',
              description: 'Key version for for encryption properties in customer-managed keys (CMK) for ACI',
              args: [
                Arg(
                name: 'key-versio'
              )
              ]
            ),
            Option(
              name: ['--primary-key', '--kp'],
              description: 'A primary auth key to use for this Webservice',
              args: [
                Arg(
                name: 'primary-ke'
              )
              ]
            ),
            Option(
              name: ['--secondary-key', '--ks'],
              description: 'A secondary auth key to use for this Webservice',
              args: [
                Arg(
                name: 'secondary-ke'
              )
              ]
            ),
            Option(
              name: ['--location', '--lo'],
              description: 'The Azure region to deploy this Webservice to. If not specified the Workspace location will be used. More details on available regions can be found here: https://azure.microsoft.com/en-us/global-infrastructure/services/?regions=all&products=container-instances',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--max-request-wait-time', '--mr'],
              description: 'The maximum amount of time a request will stay in the queue (in milliseconds) before returning a 503 error. Defaults to 500',
              args: [
                Arg(
                name: 'max-request-wait-tim'
              )
              ]
            ),
            Option(
              name: ['--model', '-m'],
              description: 'The ID of the model to be deployed. Multiple models can be specified with additional -m arguments. Models need to be registered first',
              args: [
                Arg(
                name: 'mode'
              )
              ]
            ),
            Option(
              name: ['--model-metadata-file', '-f'],
              description: 'Path to a JSON file containing model registration metadata. Multiple models can be provided using multiple -f parameters',
              args: [
                Arg(
                name: 'model-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Kubernetes namespace in which to deploy the service: up to 63 lowercase alphanumeric (\'a\'-\'z\', \'0\'-\'9\') and hyphen (\'-\') characters. The first and last characters cannot be hyphens. Only applicable when deploying to AKS',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Flag to not wait for asynchronous calls',
              args: [
                Arg(
                name: 'no-wai'
              )
              ]
            ),
            Option(
              name: ['--num-replicas', '--nr'],
              description: 'The number of containers to allocate for this Webservice. No default, if this parameter is not set then the autoscaler is enabled by default',
              args: [
                Arg(
                name: 'num-replica'
              )
              ]
            ),
            Option(
              name: '--overwrite',
              description: 'Overwrite the existing service if name conflicts',
              args: [
                Arg(
                name: 'overwrit'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--period-seconds', '--ps'],
              description: 'How often (in seconds) to perform the liveness probe. Default to 10 seconds. Minimum value is 1',
              args: [
                Arg(
                name: 'period-second'
              )
              ]
            ),
            Option(
              name: ['--profile-input', '--pi'],
              description: 'Path to a JSON file containing profiling results',
              args: [
                Arg(
                name: 'profile-inpu'
              )
              ]
            ),
            Option(
              name: ['--port', '--po'],
              description: 'The local port on which to expose the service\'s HTTP endpoint',
              args: [
                Arg(
                name: 'por'
              )
              ]
            ),
            Option(
              name: '--property',
              description: 'Key/value property to add (e.g. key=value ). Multiple properties can be specified with multiple --property options',
              args: [
                Arg(
                name: 'propert'
              )
              ]
            ),
            Option(
              name: ['--replica-max-concurrent-requests', '--rm'],
              description: 'The number of maximum concurrent requests per node to allow for this Webservice. Defaults to 1',
              args: [
                Arg(
                name: 'replica-max-concurrent-request'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--runtime', '--rt'],
              description: 'Which runtime to use for image. Current supported runtimes are \'spark-py\' and \'python\'spark-py|python|python-slim',
              args: [
                Arg(
                name: 'runtim'
              )
              ]
            ),
            Option(
              name: ['--ssl-cname', '--sc'],
              description: 'The cname for if SSL is enabled',
              args: [
                Arg(
                name: 'ssl-cnam'
              )
              ]
            ),
            Option(
              name: ['--scoring-timeout-ms', '--tm'],
              description: 'A timeout to enforce for scoring calls to this Webservice. Defaults to 60000',
              args: [
                Arg(
                name: 'scoring-timeout-m'
              )
              ]
            ),
            Option(
              name: ['--source-directory', '--sd'],
              description: 'Path to folders that contain all files to create the image',
              args: [
                Arg(
                name: 'source-director'
              )
              ]
            ),
            Option(
              name: ['--ssl-enabled', '--se'],
              description: 'Whether or not to enable SSL for this Webservice. Defaults to False',
              args: [
                Arg(
                name: 'ssl-enable'
              )
              ]
            ),
            Option(
              name: ['--ssl-key-pem-file', '--sk'],
              description: 'The key file needed if SSL is enabled',
              args: [
                Arg(
                name: 'ssl-key-pem-fil'
              )
              ]
            ),
            Option(
              name: ['--ssl-cert-pem-file', '--sp'],
              description: 'The cert file needed if SSL is enabled',
              args: [
                Arg(
                name: 'ssl-cert-pem-fil'
              )
              ]
            ),
            Option(
              name: ['--success-threshold', '--st'],
              description: 'Minimum consecutive successes for the liveness probe to be considered successful after having failed. Defaults to 1. Minimum value is 1',
              args: [
                Arg(
                name: 'success-threshol'
              )
              ]
            ),
            Option(
              name: '--subnet-name',
              description: 'Name of the subnet inside the vnet',
              args: [
                Arg(
                name: 'subnet-nam'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: '--tag',
              description: 'Key/value tag to add (e.g. key=value ). Multiple tags can be specified with multiple --tag options',
              args: [
                Arg(
                name: 'ta'
              )
              ]
            ),
            Option(
              name: ['--timeout-seconds', '--ts'],
              description: 'Number of seconds after which the liveness probe times out. Defaults to 2 second. Minimum value is 1',
              args: [
                Arg(
                name: 'timeout-second'
              )
              ]
            ),
            Option(
              name: '--token-auth-enabled',
              description: 'Whether or not to enable token auth for this Webservice. Ignored if not deploying to AKS. Defaults to False',
              args: [
                Arg(
                name: 'token-auth-enable'
              )
              ]
            ),
            Option(
              name: ['--traffic-percentile', '--tp'],
              description: 'The amount of traffic the version takes in an endpoint. Can be a decimal. Defaults to 0',
              args: [
                Arg(
                name: 'traffic-percentil'
              )
              ]
            ),
            Option(
              name: '--vault-base-url',
              description: 'Vault base url for encryption properties in customer-managed keys (CMK) for ACI',
              args: [
                Arg(
                name: 'vault-base-ur'
              )
              ]
            ),
            Option(
              name: ['--version-name', '--vn'],
              description: 'The version name in an endpoint. Defaults to endpoint name for the first version',
              args: [
                Arg(
                name: 'version-nam'
              )
              ]
            ),
            Option(
              name: '--vnet-name',
              description: 'Name of the virtual network',
              args: [
                Arg(
                name: 'vnet-nam'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'download',
          description: 'Download a model from the workspace',
          options: [

            Option(
              name: ['--model-id', '-i'],
              description: 'ID of model',
              args: [
                Arg(
                name: 'model-i'
              )
              ]
            ),
            Option(
              name: ['--target-dir', '-t'],
              description: 'Target directory to download the model file to',
              args: [
                Arg(
                name: 'target-di'
              )
              ]
            ),
            Option(
              name: '--overwrite',
              description: 'Overwrite if the same name file exists in target directory',
              args: [
                Arg(
                name: 'overwrit'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing model to show',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List models in the workspace',
          options: [

            Option(
              name: '--dataset-id',
              description: 'If provided, will only show models with the specified dataset ID',
              args: [
                Arg(
                name: 'dataset-i'
              )
              ]
            ),
            Option(
              name: ['--latest', '-l'],
              description: 'If provided, will only return models with the latest version',
              args: [
                Arg(
                name: 'lates'
              )
              ]
            ),
            Option(
              name: ['--model-name', '-n'],
              description: 'An optional model name to filter the list by',
              args: [
                Arg(
                name: 'model-nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--property',
              description: 'Key/value property to add (e.g. key=value ). Multiple properties can be specified with multiple --property options',
              args: [
                Arg(
                name: 'propert'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--run-id',
              description: 'If provided, will only show models with the specified Run ID',
              args: [
                Arg(
                name: 'run-i'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: '--tag',
              description: 'Key/value tag to add (e.g. key=value ). Multiple tags can be specified with multiple --tag options',
              args: [
                Arg(
                name: 'ta'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing models to list',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'package',
          description: 'Package a model in the workspace',
          options: [

            Option(
              name: ['--conda-file', '--cf'],
              description: 'Path to local file containing a conda environment definition to use for the package',
              args: [
                Arg(
                name: 'conda-fil'
              )
              ]
            ),
            Option(
              name: ['--environment-directory', '--ed'],
              description: 'Directory for Azure Machine Learning Environment for packaging. It is the same directory path as provided in \'az ml environment scaffold\' command',
              args: [
                Arg(
                name: 'environment-director'
              )
              ]
            ),
            Option(
              name: ['--entry-script', '--es'],
              description: 'Path to local file that contains the code to run for service (relative path from source_directory if one is provided)',
              args: [
                Arg(
                name: 'entry-scrip'
              )
              ]
            ),
            Option(
              name: ['--environment-name', '-e'],
              description: 'Name of Azure Machine Learning Environment for packaging',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
            ),
            Option(
              name: ['--environment-version', '--ev'],
              description: 'Version of an existing Azure Machine Learning Environment for packaging',
              args: [
                Arg(
                name: 'environment-versio'
              )
              ]
            ),
            Option(
              name: ['--inference-config-file', '--ic'],
              description: 'Path to a JSON or YAML file containing inference configuration',
              args: [
                Arg(
                name: 'inference-config-fil'
              )
              ]
            ),
            Option(
              name: ['--image-label', '--il'],
              description: 'Label to give the built package image',
              args: [
                Arg(
                name: 'image-labe'
              )
              ]
            ),
            Option(
              name: ['--image-name', '--in'],
              description: 'Name to give the built package image',
              args: [
                Arg(
                name: 'image-nam'
              )
              ]
            ),
            Option(
              name: ['--model', '-m'],
              description: 'The ID of the model to be packaged. Multiple models can be specified with additional -m arguments. Models need to be registered first',
              args: [
                Arg(
                name: 'mode'
              )
              ]
            ),
            Option(
              name: ['--model-metadata-file', '-f'],
              description: 'Path to a JSON file containing model registration metadata. Multiple models can be provided using multiple -f parameters',
              args: [
                Arg(
                name: 'model-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Flag to not wait for asynchronous calls',
              args: [
                Arg(
                name: 'no-wai'
              )
              ]
            ),
            Option(
              name: '--output-path',
              description: 'Output path for docker context. If an output path is passed, instead of building an image in the workspace ACR, a dockerfile and the necessary build context will be writen to that path',
              args: [
                Arg(
                name: 'output-pat'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--runtime', '--rt'],
              description: 'Which runtime to use for package. Current supported runtimes are \'spark-py\' and \'python\'spark-py|python|python-slim',
              args: [
                Arg(
                name: 'runtim'
              )
              ]
            ),
            Option(
              name: ['--source-directory', '--sd'],
              description: 'Path to folders that contain all files to create the image',
              args: [
                Arg(
                name: 'source-director'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'profile',
          description: 'Profile model(s) in the workspace',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the model profile',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--base-image', '--bi'],
              description: 'A custom image to be used as base image. If no base image is given then the base image will be used based off of given runtime parameter',
              args: [
                Arg(
                name: 'base-imag'
              )
              ]
            ),
            Option(
              name: ['--base-image-registry', '--ir'],
              description: 'Image registry that contains the base image',
              args: [
                Arg(
                name: 'base-image-registr'
              )
              ]
            ),
            Option(
              name: ['--cpu-cores', '--cc'],
              description: 'Double value for maximum CPU to use when profiling',
              args: [
                Arg(
                name: 'cpu-core'
              )
              ]
            ),
            Option(
              name: ['--conda-file', '--cf'],
              description: 'Path to local file containing a conda environment definition to use for the image',
              args: [
                Arg(
                name: 'conda-fil'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the model profile',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--environment-directory', '--ed'],
              description: 'Directory for Azure Machine Learning Environment for deployment. It is the same directory path as provided in \'az ml environment scaffold\' command',
              args: [
                Arg(
                name: 'environment-director'
              )
              ]
            ),
            Option(
              name: ['--entry-script', '--es'],
              description: 'Path to local file that contains the code to run for service (relative path from source_directory if one is provided)',
              args: [
                Arg(
                name: 'entry-scrip'
              )
              ]
            ),
            Option(
              name: ['--environment-name', '-e'],
              description: 'Name of Azure Machine Learning Environment for deployment',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
            ),
            Option(
              name: ['--environment-version', '--ev'],
              description: 'Version of an existing Azure Machine Learning Environment for deployment',
              args: [
                Arg(
                name: 'environment-versio'
              )
              ]
            ),
            Option(
              name: ['--memory-in-gb', '--gb'],
              description: 'Double value for maximum Memory to use when profiling',
              args: [
                Arg(
                name: 'memory-in-g'
              )
              ]
            ),
            Option(
              name: ['--inference-config-file', '--ic'],
              description: 'Path to a JSON or YAML file containing inference configuration',
              args: [
                Arg(
                name: 'inference-config-fil'
              )
              ]
            ),
            Option(
              name: ['--input-dataset-id', '--idi'],
              description: 'ID of the Tabular Dataset to be used as input for the profile',
              args: [
                Arg(
                name: 'input-dataset-i'
              )
              ]
            ),
            Option(
              name: ['--model', '-m'],
              description: 'The ID of the model to be deployed. Multiple models can be specified with additional -m arguments. Models need to be registered first',
              args: [
                Arg(
                name: 'mode'
              )
              ]
            ),
            Option(
              name: ['--model-metadata-file', '-f'],
              description: 'Path to a JSON file containing model registration metadata. Multiple models can be provided using multiple -f parameters',
              args: [
                Arg(
                name: 'model-metadata-fil'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Path to a JSON file where profile results metadata will be written. Used as input for model deployment',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--source-directory', '--sd'],
              description: 'Path to folders that contain all files to create the image',
              args: [
                Arg(
                name: 'source-director'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'register',
          description: 'Register a model to the workspace',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of model to register',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--asset-path',
              description: 'The cloud path where the experiement run stores the model file',
              args: [
                Arg(
                name: 'asset-pat'
              )
              ]
            ),
            Option(
              name: ['--cpu-cores', '--cc'],
              description: 'The default number of CPU cores to allocate for this model. Can be a decimal',
              args: [
                Arg(
                name: 'cpu-core'
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'Description of the model',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--experiment-name',
              description: 'The name of the experiment',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: ['--memory-gb', '--gb'],
              description: 'The default amount of memory (in GB) to allocate for this model. Can be a decimal',
              args: [
                Arg(
                name: 'memory-g'
              )
              ]
            ),
            Option(
              name: ['--gpu-cores', '--gc'],
              description: 'The default number of GPUs to allocate for this model',
              args: [
                Arg(
                name: 'gpu-core'
              )
              ]
            ),
            Option(
              name: '--model-framework',
              description: 'Framework of the model to register. Currently supported frameworks: TensorFlow, ScikitLearn, Onnx, Custom, Multi',
              args: [
                Arg(
                name: 'model-framewor'
              )
              ]
            ),
            Option(
              name: '--model-framework-version',
              description: 'Framework version of the model to register (e.g. 1.0.0, 2.4.1)',
              args: [
                Arg(
                name: 'model-framework-versio'
              )
              ]
            ),
            Option(
              name: ['--model-path', '-p'],
              description: 'Full path of the model file to register',
              args: [
                Arg(
                name: 'model-pat'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Path to a JSON file where model registration metadata will be written. Used as input for model deployment',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--property',
              description: 'Key/value property to add (e.g. key=value ). Multiple properties can be specified with multiple --property options',
              args: [
                Arg(
                name: 'propert'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--run-id', '-r'],
              description: 'The ID for the experiment run where model is registered from',
              args: [
                Arg(
                name: 'run-i'
              )
              ]
            ),
            Option(
              name: ['--run-metadata-file', '-f'],
              description: 'Path to a JSON file containing experiement run metadata',
              args: [
                Arg(
                name: 'run-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--sample-input-dataset-id',
              description: 'The ID for the sample input dataset',
              args: [
                Arg(
                name: 'sample-input-dataset-i'
              )
              ]
            ),
            Option(
              name: '--sample-output-dataset-id',
              description: 'The ID for the sample output dataset',
              args: [
                Arg(
                name: 'sample-output-dataset-i'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: '--tag',
              description: 'Key/value tag to add (e.g. key=value ). Multiple tags can be specified with multiple --tag options',
              args: [
                Arg(
                name: 'ta'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace to register this model with',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a model in the workspace',
          options: [

            Option(
              name: ['--model-id', '-i'],
              description: 'ID of model to show',
              args: [
                Arg(
                name: 'model-i'
              )
              ]
            ),
            Option(
              name: ['--model-name', '-n'],
              description: 'Name of model to show',
              args: [
                Arg(
                name: 'model-nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--run-id',
              description: 'If provided, will only show models with the specified Run ID',
              args: [
                Arg(
                name: 'run-i'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'If provided, will only show models with the specified name and version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing model to show',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a model in the workspace',
          options: [

            Option(
              name: ['--model-id', '-i'],
              description: 'ID of model',
              args: [
                Arg(
                name: 'model-i'
              )
              ]
            ),
            Option(
              name: '--add-property',
              description: 'Key/value property to add (e.g. key=value ). Multiple properties can be specified with multiple --add-property options',
              args: [
                Arg(
                name: 'add-propert'
              )
              ]
            ),
            Option(
              name: '--add-tag',
              description: 'Key/value tag to add (e.g. key=value ). Multiple tags can be specified with multiple --add-tag options',
              args: [
                Arg(
                name: 'add-ta'
              )
              ]
            ),
            Option(
              name: ['--cpu-cores', '--cc'],
              description: 'The default number of CPU cores to allocate for this model. Can be a decimal',
              args: [
                Arg(
                name: 'cpu-core'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description to update the model with. Will replace the current description',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--memory-gb', '--gb'],
              description: 'The default amount of memory (in GB) to allocate for this model. Can be a decimal',
              args: [
                Arg(
                name: 'memory-g'
              )
              ]
            ),
            Option(
              name: ['--gpu-cores', '--gc'],
              description: 'The default number of GPUs to allocate for this model',
              args: [
                Arg(
                name: 'gpu-core'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--remove-tag',
              description: 'Key of tag to remove. Multiple tags can be specified with multiple --remove-tag options',
              args: [
                Arg(
                name: 'remove-ta'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--sample-input-dataset-id',
              description: 'The ID for the sample input dataset',
              args: [
                Arg(
                name: 'sample-input-dataset-i'
              )
              ]
            ),
            Option(
              name: '--sample-output-dataset-id',
              description: 'The ID for the sample output dataset',
              args: [
                Arg(
                name: 'sample-output-dataset-i'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pipeline',
      description: 'Pipeline subgroup commands',
      subcommands: [

        Subcommand(
          name: 'clone',
          description: 'Generate yml definition describing the pipeline run, supported only for ModuleStep for now',
          options: [

            Option(
              name: ['--path', '-p'],
              description: 'File path to save pipeline yaml to',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--pipeline-run-id', '-i'],
              description: 'ID of the PipelineRun to clone (guid)',
              args: [
                Arg(
                name: 'pipeline-run-i'
              )
              ]
            ),
            Option(
              name: ['--output-file', '-f'],
              description: 'File to write output in JSON format',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'clone-draft',
          description: 'Create a pipeline draft from an existing pipeline',
          options: [

            Option(
              name: ['--experiment-name', '-e'],
              description: 'Experiment name of the specified PipelineRun',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: ['--pipeline-draft-id', '-i'],
              description: 'ID of the PipelineDraft to create PipelineDraft from',
              args: [
                Arg(
                name: 'pipeline-draft-i'
              )
              ]
            ),
            Option(
              name: ['--pipeline-id', '-p'],
              description: 'ID of the PublishedPipeline to create PipelineDraft from',
              args: [
                Arg(
                name: 'pipeline-i'
              )
              ]
            ),
            Option(
              name: ['--pipeline-run-id', '-r'],
              description: 'ID of the PipelineRun to create PipelineDraft from',
              args: [
                Arg(
                name: 'pipeline-run-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a pipeline from a yaml definition',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name to assign to the pipeline',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--pipeline-yaml', '-y'],
              description: 'YAML file which defines a pipeline',
              args: [
                Arg(
                name: 'pipeline-yam'
              )
              ]
            ),
            Option(
              name: ['--continue', '-c'],
              description: 'Boolean flag to allow a pipeline to continue executing after a step fails',
              args: [
                Arg(
                name: 'continu'
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'Description text of the pipeline',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--output-file', '-f'],
              description: 'File to write output in JSON format',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'Version string of the pipeline',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create-draft',
          description: 'Create a pipeline draft from a yml definition',
          options: [

            Option(
              name: ['--experiment_name', '-e'],
              description: 'Experiment name for the pipeline draft',
              args: [
                Arg(
                name: 'experiment_nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name to assign to the pipeline draft',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--pipeline-yaml', '-y'],
              description: 'YAML file which defines the pipeline draft',
              args: [
                Arg(
                name: 'pipeline-yam'
              )
              ]
            ),
            Option(
              name: ['--continue', '-c'],
              description: 'Boolean flag to allow a pipeline to continue executing after a step fails',
              args: [
                Arg(
                name: 'continu'
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'Description text of the pipeline draft',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'PipelineParameters for the draft with \'key=value\' syntax',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: ['--properties', '-p'],
              description: 'Properties for the draft with \'key=value\' syntax',
              args: [
                Arg(
                name: 'propertie'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--tags', '-t'],
              description: 'Tags for the draft with \'key=value\' syntax',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create-schedule',
          description: 'Create a schedule',
          options: [

            Option(
              name: ['--experiment-name', '-e'],
              description: 'Name of experiment',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of schedule',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--pipeline-id', '-i'],
              description: 'ID of the pipeline to create schedule (guid)',
              args: [
                Arg(
                name: 'pipeline-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--schedule-yaml', '-y'],
              description: 'Schedule YAML input',
              args: [
                Arg(
                name: 'schedule-yam'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete-draft',
          description: 'Delete a pipeline draft',
          options: [

            Option(
              name: ['--pipeline-draft-id', '-i'],
              description: 'ID of the PipelineDraft to delete (guid)',
              args: [
                Arg(
                name: 'pipeline-draft-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'disable',
          description: 'Disable a pipeline from running',
          options: [

            Option(
              name: ['--pipeline-id', '-i'],
              description: 'ID of the pipeline to disable (guid)',
              args: [
                Arg(
                name: 'pipeline-i'
              )
              ]
            ),
            Option(
              name: ['--output-file', '-f'],
              description: 'File to write output in JSON format',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'disable-schedule',
          description: 'Disable a schedule from running',
          options: [

            Option(
              name: ['--schedule-id', '-s'],
              description: 'ID of the schedule to show (guid)',
              args: [
                Arg(
                name: 'schedule-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enable a pipeline and allow it to run',
          options: [

            Option(
              name: ['--pipeline-id', '-i'],
              description: 'ID of the pipeline to enable (guid)',
              args: [
                Arg(
                name: 'pipeline-i'
              )
              ]
            ),
            Option(
              name: ['--output-file', '-f'],
              description: 'File to write output in JSON format',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'enable-schedule',
          description: 'Enable a schedule and allow it to run',
          options: [

            Option(
              name: ['--schedule-id', '-s'],
              description: 'ID of the schedule to show (guid)',
              args: [
                Arg(
                name: 'schedule-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Generate yml definition describing the pipeline',
          options: [

            Option(
              name: ['--path', '-p'],
              description: 'File path to save Pipeline yaml to',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--pipeline-draft-id', '-d'],
              description: 'ID of the PipelineDraft to get (guid)',
              args: [
                Arg(
                name: 'pipeline-draft-i'
              )
              ]
            ),
            Option(
              name: ['--pipeline-id', '-i'],
              description: 'ID of the Pipeline to get (guid)',
              args: [
                Arg(
                name: 'pipeline-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'last-pipeline-run',
          description: 'Show last pipeline run for a schedule',
          options: [

            Option(
              name: ['--schedule-id', '-s'],
              description: 'ID of the schedule to show (guid)',
              args: [
                Arg(
                name: 'schedule-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all pipelines and respective schedules in the workspace',
          options: [

            Option(
              name: ['--output-file', '-f'],
              description: 'File to write output in JSON format',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-drafts',
          description: 'List pipeline drafts in the workspace',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--tags', '-t'],
              description: 'Tags for a draft with \'key=value\' syntax',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-steps',
          description: 'List the step runs generated from a pipeline run',
          options: [

            Option(
              name: ['--run', '-r'],
              description: 'The runId of an experiment run',
              args: [
                Arg(
                name: 'ru'
              )
              ]
            ),
            Option(
              name: ['--output-file', '-f'],
              description: 'File to write output in JSON format',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'pipeline-runs-list',
          description: 'List pipeline runs generated from a schedule',
          options: [

            Option(
              name: ['--schedule-id', '-s'],
              description: 'ID of the schedule to show (guid)',
              args: [
                Arg(
                name: 'schedule-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'publish-draft',
          description: 'Publish a pipeline draft as a published pipeline',
          options: [

            Option(
              name: ['--pipeline-draft-id', '-i'],
              description: 'ID of the PipelineDraft to publish',
              args: [
                Arg(
                name: 'pipeline-draft-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of a pipeline and respective schedules',
          options: [

            Option(
              name: ['--pipeline-id', '-i'],
              description: 'ID of the pipeline to show (guid)',
              args: [
                Arg(
                name: 'pipeline-i'
              )
              ]
            ),
            Option(
              name: ['--output-file', '-f'],
              description: 'File to write output in JSON format',
              args: [
                Arg(
                name: 'output-fil'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-draft',
          description: 'Show details of a pipeline draft',
          options: [

            Option(
              name: ['--pipeline-draft-id', '-i'],
              description: 'ID of the PipelineDraft to show (guid)',
              args: [
                Arg(
                name: 'pipeline-draft-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-schedule',
          description: 'Show details of a schedule',
          options: [

            Option(
              name: ['--schedule-id', '-s'],
              description: 'ID of the schedule to show (guid)',
              args: [
                Arg(
                name: 'schedule-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'submit-draft',
          description: 'Submit a run from the pipeline draft',
          options: [

            Option(
              name: ['--pipeline-draft-id', '-i'],
              description: 'ID of the PipelineDraft to use to submit run',
              args: [
                Arg(
                name: 'pipeline-draft-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update-draft',
          description: 'Update a pipeline draft',
          options: [

            Option(
              name: ['--continue', '-c'],
              description: 'Boolean flag to allow a pipeline to continue executing after a step fails',
              args: [
                Arg(
                name: 'continu'
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'Description text of the pipeline draft',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--experiment_name', '-e'],
              description: 'Experiment name for the pipeline draft',
              args: [
                Arg(
                name: 'experiment_nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name to assign to the pipeline draft',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'PipelineParameters for the draft with \'key=value\' syntax',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: ['--pipeline-draft-id', '-i'],
              description: 'ID of the PipelineDraft to update',
              args: [
                Arg(
                name: 'pipeline-draft-i'
              )
              ]
            ),
            Option(
              name: ['--pipeline-yaml', '-y'],
              description: 'YAML file which defines the pipeline draft',
              args: [
                Arg(
                name: 'pipeline-yam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--tags', '-t'],
              description: 'Tags for the draft with \'key=value\' syntax',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update-schedule',
          description: 'Update a schedule',
          options: [

            Option(
              name: ['--schedule-id', '-s'],
              description: 'ID of the schedule to show (guid)',
              args: [
                Arg(
                name: 'schedule-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the schedule to show (guid)',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--schedule-yaml', '-y'],
              description: 'Schedule YAML input',
              args: [
                Arg(
                name: 'schedule-yam'
              )
              ]
            ),
            Option(
              name: ['--status', '-t'],
              description: 'Status of the schedule to show (guid)',
              args: [
                Arg(
                name: 'statu'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Commands for submitting, updating, and monitoring runs',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel run',
          options: [

            Option(
              name: ['--run', '-r'],
              description: 'The runId of an experiment run',
              args: [
                Arg(
                name: 'ru'
              )
              ]
            ),
            Option(
              name: ['--experiment-name', '-e'],
              description: 'Experiment name',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'download-logs',
          description: 'Download log files',
          options: [

            Option(
              name: ['--output-dir', '-d'],
              description: 'Output directory to download log files to',
              args: [
                Arg(
                name: 'output-di'
              )
              ]
            ),
            Option(
              name: ['--run', '-r'],
              description: 'The runId of an experiment run',
              args: [
                Arg(
                name: 'ru'
              )
              ]
            ),
            Option(
              name: ['--experiment-name', '-e'],
              description: 'Experiment name',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List runs',
          options: [

            Option(
              name: '--compute-target-name',
              description: 'The compute target name',
              args: [
                Arg(
                name: 'compute-target-nam'
              )
              ]
            ),
            Option(
              name: ['--experiment-name', '-e'],
              description: 'Experiment name',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: '--last',
              description: 'Fetch the latest N elements',
              args: [
                Arg(
                name: 'las'
              )
              ]
            ),
            Option(
              name: '--minimal',
              description: 'Flag to provide minimum properties for run output'
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--parent-run-id',
              description: 'Parent Run ID',
              args: [
                Arg(
                name: 'parent-run-i'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--pipeline-run-id',
              description: 'Pipeline Run ID',
              args: [
                Arg(
                name: 'pipeline-run-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Status of the run',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Completed'),
                  FigSuggestion(name: 'Failed'),
                  FigSuggestion(name: 'Finalizing'),
                  FigSuggestion(name: 'Preparing'),
                  FigSuggestion(name: 'Provisioning'),
                  FigSuggestion(name: 'Queued'),
                  FigSuggestion(name: 'Running'),
                  FigSuggestion(name: 'Starting')
                ]
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Tags for a run with \'key[=value]\' syntax',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'monitor-logs',
          description: 'Monitor the logs for an existing run',
          options: [

            Option(
              name: ['--run', '-r'],
              description: 'The runId of an experiment run',
              args: [
                Arg(
                name: 'ru'
              )
              ]
            ),
            Option(
              name: ['--experiment-name', '-e'],
              description: 'Experiment name',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'monitor-tensorboard',
          description: 'Monitor an existing run using tensorboard',
          options: [

            Option(
              name: ['--run', '-r'],
              description: 'The runId of an experiment run',
              args: [
                Arg(
                name: 'ru'
              )
              ]
            ),
            Option(
              name: ['--experiment-name', '-e'],
              description: 'Experiment name',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: '--local-directory',
              description: 'Local Directory to stage tensorboard files being monitored',
              args: [
                Arg(
                name: 'local-director'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show run',
          options: [

            Option(
              name: ['--run', '-r'],
              description: 'The runId of an experiment run',
              args: [
                Arg(
                name: 'ru'
              )
              ]
            ),
            Option(
              name: ['--experiment-name', '-e'],
              description: 'Experiment name',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'submit-hyperdrive',
          description: 'Submit a hyper parameter sweep using run config',
          options: [

            Option(
              name: '--hyperdrive-configuration-name',
              description: 'The full name of the hyperdrive configuration file. The file should be in a sub-folder of the directory specified by the path parameter',
              args: [
                Arg(
                name: 'hyperdrive-configuration-nam'
              )
              ]
            ),
            Option(
              name: '--async',
              description: 'Disable output streaming'
            ),
            Option(
              name: ['--conda-dependencies', '-d'],
              description: 'Override the default Conda dependencies file',
              args: [
                Arg(
                name: 'conda-dependencie'
              )
              ]
            ),
            Option(
              name: ['--target', '--ct'],
              description: 'The name of the compute target to use for the run',
              args: [
                Arg(
                name: 'targe'
              )
              ]
            ),
            Option(
              name: ['--experiment-name', '-e'],
              description: 'Experiment name',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--run-configuration-name', '-c'],
              description: 'Name (without extension) of a run configuration file. The file should be in a sub-folder of the directory specified by the path parameter',
              args: [
                Arg(
                name: 'run-configuration-nam'
              )
              ]
            ),
            Option(
              name: '--source-directory',
              description: 'A local directory containing source code files. Defaults to path if source directory is not provided',
              args: [
                Arg(
                name: 'source-director'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: '<USER_SCRIPT_AND_ARGUMENTS>',
            description: 'The run submit arguments, like script name and script arguments',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'submit-pipeline',
          description: 'Submit a pipeline for execution, from a published pipeline ID or pipeline YAML file',
          options: [

            Option(
              name: ['--datapaths', '-d'],
              description: 'Comma-separated list of name=datastore/path pairs for datapath parameter assignments',
              args: [
                Arg(
                name: 'datapath'
              )
              ]
            ),
            Option(
              name: ['--experiment-name', '-n'],
              description: 'Experiment name for run submission. If unspecified, use the pipeline name',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: ['--output_file', '-f'],
              description: 'File to write output in JSON format',
              args: [
                Arg(
                name: 'output_fil'
              )
              ]
            ),
            Option(
              name: ['--parameters', '-p'],
              description: 'Comma-separated list of name=value pairs for pipeline parameter assignments',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--pipeline-id', '-i'],
              description: 'ID of a pipeline to submit (guid)',
              args: [
                Arg(
                name: 'pipeline-i'
              )
              ]
            ),
            Option(
              name: ['--pipeline-yaml', '-y'],
              description: 'YAML file which defines a pipeline',
              args: [
                Arg(
                name: 'pipeline-yam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'submit-script',
          description: 'Submit a script for execution',
          options: [

            Option(
              name: '--async',
              description: 'Disable output streaming'
            ),
            Option(
              name: ['--conda-dependencies', '-d'],
              description: 'Override the default Conda dependencies file',
              args: [
                Arg(
                name: 'conda-dependencie'
              )
              ]
            ),
            Option(
              name: ['--target', '--ct'],
              description: 'The name of the compute target to use for the run',
              args: [
                Arg(
                name: 'targe'
              )
              ]
            ),
            Option(
              name: ['--experiment-name', '-e'],
              description: 'Experiment name',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--run-configuration-name', '-c'],
              description: 'Name (without extension) of a run configuration file. The file should be in a sub-folder of the directory specified by the path parameter',
              args: [
                Arg(
                name: 'run-configuration-nam'
              )
              ]
            ),
            Option(
              name: '--source-directory',
              description: 'A local directory containing source code files. Defaults to path if source directory is not provided',
              args: [
                Arg(
                name: 'source-director'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: '<USER_SCRIPT_AND_ARGUMENTS>',
            description: 'The run submit arguments, like script name and script arguments',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the run by adding tags',
          options: [

            Option(
              name: ['--run', '-r'],
              description: 'The runId of an experiment run',
              args: [
                Arg(
                name: 'ru'
              )
              ]
            ),
            Option(
              name: '--add-tag',
              description: 'Tag the entitiy with \'key[=value]\' syntax',
              args: [
                Arg(
                name: 'add-ta'
              )
              ]
            ),
            Option(
              name: ['--experiment-name', '-e'],
              description: 'Experiment name',
              args: [
                Arg(
                name: 'experiment-nam'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'service',
      description: 'Manage operationalized services',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a service from the workspace',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The service name to delete',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing the service to delete',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-access-token',
          description: 'Get a token to issue requests a service',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Service Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing the service to show',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-keys',
          description: 'Get keys to issue requests against a service',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Service Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing the service to show',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-logs',
          description: 'Get logs for a service',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Service Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--init', '-i'],
              description: 'Get logs of init container instead of the scoring container'
            ),
            Option(
              name: ['--num_lines', '-l'],
              description: 'Number of log lines to return from tail (default is 5000)',
              args: [
                Arg(
                name: 'num_line'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing the service to show',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List services in the workspace',
          options: [

            Option(
              name: ['--compute-type', '-c'],
              description: 'If provided, will only show services that have the specified compute type. (Options are \'ACI\', \'AKS\')',
              args: [
                Arg(
                name: 'compute-typ'
              )
              ]
            ),
            Option(
              name: '--image-digest',
              description: 'If provided, will only show services that have the specified image digest',
              args: [
                Arg(
                name: 'image-diges'
              )
              ]
            ),
            Option(
              name: '--model-id',
              description: 'If provided, will only show services that have the specified model id',
              args: [
                Arg(
                name: 'model-i'
              )
              ]
            ),
            Option(
              name: '--model-name',
              description: 'If provided, will only show services that have the specified model name',
              args: [
                Arg(
                name: 'model-nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--property',
              description: 'If provided, will filter based on the provided key/value (e.g. key, or key=value). Multiple properties can be specified with multiple --property options',
              args: [
                Arg(
                name: 'propert'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: '--tag',
              description: 'If provided, will filter based on the provided key/value (e.g. key, or key=value). Multiple tags can be specified with multiple --tag options',
              args: [
                Arg(
                name: 'ta'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing the services to list',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'regen-key',
          description: 'Regenerate keys for a service',
          options: [

            Option(
              name: ['--key', '-k'],
              description: 'Which key to regenerate, if regen is specified. Options: Primary, Secondary',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Service Name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--set-key', '-s'],
              description: 'Provide auth value for the specified key',
              args: [
                Arg(
                name: 'set-ke'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing the service to show',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'run',
          description: 'Run a service in the workspace',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The service name to score against',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--input-data', '-d'],
              description: 'The data to use for calling the web service',
              args: [
                Arg(
                name: 'input-dat'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing the service to run',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details for a service in the workspace',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the webservice to show',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing the service to show',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a service in the workspace',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The service name to update',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--add-property',
              description: 'Key/value property to add (e.g. key=value ). Multiple properties can be specified with multiple --add-property options',
              args: [
                Arg(
                name: 'add-propert'
              )
              ]
            ),
            Option(
              name: '--add-tag',
              description: 'Key/value tag to add (e.g. key=value ). Multiple tags can be specified with multiple --add-tag options',
              args: [
                Arg(
                name: 'add-ta'
              )
              ]
            ),
            Option(
              name: ['--auth-enabled', '--ae'],
              description: 'Whether or not to enable key auth for this Webservice. Defaults to False',
              args: [
                Arg(
                name: 'auth-enable'
              )
              ]
            ),
            Option(
              name: ['--enable-app-insights', '--ai'],
              description: 'Whether or not to enable AppInsights for this Webservice. Defaults to False',
              args: [
                Arg(
                name: 'enable-app-insight'
              )
              ]
            ),
            Option(
              name: ['--autoscale-refresh-seconds', '--ar'],
              description: 'How often the autoscaler should attempt to scale this Webservice. Defaults to 1',
              args: [
                Arg(
                name: 'autoscale-refresh-second'
              )
              ]
            ),
            Option(
              name: ['--autoscale-enabled', '--as'],
              description: 'Whether or not to enable autoscaling for this Webservice. Defaults to True if num_replicas is None',
              args: [
                Arg(
                name: 'autoscale-enable'
              )
              ]
            ),
            Option(
              name: ['--autoscale-target-utilization', '--at'],
              description: 'The target utilization (in percent out of 100) the autoscaler should attempt to maintain for this Webservice. Defaults to 70',
              args: [
                Arg(
                name: 'autoscale-target-utilizatio'
              )
              ]
            ),
            Option(
              name: ['--autoscale-max-replicas', '--ma'],
              description: 'The maximum number of containers to use when autoscaling this Webservice. Defaults to 10',
              args: [
                Arg(
                name: 'autoscale-max-replica'
              )
              ]
            ),
            Option(
              name: ['--autoscale-min-replicas', '--mi'],
              description: 'The minimum number of containers to use when autoscaling this Webservice. Defaults to 1',
              args: [
                Arg(
                name: 'autoscale-min-replica'
              )
              ]
            ),
            Option(
              name: ['--base-image', '--bi'],
              description: 'A custom image to be used as base image. If no base image is given then the base image will be used based off of given runtime parameter',
              args: [
                Arg(
                name: 'base-imag'
              )
              ]
            ),
            Option(
              name: ['--base-image-registry', '--ir'],
              description: 'Image registry that contains the base image',
              args: [
                Arg(
                name: 'base-image-registr'
              )
              ]
            ),
            Option(
              name: ['--cpu-cores', '--cc'],
              description: 'The number of cpu cores to allocate for this Webservice. Can be a decimal. Defaults to 0.1',
              args: [
                Arg(
                name: 'cpu-core'
              )
              ]
            ),
            Option(
              name: ['--cpu-cores-limit', '--ccl'],
              description: 'The max number of CPU cores this Webservice is allowed to use. Can be a decimal',
              args: [
                Arg(
                name: 'cpu-cores-limi'
              )
              ]
            ),
            Option(
              name: ['--conda-file', '--cf'],
              description: 'Path to local file containing a conda environment definition to use for the image',
              args: [
                Arg(
                name: 'conda-fil'
              )
              ]
            ),
            Option(
              name: ['--collect-model-data', '--md'],
              description: 'Whether or not to enable model data collection for this Webservice. Defaults to False',
              args: [
                Arg(
                name: 'collect-model-dat'
              )
              ]
            ),
            Option(
              name: '--compute-target',
              description: '(Preview) Specifies the compute target with AzureML extension installed to host migrated Kubernetes online endpoint and deployment',
              args: [
                Arg(
                name: 'compute-targe'
              )
              ]
            ),
            Option(
              name: ['--cuda-version', '--cv'],
              description: 'Version of CUDA to install for images that need GPU support. The GPU image must be used on Microsoft Azure Services such as Azure Container Instances, Azure Machine Learning Compute, Azure Virtual Machines, and Azure Kubernetes Service. Supported versions are 9.0, 9.1, and 10.0. If \'enable_gpu\' is set, this defaults to \'9.1\'',
              args: [
                Arg(
                name: 'cuda-versio'
              )
              ]
            ),
            Option(
              name: ['--deploy-config-file', '--dc'],
              description: 'Path to a JSON file containing deployment metadata',
              args: [
                Arg(
                name: 'deploy-config-fil'
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'Description of the service',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--dns-name-label', '--dn'],
              description: 'The dns name for this Webservice',
              args: [
                Arg(
                name: 'dns-name-labe'
              )
              ]
            ),
            Option(
              name: ['--extra-docker-file-steps', '--ds'],
              description: 'Path to local file containing additional Docker steps to run when setting up image',
              args: [
                Arg(
                name: 'extra-docker-file-step'
              )
              ]
            ),
            Option(
              name: ['--environment-directory', '--ed'],
              description: 'Directory for Azure Machine Learning Environment for deployment. It is the same directory path as provided in \'az ml environment scaffold\' command',
              args: [
                Arg(
                name: 'environment-director'
              )
              ]
            ),
            Option(
              name: ['--enable-gpu', '--eg'],
              description: 'Whether or not to enable GPU support in the image. The GPU image must be used on Microsoft Azure Services such as Azure Container Instances, Azure Machine Learning Compute, Azure Virtual Machines, and Azure Kubernetes Service. Defaults to False',
              args: [
                Arg(
                name: 'enable-gp'
              )
              ]
            ),
            Option(
              name: ['--entry-script', '--es'],
              description: 'Path to local file that contains the code to run for service (relative path from source_directory if one is provided)',
              args: [
                Arg(
                name: 'entry-scrip'
              )
              ]
            ),
            Option(
              name: ['--environment-name', '-e'],
              description: 'Name of Azure Machine Learning Environment for deployment',
              args: [
                Arg(
                name: 'environment-nam'
              )
              ]
            ),
            Option(
              name: ['--environment-version', '--ev'],
              description: 'Version of an existing Azure Machine Learning Environment for deployment',
              args: [
                Arg(
                name: 'environment-versio'
              )
              ]
            ),
            Option(
              name: ['--failure-threshold', '--ft'],
              description: 'When a Pod starts and the liveness probe fails, Kubernetes will try --failure-threshold times before giving up. Defaults to 3. Minimum value is 1',
              args: [
                Arg(
                name: 'failure-threshol'
              )
              ]
            ),
            Option(
              name: ['--memory-gb', '--gb'],
              description: 'The amount of memory (in GB) to allocate for this Webservice. Can be a decimal',
              args: [
                Arg(
                name: 'memory-g'
              )
              ]
            ),
            Option(
              name: ['--memory-gb-limit', '--gbl'],
              description: 'The max amount of memory (in GB) this Webservice is allowed to use. Can be a decimal',
              args: [
                Arg(
                name: 'memory-gb-limi'
              )
              ]
            ),
            Option(
              name: ['--gpu-cores', '--gc'],
              description: 'The number of gpu cores to allocate for this Webservice. Default is 1',
              args: [
                Arg(
                name: 'gpu-core'
              )
              ]
            ),
            Option(
              name: ['--inference-config-file', '--ic'],
              description: 'Path to a JSON or YAML file containing inference configuration',
              args: [
                Arg(
                name: 'inference-config-fil'
              )
              ]
            ),
            Option(
              name: ['--initial-delay-seconds', '--id'],
              description: 'Number of seconds after the container has started before liveness probes are initiated. Defaults to 310',
              args: [
                Arg(
                name: 'initial-delay-second'
              )
              ]
            ),
            Option(
              name: '--is-migration',
              description: '(Preview) Whether or not to migrate AKS web service to Kubernetes online endpoint and deployment. Defaults to False',
              args: [
                Arg(
                name: 'is-migratio'
              )
              ]
            ),
            Option(
              name: ['--primary-key', '--kp'],
              description: 'A primary auth key to use for this Webservice',
              args: [
                Arg(
                name: 'primary-ke'
              )
              ]
            ),
            Option(
              name: ['--secondary-key', '--ks'],
              description: 'A secondary auth key to use for this Webservice',
              args: [
                Arg(
                name: 'secondary-ke'
              )
              ]
            ),
            Option(
              name: ['--location', '--lo'],
              description: 'The Azure region to deploy this Webservice to. If not specified the Workspace location will be used. More details on available regions can be found here: https://azure.microsoft.com/en-us/global-infrastructure/services/?regions=all&products=container-instances',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--max-request-wait-time', '--mr'],
              description: 'The maximum amount of time a request will stay in the queue (in milliseconds) before returning a 503 error. Defaults to 500',
              args: [
                Arg(
                name: 'max-request-wait-tim'
              )
              ]
            ),
            Option(
              name: ['--model', '-m'],
              description: 'The ID of the model to be deployed. Multiple models can be specified with additional -m arguments. Models need to be registered first',
              args: [
                Arg(
                name: 'mode'
              )
              ]
            ),
            Option(
              name: ['--model-metadata-file', '-f'],
              description: 'Path to a JSON file containing model registration metadata. Multiple models can be provided using multiple -f parameters',
              args: [
                Arg(
                name: 'model-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Flag to not wait for asynchronous calls',
              args: [
                Arg(
                name: 'no-wai'
              )
              ]
            ),
            Option(
              name: ['--num-replicas', '--nr'],
              description: 'The number of containers to allocate for this Webservice. No default, if this parameter is not set then the autoscaler is enabled by default',
              args: [
                Arg(
                name: 'num-replica'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a project folder. Default: current directory',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--period-seconds', '--ps'],
              description: 'How often (in seconds) to perform the liveness probe. Default to 10 seconds. Minimum value is 1',
              args: [
                Arg(
                name: 'period-second'
              )
              ]
            ),
            Option(
              name: ['--port', '--po'],
              description: 'The local port on which to expose the service\'s HTTP endpoint',
              args: [
                Arg(
                name: 'por'
              )
              ]
            ),
            Option(
              name: '--remove-tag',
              description: 'Key of tag to remove. Multiple tags can be specified with multiple --remove-tag options',
              args: [
                Arg(
                name: 'remove-ta'
              )
              ]
            ),
            Option(
              name: ['--replica-max-concurrent-requests', '--rm'],
              description: 'The number of maximum concurrent requests per node to allow for this Webservice. Defaults to 1',
              args: [
                Arg(
                name: 'replica-max-concurrent-request'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group corresponding to the provided workspace',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--runtime', '--rt'],
              description: 'Which runtime to use for image. Current supported runtimes are \'spark-py\' and \'python\'spark-py|python|python-slim',
              args: [
                Arg(
                name: 'runtim'
              )
              ]
            ),
            Option(
              name: ['--ssl-cname', '--sc'],
              description: 'The cname for if SSL is enabled. Only applicable when updating an ACI service',
              args: [
                Arg(
                name: 'ssl-cnam'
              )
              ]
            ),
            Option(
              name: ['--scoring-timeout-ms', '--tm'],
              description: 'A timeout to enforce for scoring calls to this Webservice. Defaults to 60000',
              args: [
                Arg(
                name: 'scoring-timeout-m'
              )
              ]
            ),
            Option(
              name: ['--source-directory', '--sd'],
              description: 'Path to folders that contain all files to create the image',
              args: [
                Arg(
                name: 'source-director'
              )
              ]
            ),
            Option(
              name: ['--ssl-enabled', '--se'],
              description: 'Whether or not to enable SSL for this Webservice. Defaults to False',
              args: [
                Arg(
                name: 'ssl-enable'
              )
              ]
            ),
            Option(
              name: ['--ssl-key-pem-file', '--sk'],
              description: 'The key file needed if SSL is enabled',
              args: [
                Arg(
                name: 'ssl-key-pem-fil'
              )
              ]
            ),
            Option(
              name: ['--ssl-cert-pem-file', '--sp'],
              description: 'The cert file needed if SSL is enabled',
              args: [
                Arg(
                name: 'ssl-cert-pem-fil'
              )
              ]
            ),
            Option(
              name: ['--success-threshold', '--st'],
              description: 'Minimum consecutive successes for the liveness probe to be considered successful after having failed. Defaults to 1. Minimum value is 1',
              args: [
                Arg(
                name: 'success-threshol'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--timeout-seconds', '--ts'],
              description: 'Number of seconds after which the liveness probe times out. Defaults to 2 second. Minimum value is 1',
              args: [
                Arg(
                name: 'timeout-second'
              )
              ]
            ),
            Option(
              name: '--token-auth-enabled',
              description: 'Whether or not to enable token auth for this Webservice. Only available for AKS web services. Defaults to False',
              args: [
                Arg(
                name: 'token-auth-enable'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Name of the workspace containing the service to update',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '-v',
              description: 'Verbosity flag',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'workspace',
      description: 'Workspace subgroup commands',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a workspace',
          options: [

            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--adb-workspace',
              description: 'Adb Workspace to be linked with this workspace',
              args: [
                Arg(
                name: 'adb-workspac'
              )
              ]
            ),
            Option(
              name: '--application-insights',
              description: 'Application Insights to be associated with this workspace',
              args: [
                Arg(
                name: 'application-insight'
              )
              ]
            ),
            Option(
              name: '--cmk-keyvault',
              description: 'The key vault containing the customer managed key in the Azure resource ID format',
              args: [
                Arg(
                name: 'cmk-keyvaul'
              )
              ]
            ),
            Option(
              name: '--container-registry',
              description: 'Container Registry to be associated with this workspace',
              args: [
                Arg(
                name: 'container-registr'
              )
              ]
            ),
            Option(
              name: '--exist-ok',
              description: 'Do not fail if workspace exists'
            ),
            Option(
              name: ['--friendly-name', '-f'],
              description: 'Friendly name for this workspace',
              args: [
                Arg(
                name: 'friendly-nam'
              )
              ]
            ),
            Option(
              name: '--hbi-workspace',
              description: 'Specifies whether the customer data is of High Business Impact(HBI), i.e., contains sensitive business information'
            ),
            Option(
              name: '--keyvault',
              description: 'Key Vault to be associated with this workspace',
              args: [
                Arg(
                name: 'keyvaul'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location for resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--pe-auto-approval',
              description: 'Whether private endpoint connections to the workspace resource via a private link should be auto approved'
            ),
            Option(
              name: '--pe-name',
              description: 'Name of the workspace private endpoint. Use this parameter to restrict workspace access to private networks, via a private endpoint',
              args: [
                Arg(
                name: 'pe-nam'
              )
              ]
            ),
            Option(
              name: '--pe-resource-group',
              description: 'Name of the existing resource group to create the workspace private endpoint in. The vnet should be in the same resource group. If not specified, the resource group of the workspace will be used',
              args: [
                Arg(
                name: 'pe-resource-grou'
              )
              ]
            ),
            Option(
              name: '--pe-subnet-name',
              description: 'Name of the existing subnet to create the workspace private endpoint in',
              args: [
                Arg(
                name: 'pe-subnet-nam'
              )
              ]
            ),
            Option(
              name: '--pe-subscription-id',
              description: 'Id of the existing subscription to create the workspace private endpoint in. The vnet should be in the same subscription. If not specified, the subscription Id of the workspace will be used',
              args: [
                Arg(
                name: 'pe-subscription-i'
              )
              ]
            ),
            Option(
              name: '--pe-vnet-name',
              description: 'Name of the existing vnet to create the workspace private endpoint in',
              args: [
                Arg(
                name: 'pe-vnet-nam'
              )
              ]
            ),
            Option(
              name: '--primary-user-assigned-identity',
              description: 'The resourceId of the user assigned identity that used to represent workspace identity',
              args: [
                Arg(
                name: 'primary-user-assigned-identit'
              )
              ]
            ),
            Option(
              name: '--resource-cmk-uri',
              description: 'The key URI of the customer managed key to encrypt the data at rest',
              args: [
                Arg(
                name: 'resource-cmk-ur'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'SKU/edition of a workspace -can be a \'basic\' workspace or a feature rich \'enterprise\' workspace',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--storage-account',
              description: 'Storage account to be associated with this workspace',
              args: [
                Arg(
                name: 'storage-accoun'
              )
              ]
            ),
            Option(
              name: '--system_datastores_auth_mode',
              description: 'Determines whether or not to use credentials for the system datastores of the workspace \'workspaceblobstore\' and \'workspacefilestore\'. The default value is \'accessKey\', in which case, the workspace will create the system datastores with credentials. If set to \'identity\', the workspace will create the system datastores with no credentials',
              args: [
                Arg(
                name: 'system_datastores_auth_mod'
              )
              ]
            ),
            Option(
              name: ['--tags', '-t'],
              description: 'Tags associated with this workspace with \'key=value\' syntax',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--user-assigned-identity-for-cmk-encryption',
              description: 'The resourceId of the user assigned identity that needs to be used to access the encryption key',
              args: [
                Arg(
                name: 'user-assigned-identity-for-cmk-encryptio'
              )
              ]
            ),
            Option(
              name: ['--v1-legacy-mode', '-v'],
              description: 'Prevent using v2 API service on public Azure Resource Manager if you set this parameter true. Learn more at aka.ms/amlv2network',
              args: [
                Arg(
                name: 'v1-legacy-mod'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Create a resource group for this workspace'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a workspace',
          options: [

            Option(
              name: '--all-resources',
              description: 'Deletes resources which this workspace depends on like storage, acr, kv and app insights'
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the workspace deletion to complete'
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'diagnose',
          description: 'Diagnose workspace setup problems',
          options: [

            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List workspaces',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-keys',
          description: 'List workspace keys for dependent resources such as storage, acr, and app insights',
          options: [

            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'share',
          description: 'Share a workspace with another user with a given role',
          options: [

            Option(
              name: '--role',
              description: 'Role to assign to this user',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: '--user',
              description: 'User with whom to share this workspace',
              args: [
                Arg(
                name: 'use'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show a workspace',
          options: [

            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'sync-keys',
          description: 'Sync workspace keys for dependent resources such as storage, acr, and app insights',
          options: [

            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a workspace',
          options: [

            Option(
              name: '--allow-public-access',
              description: 'Allow public access to private link workspace',
              args: [
                Arg(
                name: 'allow-public-acces'
              )
              ]
            ),
            Option(
              name: ['--description', '-d'],
              description: 'Description of this workspace',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: ['--friendly-name', '-f'],
              description: 'Friendly name',
              args: [
                Arg(
                name: 'friendly-nam'
              )
              ]
            ),
            Option(
              name: '--image-build-compute',
              description: 'Compute target for image build',
              args: [
                Arg(
                name: 'image-build-comput'
              )
              ]
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--primary-user-assigned-identity',
              description: 'The resourceId of the user assigned identity that used to represent workspace identity',
              args: [
                Arg(
                name: 'primary-user-assigned-identit'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Tags associated with this workspace with \'key=value\' syntax',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: ['--v1-legacy-mode', '-v'],
              description: 'Prevent using v2 API service on public Azure Resource Manager if you set this parameter true. Learn more at aka.ms/amlv2network',
              args: [
                Arg(
                name: 'v1-legacy-mod'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update-dependencies',
          description: 'Update workspace dependent resources',
          options: [

            Option(
              name: '--acr',
              description: 'The arm id of the container registry that you want to update this workspace with',
              args: [
                Arg(
                name: 'ac'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Force update dependent resources without user\'s confirmation'
            ),
            Option(
              name: ['--output-metadata-file', '-t'],
              description: 'Provide an optional output file location for structured object output',
              args: [
                Arg(
                name: 'output-metadata-fil'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to a root directory for run configuration files',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription-id',
              description: 'Specifies the subscription Id',
              args: [
                Arg(
                name: 'subscription-i'
              )
              ]
            ),
            Option(
              name: ['--workspace-name', '-w'],
              description: 'Workspace name',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'private-endpoint',
          description: 'Workspace private endpoint subgroup commands',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add private endpoint to a workspace',
              options: [

                Option(
                  name: ['--output-metadata-file', '-t'],
                  description: 'Provide an optional output file location for structured object output',
                  args: [
                    Arg(
                    name: 'output-metadata-fil'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a root directory for run configuration files',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: '--pe-auto-approval',
                  description: 'Whether private endpoint connections to the workspace resource via a private link should be auto approved'
                ),
                Option(
                  name: '--pe-location',
                  description: 'Location of the workspace private endpoint. If not specified it will be the same location of the workspace',
                  args: [
                    Arg(
                    name: 'pe-locatio'
                  )
                  ]
                ),
                Option(
                  name: '--pe-name',
                  description: 'Name of the workspace private endpoint. Use this parameter to restrict workspace access to private networks, via a private endpoint',
                  args: [
                    Arg(
                    name: 'pe-nam'
                  )
                  ]
                ),
                Option(
                  name: '--pe-resource-group',
                  description: 'Name of the existing resource group to create the workspace private endpoint in. The vnet should be in the same resource group. If not specified, the resource group of the workspace will be used',
                  args: [
                    Arg(
                    name: 'pe-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--pe-subnet-name',
                  description: 'Name of the existing subnet to create the workspace private endpoint in',
                  args: [
                    Arg(
                    name: 'pe-subnet-nam'
                  )
                  ]
                ),
                Option(
                  name: '--pe-subscription-id',
                  description: 'Id of the existing subscription to create the workspace private endpoint in. The vnet should be in the same subscription. If not specified, the subscription Id of the workspace will be used',
                  args: [
                    Arg(
                    name: 'pe-subscription-i'
                  )
                  ]
                ),
                Option(
                  name: '--pe-vnet-name',
                  description: 'Name of the existing vnet to create the workspace private endpoint in',
                  args: [
                    Arg(
                    name: 'pe-vnet-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group name',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Tags associated with this private endpoint with \'key=value\' syntax',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the specified private endpoint Connection in the workspace',
              options: [

                Option(
                  name: ['--output-metadata-file', '-t'],
                  description: 'Provide an optional output file location for structured object output',
                  args: [
                    Arg(
                    name: 'output-metadata-fil'
                  )
                  ]
                ),
                Option(
                  name: '--pe-connection-name',
                  description: 'The name of the Private EndPoint Connection',
                  args: [
                    Arg(
                    name: 'pe-connection-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group name',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all private endpoints in a workspace',
              options: [

                Option(
                  name: ['--output-metadata-file', '-t'],
                  description: 'Provide an optional output file location for structured object output',
                  args: [
                    Arg(
                    name: 'output-metadata-fil'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Path to a root directory for run configuration files',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource group name',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription-id',
                  description: 'Specifies the subscription Id',
                  args: [
                    Arg(
                    name: 'subscription-i'
                  )
                  ]
                ),
                Option(
                  name: ['--workspace-name', '-w'],
                  description: 'Workspace name',
                  args: [
                    Arg(
                    name: 'workspace-nam'
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
