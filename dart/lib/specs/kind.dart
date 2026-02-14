// AI-generated from TypeScript source: src/kind.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator clusterGenerator = FigGenerator(
  script: ['kind', 'get', 'clusters'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .map((cluster) => FigSuggestion(
              name: cluster,
              description: 'Cluster',
            ))
        .toList();
  },
);

final FigGenerator nodeGenerator = FigGenerator(
  script: ['kind', 'get', 'nodes', '-A'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .map((node) => FigSuggestion(
              name: node,
              description: 'Node',
            ))
        .toList();
  },
);

final FigSpec kindSpec = FigSpec(
  name: 'kind',
  description: 'Kubernetes IN Docker - local clusters for testing Kubernetes',
  subcommands: [
    FigSubcommand(
      name: 'Build',
      description: 'Build one of [node-image]',
      subcommands: [
        FigSubcommand(
          name: 'node-image',
          description: 'Builds a node image',
          options: [
            FigOption(
              name: ['--arch'],
              description:
                  'Architecture to build for, defaults to the host architecture',
              args: [
                FigArg(
                  name: 'architecture',
                  description:
                      'Architecture to build for, defaults to the host architecture',
                )
              ],
            ),
            FigOption(
              name: ['--base-image'],
              description: 'Base image to use for the node image',
              args: [
                FigArg(
                  name: 'base image',
                  description:
                      'Name:tag of the base image to use for the build',
                )
              ],
            ),
            FigOption(
              name: ['--image'],
              description: 'Name:tag of the resulting image to be built',
              args: [
                FigArg(
                  name: 'name:tag',
                  description: 'Name:tag of the resulting image to be built',
                )
              ],
            ),
            FigOption(
              name: ['--kube-root'],
              description: 'Path to the Kubernetes source directory',
              args: [
                FigArg(
                  name: 'path',
                  description: 'Path to the Kubernetes source directory',
                )
              ],
              deprecated: true,
            ),
            FigOption(
              name: ['--type'],
              description: 'Type of node image to build',
              args: [
                FigArg(
                  name: 'type',
                  description: 'Build type, default is docker',
                )
              ],
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'create',
      description: 'Creates a cluster',
      subcommands: [
        FigSubcommand(
          name: 'cluster',
          description: 'Creates a cluster',
          options: [
            FigOption(
              name: ['--config'],
              description: 'Path to a kind config file',
            ),
            FigOption(
              name: ['--image'],
              description: 'Node docker image to use for booting the cluster',
            ),
            FigOption(
              name: ['--kubeconfig'],
              description:
                  'Sets kubeconfig path instead of \$KUBECONFIG or \$HOME/.kube/config',
            ),
            FigOption(
              name: ['--name'],
              description: 'Cluster name',
            ),
            FigOption(
              name: ['--retain'],
              description:
                  'Retain nodes for debugging when cluster creation fails',
            ),
            FigOption(
              name: ['--wait'],
              description: 'Wait for control-plane node to be ready',
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'completion',
      description: 'Generates shell completion scripts',
      subcommands: [
        FigSubcommand(
          name: 'bash',
          description: 'Output shell completions for bash',
        ),
        FigSubcommand(
          name: 'fish',
          description: 'Output shell completions for fish',
        ),
        FigSubcommand(
          name: 'zsh',
          description: 'Output shell completions for zsh',
        ),
      ],
    ),
    FigSubcommand(
      name: 'delete',
      description: 'Deletes one or more clusters',
      subcommands: [
        FigSubcommand(
          name: 'cluster',
          description: 'Delete Cluster',
          options: [
            FigOption(
              name: ['--name'],
              description: 'Cluster name',
              args: [
                FigArg(
                  name: 'cluster name',
                  generators: [clusterGenerator],
                )
              ],
              priority: 100,
            ),
          ],
        ),
        FigSubcommand(
          name: 'clusters',
          description: 'Delete Clusters',
          options: [
            FigOption(
              name: ['-A', '--all'],
              description: 'Delete all clusters',
              priority: 100,
            ),
            FigOption(
              name: ['--kubeconfig'],
              description:
                  'Sets kubeconfig path instead of \$KUBECONFIG or \$HOME/.kube/config',
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'export',
      description: "Exports a cluster's kubeconfig",
      subcommands: [
        FigSubcommand(
          name: 'kubeconfig',
          description: "Exports a cluster's kubeconfig",
          options: [
            FigOption(
              name: ['--name'],
              description: 'Cluster name',
            ),
            FigOption(
              name: ['--internal'],
              description: 'Use internal address instead of externalt',
            ),
            FigOption(
              name: ['--kubeconfig'],
              description:
                  'Sets kubeconfig path instead of \$KUBECONFIG or \$HOME/.kube/config',
            ),
          ],
        ),
        FigSubcommand(
          name: 'logs',
          description: 'Exports logs to a tempdir or [output-dir] if specified',
          options: [
            FigOption(
              name: ['--name'],
              description: 'Cluster name',
              args: [
                FigArg(
                  name: 'cluster name',
                  generators: [clusterGenerator],
                )
              ],
              priority: 100,
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'get',
      description: 'Gets one of [clusters, nodes, kubeconfig]',
      subcommands: [
        FigSubcommand(
          name: 'clusters',
          description: 'Lists existing kind clusters by their name',
        ),
        FigSubcommand(
          name: 'kubeconfig',
          description: 'Prints cluster kubeconfig',
          options: [
            FigOption(
              name: ['--name'],
              description: 'Cluster name',
              args: [
                FigArg(
                  name: 'cluster name',
                  generators: [clusterGenerator],
                )
              ],
              priority: 100,
            ),
            FigOption(
              name: ['--internal'],
              description: 'Use internal address instead of external',
            ),
          ],
        ),
        FigSubcommand(
          name: 'nodes',
          description: 'Lists existing kind nodes by their name',
          options: [
            FigOption(
              name: ['-A', '--all'],
              description: 'List all nodes',
              priority: 50,
            ),
            FigOption(
              name: ['--name'],
              description: 'Cluster name',
              args: [
                FigArg(
                  name: 'cluster name',
                  generators: [clusterGenerator],
                )
              ],
              priority: 50,
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'load',
      description: 'Loads images into node from an archive or image on host',
      subcommands: [
        FigSubcommand(
          name: 'docker-image',
          description:
              'Loads docker images from host into all or specified nodes by name',
          options: [
            FigOption(
              name: ['--name'],
              description: 'Cluster name',
              args: [
                FigArg(
                  name: 'cluster name',
                  generators: [clusterGenerator],
                )
              ],
            ),
            FigOption(
              name: ['--nodes'],
              description: 'Comma separated list of nodes to load images into',
              args: [
                FigArg(
                  name: 'nodes',
                  generators: [nodeGenerator],
                )
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: 'image-archive',
          description:
              'Loads docker images from archive into all or specified nodes by name',
          options: [
            FigOption(
              name: ['--name'],
              description: 'Cluster name',
              args: [
                FigArg(
                  name: 'cluster name',
                  generators: [clusterGenerator],
                )
              ],
            ),
            FigOption(
              name: ['--nodes'],
              description: 'Comma separated list of nodes to load images into',
              args: [
                FigArg(
                  name: 'nodes',
                  generators: [nodeGenerator],
                )
              ],
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'version',
      description: 'Prints the kind CLI version',
    ),
  ],
  options: [
    FigOption(
      name: ['-h', '--help'],
      description: 'Help for kind',
      isPersistent: true,
    ),
    FigOption(
      name: ['-q', '--quiet'],
      description: 'Silence all stderr output',
      isPersistent: true,
    ),
    FigOption(
      name: ['-v', '--verbosity'],
      description: 'Info log verbosity, higher value produces more output',
      isPersistent: true,
      args: [
        FigArg(
          name: 'int',
        )
      ],
    ),
  ],
);
