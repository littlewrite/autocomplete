// AI-generated from TypeScript source: k3d.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

/// K3D 集群生成器
final FigGenerator ClusterGenerator = FigGenerator(
  script: ['k3d', 'cluster', 'list', '--no-headers'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((line) => line.trim().isNotEmpty)
        .map((line) {
          final parts = line.split(RegExp(r'\s+'));
          if (parts.length < 3) return null;

          final name = parts[0];
          final servers = parts[1];
          final agents = parts[2];

          return FigSuggestion(
            name: name,
            icon: 'fig://icon?type=kubernetes',
            description: 'Cluster with $servers server(s), $agents agent(s)',
          );
        })
        .where((suggestion) => suggestion != null)
        .cast<FigSuggestion>()
        .toList();
  },
);

/// SHELL 补全列表
final List<FigSuggestion> shellCompletions = [
  FigSuggestion(
    name: 'bash',
    description: 'Bash shell',
    icon: '💻',
  ),
  FigSuggestion(
    name: 'zsh',
    description: 'Zsh shell',
    icon: '💻',
  ),
  FigSuggestion(
    name: 'fish',
    description: 'Fish shell',
    icon: '🐟',
  ),
  FigSuggestion(
    name: 'powershell',
    description: 'Powershell',
    icon: '💻',
  ),
];

/// Docker 镜像生成器
final FigGenerator DockerImageGenerator = FigGenerator(
  script: ['docker', 'image', 'ls', '--format', '{{.Repository}}:{{.Tag}}'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((image) => image.trim().isNotEmpty)
        .map((image) => FigSuggestion(
              name: image,
              icon: 'fig://icon?type=docker',
              description: 'Docker Image',
            ))
        .toList();
  },
);

/// K3D 节点生成器
final FigGenerator NodeGenerator = FigGenerator(
  script: ['k3d', 'node', 'list', '--no-headers'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((line) => line.trim().isNotEmpty)
        .map((line) {
          final parts = line.split(RegExp(r'\s+'));
          if (parts.length < 3) return null;

          final name = parts[0];
          final role = parts[1];
          final cluster = parts[2];

          return FigSuggestion(
            name: name,
            icon: 'fig://icon?type=kubernetes',
            description: '$role node of cluster $cluster',
          );
        })
        .where((suggestion) => suggestion != null)
        .cast<FigSuggestion>()
        .toList();
  },
);

/// K3D 注册表生成器
final FigGenerator RegistryGenerator = FigGenerator(
  script: ['k3d', 'registry', 'list', '--no-headers'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((line) => line.trim().isNotEmpty)
        .map((line) {
          final parts = line.split(RegExp(r'\s+'));
          if (parts.length < 2) return null;

          final name = parts[0];
          final cluster = parts[1];

          return FigSuggestion(
            name: name,
            description: 'Registry $name of cluster $cluster',
            icon: '🏢', // 注册表图标
          );
        })
        .where((suggestion) => suggestion != null)
        .cast<FigSuggestion>()
        .toList();
  },
);

final List<FigSuggestion> ShellCompletions = [
  FigSuggestion(name: 'bash', description: 'Bash shell'),
  FigSuggestion(name: 'zsh', description: 'Zsh shell'),
  FigSuggestion(name: 'fish', description: 'Fish shell'),
  FigSuggestion(name: 'powershell', description: 'Powershell')
];

/// Completion spec for `k3d` CLI
final FigSpec k3dSpec = FigSpec(
    name: 'k3d',
    description: 'K3d is a lightweight wrapper to run k3s in Docker',
    subcommands: [
      Subcommand(
          name: 'cluster',
          description: 'Manage k3s clusters',
          subcommands: [
            Subcommand(
                name: 'create',
                description: 'Create a new k3s cluster',
                args: [
                  Arg(
                      name: 'cluster name',
                      description: 'Name of the cluster to create')
                ],
                options: [
                  Option(
                      name: ['-a', '--agents'],
                      description: 'Number of agents to create',
                      args: [
                        Arg(
                            name: 'number of agents',
                            description: 'Number of agents to create')
                      ]),
                  Option(
                      name: '--agents-memory',
                      description: 'Memory limit imposed on the agents nodes',
                      args: [
                        Arg(
                            name: 'memory limit',
                            description:
                                'Memory limit imposed on the agents nodes')
                      ]),
                  Option(
                      name: '--api-port',
                      description:
                          'Specify the Kubernetes API server port exposed on the LoadBalancer',
                      args: [
                        Arg(
                            name: 'port',
                            description:
                                'Specify the Kubernetes API server port exposed on the LoadBalancer')
                      ]),
                  Option(
                      name: ['-c', '--config'],
                      description: 'Path of a config file to use',
                      args: [
                        Arg(
                            name: 'path',
                            description: 'Path of a config file to use')
                      ]),
                  Option(
                      name: ['-e', '--env'],
                      description: 'Add environment variables to nodes',
                      args: [
                        Arg(
                            name: 'environment variables',
                            description: 'Add environment variables to nodes')
                      ]),
                  Option(
                      name: '--gpus',
                      description:
                          'GPU devices to add to the cluster node containers',
                      args: [
                        Arg(
                            name: 'devices',
                            description:
                                'GPU devices to add to the cluster node containers')
                      ]),
                  Option(
                      name: ['-h', '--help'], description: 'Help for create'),
                  Option(
                      name: '--host-alias',
                      description: 'Add ip:host[,host,...] mappings',
                      args: [
                        Arg(
                            name: 'ip:host[,host,...]',
                            description: 'Add ip:host[,host,...] mappings')
                      ]),
                  Option(
                      name: '--host-pid-mode',
                      description:
                          'Enable host pid mode of server(s) and agent(s)'),
                  Option(
                      name: ['-i', '--image'],
                      description:
                          'Specify k3s image that you want to use for the nodes',
                      args: [
                        Arg(
                            name: 'image',
                            description:
                                'Specify k3s image that you want to use for the nodes')
                      ]),
                  Option(
                      name: '--k3s-arg',
                      description: 'Additional args passed to k3s command',
                      args: [
                        Arg(
                            name: 'ARG@NODEFILTER[;@NODEFILTER]',
                            description:
                                'Additional args passed to k3s command')
                      ]),
                  Option(
                      name: '--k3s-node-label',
                      description: 'Add label to k3s node',
                      args: [
                        Arg(
                            name: 'KEY[=VALUE][@NODEFILTER[;NODEFILTER...]]',
                            description: 'Add label to k3s node')
                      ]),
                  Option(
                      name: '--kubeconfig-switch-context',
                      description:
                          'Directly switch the default kubeconfig\'s current-context to the new cluster\'s context (requires --kubeconfig-update-default) (default true)'),
                  Option(
                      name: '--kubeconfig-update-default',
                      description:
                          'Directly update the default kubeconfig with the new cluster\'s context (default true)'),
                  Option(
                      name: '--lb-config-override',
                      description:
                          'Use dotted YAML path syntax to override nginx loadbalancer settings',
                      args: [Arg(name: 'path')]),
                  Option(
                      name: '--network',
                      description: 'Specify the docker network to use',
                      args: [
                        Arg(
                            name: 'network',
                            description: 'Specify the docker network to use')
                      ]),
                  Option(
                      name: '--no-image-volume',
                      description:
                          'Don\'t create a volume for the container\'s root filesystem'),
                  Option(
                      name: '--no-lb',
                      description:
                          'Don\'t create a loadbalancer for the cluster'),
                  Option(
                      name: '--no-rollback',
                      description:
                          'Don\'t rollback changes if cluster creation failed'),
                  Option(
                      name: ['-p', '--port'],
                      description:
                          'Map ports from the node containers (via the serverlb) to the host',
                      args: [
                        Arg(
                            name: 'port',
                            description:
                                'Map ports from the node containers (via the serverlb) to the host')
                      ]),
                  Option(
                      name: '--registry-config',
                      description:
                          'Specify path to an extra registries.yaml file',
                      args: [
                        Arg(
                            name: 'path',
                            description:
                                'Specify path to an extra registries.yaml file')
                      ]),
                  Option(
                      name: '--registry-create',
                      description:
                          'Create a k3d-managed registry and connect it to the cluster (Format: NAME[:HOST][:HOSTPORT] - Example: `k3d cluster create --registry-create mycluster-registry',
                      args: [
                        Arg(
                            name: 'NAME[:HOST][:HOSTPORT]',
                            description:
                                'Create a k3d-managed registry and connect it to the cluster (Format: NAME[:HOST][:HOSTPORT] - Example: `k3d cluster create --registry-create mycluster-registry')
                      ]),
                  Option(
                      name: '--registry-use',
                      description:
                          'Connect to one or more k3d-managed registries running locally',
                      args: [Arg(name: 'NAME[:HOST][:HOSTPORT]')]),
                  Option(
                      name: '--runtime-label',
                      description:
                          'Add label to container runtime (Format: KEY[=VALUE][@NODEFILTER[;NODEFILTER...]] - Example: `k3d cluster create --agents 2 --runtime-label "my.label@agent:0,1" --runtime-label "other.label=somevalue@server:0"`'),
                  Option(
                      name: ['-s', '--servers'],
                      description:
                          'Specify how many servers you want to create',
                      args: [
                        Arg(
                            name: 'int',
                            description:
                                'Specify how many servers you want to create')
                      ]),
                  Option(
                      name: '--servers-memory',
                      description:
                          'Memory limit imposed on the server nodes [From docker]',
                      args: [
                        Arg(
                            name: 'string',
                            description:
                                'Memory limit imposed on the server nodes [From docker]')
                      ]),
                  Option(
                      name: '--subnet',
                      description:
                          '[Experimental: IPAM] Define a subnet for the newly created container network',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--timeout',
                      description:
                          'Rollback changes if cluster couldn\'t be created in specified duration',
                      args: [
                        Arg(
                            name: 'duration',
                            description:
                                'Rollback changes if cluster couldn\'t be created in specified duration')
                      ]),
                  Option(
                      name: '--token',
                      description:
                          'Specify a cluster token. By default, we generate one',
                      args: [
                        Arg(
                            name: 'string',
                            description:
                                'Specify a cluster token. By default, we generate one')
                      ]),
                  Option(
                      name: ['-v', '--volume'],
                      description: 'Mount volumes into the nodes',
                      args: [
                        Arg(
                            name: '[SOURCE:]DEST[@NODEFILTER[;NODEFILTER...]]',
                            description: 'Mount volumes into the nodes')
                      ]),
                  Option(
                      name: '--wait',
                      description:
                          'Wait for the server(s) to be ready before returning')
                ]),
            Subcommand(
                name: ['delete', 'del', 'rm'],
                description: 'Delete a cluster',
                args: [
                  Arg(
                      name: 'cluster',
                      description: 'Cluster to delete',
                      generators: ClusterGenerator)
                ],
                options: [
                  Option(
                      name: ['-a', '--all'],
                      description: 'Delete all clusters'),
                  Option(
                      name: ['-c', '--config'],
                      description: 'Path of a config file to use',
                      args: [
                        Arg(
                            name: 'path',
                            description: 'Path of a config file to use')
                      ])
                ]),
            Subcommand(
                name: ['edit', 'update'],
                description: 'Edit a cluster',
                args: [
                  Arg(
                      name: 'cluster',
                      description: 'Cluster to edit',
                      generators: ClusterGenerator)
                ],
                options: [
                  Option(
                      name: '--port-add',
                      description: 'Map ports from the node containers')
                ]),
            Subcommand(
                name: ['list', 'ls', 'get'],
                description: 'List clusters',
                args: [
                  Arg(
                      name: 'cluster',
                      description: 'Cluster to list',
                      generators: ClusterGenerator)
                ],
                options: [
                  Option(
                      name: '--no-headers',
                      description: 'Don\'t print headers'),
                  Option(
                      name: ['-o', '--output'],
                      description: 'Output format',
                      args: [
                        Arg(
                            name: 'string',
                            description: 'Output format',
                            suggestions: [
                              FigSuggestion(name: 'json'),
                              FigSuggestion(name: 'yaml')
                            ])
                      ]),
                  Option(
                      name: '--token', description: 'Print k3s cluster token')
                ]),
            Subcommand(name: 'start', description: 'Start a cluster', args: [
              Arg(
                  name: 'cluster',
                  description: 'Cluster to start',
                  generators: ClusterGenerator)
            ], options: [
              Option(name: ['a', '--all'], description: 'Start all clusters'),
              Option(
                  name: '--timeout',
                  description:
                      'Maximum waiting time for \'--wait\' before canceling/returning',
                  args: [
                    Arg(
                        name: 'duration',
                        description:
                            'Maximum waiting time for \'--wait\' before canceling/returning')
                  ]),
              Option(
                  name: '--wait',
                  description:
                      'Wait for the server(s) (and loadbalancer) to be ready before returning')
            ]),
            Subcommand(name: 'stop', description: 'Stop a cluster', args: [
              Arg(
                  name: 'cluster',
                  description: 'Cluster to stop',
                  generators: ClusterGenerator)
            ], options: [
              Option(name: ['-a', '--all'], description: 'Stop all clusters')
            ])
          ]),
      Subcommand(
          name: 'completion',
          description: 'Generate shell completion scripts',
          args: [
            Arg(
                name: 'shell',
                description: 'Shell to generate completion script for',
                suggestions: ShellCompletions)
          ]),
      Subcommand(
          name: 'config',
          description: 'Manage k3d config',
          subcommands: [
            Subcommand(
                name: ['init', 'create'],
                description: 'Create a new config file',
                options: [
                  Option(
                      name: ['-f', '--force'],
                      description: 'Force overwrite of target file'),
                  Option(
                      name: ['-o', '--output'],
                      description:
                          'Write a default k3d config (default "k3d-default.yaml")')
                ]),
            Subcommand(
                name: ['migrate', 'update'],
                description: 'Migrate a config file to the latest version')
          ]),
      Subcommand(name: 'image', description: 'Manage k3d images', subcommands: [
        Subcommand(
            name: ['import', 'load'],
            description: 'Import image(s) from docker into k3d cluster(s)',
            args: [
              Arg(
                  name: 'image',
                  description: 'Image to import',
                  generators: DockerImageGenerator)
            ],
            options: [
              Option(
                  name: ['-c', '--cluster'],
                  description: 'Cluster to import image(s) into',
                  args: [
                    Arg(
                        name: 'cluster',
                        description: 'Cluster to import image(s) into',
                        generators: ClusterGenerator)
                  ]),
              Option(
                  name: ['-k', '--keep-tarball'],
                  description:
                      'Do not delete the tarball containing the saved images from the shared volume'),
              Option(
                  name: ['-t', '--keep-tools'],
                  description: 'Do not delete the tools node after import'),
              Option(
                  name: ['-m', '--mode'],
                  description: 'Import mode',
                  args: [
                    Arg(name: 'mode', description: 'Import mode', suggestions: [
                      FigSuggestion(name: 'auto'),
                      FigSuggestion(name: 'direct'),
                      FigSuggestion(name: 'tools')
                    ])
                  ])
            ])
      ]),
      Subcommand(
          name: 'kubeconfig',
          description: 'Manage k3d kubeconfig',
          subcommands: [
            Subcommand(name: [
              'get',
              'print',
              'show'
            ], args: [
              Arg(
                  name: 'cluster',
                  description: 'Cluster to get kubeconfig for',
                  generators: ClusterGenerator)
            ], options: [
              Option(name: ['-a', '--all'])
            ]),
            Subcommand(
                name: ['merge', 'write'],
                description:
                    'Write/Merge kubeconfig(s) from cluster(s) into new or existing kubeconfig/file',
                args: [
                  Arg(
                      name: 'cluster',
                      description: 'Cluster to get kubeconfig for',
                      generators: ClusterGenerator)
                ],
                options: [
                  Option(name: ['-a', '--all']),
                  Option(
                      name: ['-d', '--kubeconfig-merge-default'],
                      description:
                          'Merge into the default kubeconfig (\$KUBECONFIG or /Users/balli/.kube/config)'),
                  Option(
                      name: ['-s', '--kubeconfig-switch-context'],
                      description: 'Switch to new context (default true)'),
                  Option(
                      name: ['-o', '--output'],
                      description:
                          'Define output [ - | FILE ] (default from \$KUBECONFIG or /Users/balli/.kube/config',
                      args: [
                        Arg(
                            name: 'string',
                            description:
                                'Define output [ - | FILE ] (default from \$KUBECONFIG or /Users/balli/.kube/config')
                      ]),
                  Option(
                      name: '--overwrite',
                      description:
                          '[Careful!] Overwrite existing file, ignoring its contents',
                      isDangerous: true),
                  Option(
                      name: ['-u', '--update'],
                      description:
                          'Update conflicting fields in existing kubeconfig (default true)')
                ])
          ]),
      Subcommand(name: 'node', description: 'Manage k3d nodes', subcommands: [
        Subcommand(name: 'create', description: 'Create a new node', args: [
          Arg(name: 'Node Name', description: 'Name of the node')
        ], options: [
          Option(
              name: ['-c', '--cluster'],
              description:
                  'Cluster URL or k3d cluster name to connect to. (default "k3s-default")',
              args: [
                Arg(
                    name: 'cluster',
                    description: 'Cluster to connect to',
                    generators: ClusterGenerator)
              ]),
          Option(
              name: ['-i', '--image'],
              description: 'Node image to use',
              args: [Arg(name: 'image', description: 'Node image to use')]),
          Option(
              name: '--k3s-arg',
              description: 'Additional k3s arguments',
              args: [
                Arg(name: 'k3s-arg', description: 'Additional k3s arguments')
              ]),
          Option(
              name: '--k3s-node-label',
              description: 'Specify k3s node labels in format',
              args: [
                Arg(
                    name: 'k3s-node-label',
                    description: 'Specify k3s node labels in format "foo=bar"')
              ]),
          Option(
              name: '--memory',
              description: 'Memory limit for the node container',
              args: [
                Arg(
                    name: 'memory',
                    description: 'Memory limit for the node container')
              ]),
          Option(
              name: ['-n', '--network'],
              description: 'Add node to (another) runtime network',
              args: [Arg(name: 'network')]),
          Option(
              name: '--replicas',
              description: 'Number of replicas to create',
              args: [
                Arg(
                    name: 'replicas',
                    description: 'Number of replicas to create',
                    suggestions: [
                      FigSuggestion(name: '1'),
                      FigSuggestion(name: '2'),
                      FigSuggestion(name: '3'),
                      FigSuggestion(name: '4'),
                      FigSuggestion(name: '5')
                    ])
              ]),
          Option(name: '--role', description: 'Node role', args: [
            Arg(name: 'role', description: 'Node role', suggestions: [
              FigSuggestion(name: 'agent'),
              FigSuggestion(name: 'server')
            ])
          ]),
          Option(
              name: '--runtime-label',
              description: 'Specify runtime labels in format',
              args: [
                Arg(
                    name: 'runtime-label',
                    description: 'Specify runtime labels in format "foo=bar"')
              ]),
          Option(
              name: '--timeout',
              description:
                  'Maximum waiting time for \'--wait\' before canceling/returning',
              args: [
                Arg(
                    name: 'timeout',
                    description:
                        'Maximum waiting time for \'--wait\' before canceling/returning')
              ]),
          Option(
              name: ['-t', '--token'],
              description: 'Override cluster token',
              args: [Arg(name: 'token')]),
          Option(
              name: '--wait',
              description: 'Wait for the node(s) to be ready before returning')
        ]),
        Subcommand(name: 'delete', description: 'Delete a node', args: [
          Arg(
              name: 'Node Name',
              description: 'Name of the node',
              generators: NodeGenerator)
        ], options: [
          Option(
              name: ['-a', '--all'], description: 'Delete all existing nodes'),
          Option(
              name: ['-r', '--registry'], description: 'Also delete registries')
        ]),
        Subcommand(
            name: ['edit', 'update'],
            description: '[EXPERIMENTAL] Edit node(s)',
            args: [
              Arg(
                  name: 'Node Name',
                  description: 'Name of the node',
                  generators: NodeGenerator)
            ],
            options: [
              Option(
                  name: '--port-add',
                  description: 'Map ports from the node container to the host',
                  args: [
                    Arg(
                        name: 'port-add',
                        description:
                            'Map ports from the node container to the host')
                  ])
            ]),
        Subcommand(
            name: ['list', 'ls', 'get'],
            description: 'List nodes',
            options: [
              Option(
                  name: '--no-headers',
                  description: 'Don\'t print headers (default print headers)'),
              Option(
                  name: ['-o', '--output'],
                  description: 'Output format',
                  args: [
                    Arg(
                        name: 'output',
                        description: 'Output format',
                        suggestions: [
                          FigSuggestion(name: 'json'),
                          FigSuggestion(name: 'yaml')
                        ])
                  ])
            ]),
        Subcommand(name: 'start', description: 'Start a node', args: [
          Arg(
              name: 'Node Name',
              description: 'Name of the node',
              generators: NodeGenerator)
        ]),
        Subcommand(name: 'stop', description: 'Stop a node', args: [
          Arg(
              name: 'Node Name',
              description: 'Name of the node',
              generators: NodeGenerator)
        ])
      ]),
      Subcommand(
          name: ['registry', 'registries', 'reg'],
          description: 'Manage registry/registries',
          subcommands: [
            Subcommand(
                name: 'create',
                description: 'Create a new registry',
                args: [
                  Arg(
                      name: 'Registry Name',
                      description: 'Name of the registry')
                ],
                options: [
                  Option(
                      name: '--default-network',
                      // TS_UNCONVERTED_START (description)
// `Specify the network connected to the registry (default "bridge")`
// TS_UNCONVERTED_END
                      description: null),
                  Option(
                      name: ['-i', '--image'],
                      // TS_UNCONVERTED_START (description)
// `Specify image used for the registry (default "docker.io/library/registry:2")`
// TS_UNCONVERTED_END
                      description: null,
                      args: [Arg(name: 'image')]),
                  Option(
                      name: '--no-help',
                      description:
                          'Disable the help text (How-To use the registry)'),
                  Option(
                      name: ['-p', '--port'],
                      description:
                          'Select which port the registry should be listening on your machine (localhost) (Format: [HOST:]HOSTPORT)',
                      args: [Arg(name: 'port')]),
                  Option(
                      name: '--proxy-password',
                      description:
                          'Specify the password of the proxied remote registry',
                      args: [Arg(name: 'proxy-password')]),
                  Option(
                      name: '--proxy-remote-url',
                      description:
                          'Specify the url of the proxied remote registry',
                      args: [Arg(name: 'proxy-remote-url')]),
                  Option(
                      name: '--proxy-username',
                      description:
                          'Specify the username of the proxied remote registry',
                      args: [Arg(name: 'proxy-username')]),
                  Option(
                      name: ['-v', '--volume'],
                      description:
                          'Mount volumes into the registry node (Format: [SOURCE:]DEST',
                      args: [Arg(name: 'volume')])
                ]),
            Subcommand(
                name: ['delete', 'del', 'rm'],
                description: 'Delete registry/registries',
                args: [
                  Arg(
                      name: 'Registry Name',
                      description: 'Name of the registry',
                      generators: RegistryGenerator)
                ],
                options: [
                  Option(name: ['-a', '--all'])
                ]),
            Subcommand(
                name: ['list', 'ls', 'get'],
                description: 'List registries',
                args: [
                  Arg(
                      name: 'Registry Name',
                      description: 'Name of the registry',
                      generators: RegistryGenerator,
                      isOptional: true)
                ],
                options: [
                  Option(
                      name: '--no-headers',
                      description:
                          'Don\'t print headers (default print headers)'),
                  Option(
                      name: ['-o', '--output'],
                      description: 'Output format',
                      args: [
                        Arg(
                            name: 'output',
                            description: 'Output format',
                            suggestions: [
                              FigSuggestion(name: 'json'),
                              FigSuggestion(name: 'yaml')
                            ])
                      ])
                ])
          ]),
      Subcommand(
          name: 'version', description: 'Show k3d and default k3s version')
    ],
    options: [
      Option(
          name: ['-h', '--help'],
          description: 'Help for k3d',
          isPersistent: true),
      Option(
          name: '--verbose', description: 'Verbose output', isPersistent: true),
      Option(name: '--trace', description: 'Trace output', isPersistent: true),
      Option(name: '--version', description: 'Print version information'),
      Option(
          name: '--timestamps',
          description: 'Print timestamp in log output',
          isPersistent: true)
    ]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (ClusterGenerator)
// const ClusterGenerator: Fig.Generator = {
//   script: ["k3d", "cluster", "list", "--no-headers"],
//   postProcess: (out) => {
//     return out.split("\n").map((line) => {
//       const [name, servers, agents] = line.split(/\s+/);
//       return {
//         name,
//         icon: "fig://icon?type=kubernetes",
//         description: `Cluster with ${servers} server(s), ${agents} agent(s)`,
//       };
//     }
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (DockerImageGenerator)
// const DockerImageGenerator: Fig.Generator = {
//   script: ["docker", "image", "ls", "--format", "{{.Repository}}:{{.Tag}}"],
//   postProcess: (out) => {
//     return out.split("\n").map((image) => ({
//       name: image,
//       icon: "fig://icon?type=docker",
//       description: "Docker Image",
//     }));
//   },
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (NodeGenerator)
// const NodeGenerator: Fig.Generator = {
//   script: ["k3d", "node", "list", "--no-headers"],
//   postProcess: (out) => {
//     return out.split("\n").map((line) => {
//       const [name, role, cluster] = line.split(/\s+/);
//       return {
//         name,
//         icon: "fig://icon?type=kubernetes",
//         description: `${role} node of cluster ${cluster}`,
//       };
//     }
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (RegistryGenerator)
// const RegistryGenerator: Fig.Generator = {
//   script: ["k3d", "registry", "list", "--no-headers"],
//   postProcess: (out) => {
//     return out.split("\n").map((line) => {
//       const [name, cluster] = line.split(/\s+/);
//       return {
//         name,
//         description: `Registry ${name} of cluster ${cluster}`,
//       };
//     }
// TS_GENERATOR_BLOCK_END
