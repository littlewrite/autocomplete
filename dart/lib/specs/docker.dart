// AI-generated from TypeScript source: docker.ts
// Generated at: 2026-02-15

import 'dart:convert';

import 'package:autocomplete/specs/nvm.dart';
import 'package:autocomplete/src/spec.dart';

/// Post-process for `docker ps`-style output (JSON lines with .Names, .Image).
List<FigSuggestion> postProcessDockerPs(String out, [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.trim().isNotEmpty)
      .map((line) {
        try {
          final parsedJSON = Map<String, String>.from((jsonDecode(line) as Map)
              .map((k, v) => MapEntry(k.toString(), v?.toString() ?? '')));
          return FigSuggestion(
            name: parsedJSON['Names'],
            displayName: '${parsedJSON['Names']} (${parsedJSON['Image']})',
            icon: 'fig://icon?type=docker',
          );
        } catch (_) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

/// Shared post-process for list commands (JSON lines with .Name, .ID).
List<FigSuggestion> sharedPostProcess(String out, [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.trim().isNotEmpty)
      .map((line) {
        try {
          final i = jsonDecode(line) as Map<String, dynamic>;
          final name = i['Name']?.toString();
          final id = i['ID']?.toString();
          if (name == null) return null;
          return FigSuggestion(
            name: name,
            description: id,
            icon: 'fig://icon?type=docker',
          );
        } catch (_) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

/// Docker generators map (running/all containers, images, contexts, networks, etc.).
final Map<String, FigGenerator> dockerGenerators = {
  'runningDockerContainers': FigGenerator(
    script: ['docker', 'ps', '--format', '{{ json . }}'],
    postProcess: postProcessDockerPs,
  ),
  'allDockerContainers': FigGenerator(
    script: ['docker', 'ps', '-a', '--format', '{{ json . }}'],
    postProcess: postProcessDockerPs,
  ),
  'pausedDockerContainers': FigGenerator(
    script: [
      'docker',
      'ps',
      '--filter',
      'status=paused',
      '--format',
      '{{ json . }}',
    ],
    postProcess: postProcessDockerPs,
  ),
  'allLocalImages': FigGenerator(
    script: ['docker', 'image', 'ls', '--format', '{{ json . }}'],
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map((line) {
            try {
              final i = jsonDecode(line) as Map<String, dynamic>;
              return FigSuggestion(
                name: i['ID']?.toString(),
                displayName: '${i['Repository']} - ${i['ID']}',
                icon: 'fig://icon?type=docker',
              );
            } catch (_) {
              return null;
            }
          })
          .whereType<FigSuggestion>()
          .toList();
    },
  ),
  'allLocalImagesWithRepository': FigGenerator(
    script: ['docker', 'image', 'ls', '--format', '{{ json . }}'],
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map((line) {
            try {
              final i = jsonDecode(line) as Map<String, dynamic>;
              return FigSuggestion(
                name: i['Repository']?.toString(),
                displayName: '${i['Repository']} - ${i['ID']}',
                icon: 'fig://icon?type=docker',
              );
            } catch (_) {
              return null;
            }
          })
          .whereType<FigSuggestion>()
          .toList();
    },
  ),
  'dockerHubSearch': FigGenerator(
    // Original TS uses script(context) with search term from context; Dart runtime uses fixed script.
    script: ['docker', 'search', '--format', '{{ json . }}'],
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map((line) {
            try {
              final i = jsonDecode(line) as Map<String, dynamic>;
              return FigSuggestion(
                name: i['Name']?.toString(),
                icon: 'fig://icon?type=docker',
              );
            } catch (_) {
              return null;
            }
          })
          .whereType<FigSuggestion>()
          .toList();
    },
    trigger: true,
  ),
  'allDockerContexts': FigGenerator(
    script: ['docker', 'context', 'list', '--format', '{{ json . }}'],
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map((line) {
            try {
              final i = jsonDecode(line) as Map<String, dynamic>;
              return FigSuggestion(
                name: i['Name']?.toString(),
                description: i['Description']?.toString(),
                icon: 'fig://icon?type=docker',
              );
            } catch (_) {
              return null;
            }
          })
          .whereType<FigSuggestion>()
          .toList();
    },
  ),
  'listDockerNetworks': FigGenerator(
    script: ['docker', 'network', 'list', '--format', '{{ json . }}'],
    postProcess: sharedPostProcess,
  ),
  'listDockerSwarmNodes': FigGenerator(
    script: ['docker', 'node', 'list', '--format', '{{ json . }}'],
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map((line) {
            try {
              final i = jsonDecode(line) as Map<String, dynamic>;
              return FigSuggestion(
                name: i['ID']?.toString(),
                displayName: '${i['ID']} - ${i['Hostname']}',
                description: i['Status']?.toString(),
                icon: 'fig://icon?type=docker',
              );
            } catch (_) {
              return null;
            }
          })
          .whereType<FigSuggestion>()
          .toList();
    },
  ),
  'listDockerPlugins': FigGenerator(
    script: ['docker', 'plugin', 'list', '--format', '{{ json . }}'],
    postProcess: sharedPostProcess,
  ),
  'listDockerSecrets': FigGenerator(
    script: ['docker', 'secret', 'list', '--format', '{{ json . }}'],
    postProcess: sharedPostProcess,
  ),
  'listDockerServices': FigGenerator(
    script: ['docker', 'service', 'list', '--format', '{{ json . }}'],
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map((line) {
            try {
              final i = jsonDecode(line) as Map<String, dynamic>;
              return FigSuggestion(
                name: i['Name']?.toString(),
                description: i['Image']?.toString(),
                icon: 'fig://icon?type=docker',
              );
            } catch (_) {
              return null;
            }
          })
          .whereType<FigSuggestion>()
          .toList();
    },
  ),
  'listDockerServicesReplicas': FigGenerator(
    script: ['docker', 'service', 'list', '--format', '{{ json . }}'],
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map((line) {
            try {
              final i = jsonDecode(line) as Map<String, dynamic>;
              return FigSuggestion(
                name: '${i['Name']}=',
                description: i['Image']?.toString(),
                icon: 'fig://icon?type=docker',
              );
            } catch (_) {
              return null;
            }
          })
          .whereType<FigSuggestion>()
          .toList();
    },
  ),
  'listDockerStacks': FigGenerator(
    script: ['docker', 'stack', 'list', '--format', '{{ json . }}'],
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map((line) {
            try {
              final i = jsonDecode(line) as Map<String, dynamic>;
              return FigSuggestion(
                name: i['Name']?.toString(),
                icon: 'fig://icon?type=docker',
              );
            } catch (_) {
              return null;
            }
          })
          .whereType<FigSuggestion>()
          .toList();
    },
  ),
  'listDockerVolumes': FigGenerator(
    script: ['docker', 'volume', 'list', '--format', '{{ json . }}'],
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map((line) {
            try {
              final i = jsonDecode(line) as Map<String, dynamic>;
              return FigSuggestion(
                name: i['Name']?.toString(),
                icon: 'fig://icon?type=docker',
              );
            } catch (_) {
              return null;
            }
          })
          .whereType<FigSuggestion>()
          .toList();
    },
  ),
};

/// Container arg with running containers generator.
final FigArg containersArg = FigArg(
  name: 'container',
  generators: dockerGenerators['runningDockerContainers'],
);

/// Image arg with all local images generator.
final FigArg imagesArg = FigArg(
  name: 'image',
  generators: dockerGenerators['allLocalImages'],
);

/// Container + command (isCommand: true) args.
final List<FigArg> containerAndCommandArgs = [
  containersArg,
  FigArg(
    name: 'command',
    isCommand: true,
  ),
];

/// Context arg with all Docker contexts generator.
final FigArg contextsArg = FigArg(
  name: 'CONTEXT',
  generators: dockerGenerators['allDockerContexts'],
);

final Map<String, Subcommand> sharedCommands = {
  'build': Subcommand(
      name: 'build',
      description: 'Build an image from a Dockerfile',
      args: [
        Arg(
          name: 'pat',
          generators: Generator(template: 'folders'),
        )
      ],
      options: [
        Option(
            name: '--add-host',
            args: [Arg(name: 'lis')],
            description: 'Add a custom host-to-IP mapping (host:ip)')
      ]),
  'create':
      Subcommand(name: 'create', description: 'Create a new container', args: [
    Arg(name: 'container', generators: dockerGenerators['allLocalImages'])
  ], options: [
    Option(
        args: [Arg(name: 'lis')],
        description: 'Add a custom host-to-IP mapping (host:ip)',
        name: '--add-host')
  ]),
  'attach': Subcommand(
      name: 'attach',
      description:
          'Attach local standard input, output, and error streams to a running container,',
      options: [
        Option(
            name: '--detach-keys',
            description: 'Override the key sequence for detaching a container',
            args: [Arg(name: 'strin')])
      ]),
  'commit': Subcommand(
      name: 'commit',
      description: 'Create a new image from a container\'s changes',
      args: [
        containersArg
      ],
      options: [
        Option(
            args: [Arg(name: 'strin')],
            description:
                'Author (e.g., "John Hannibal Smith <hannibal@a-team.com>")',
            name: ['-a'])
      ]),
  'cp': Subcommand(
      name: 'cp',
      description:
          'Copy files/folders between a container and the local filesystem',
      args: [
        Arg(
            name:
                'CONTAINER:SRC_PATH DEST_PATH|- OR SRC_PATH|- CONTAINER:DEST_PAT')
      ],
      options: [
        Option(
            description: 'Archive mode (copy all uid/gid information)',
            name: ['-a'])
      ]),
  'diff': Subcommand(
      name: 'diff',
      description:
          'Inspect changes to files or directories on a container\'s filesystem',
      args: containersArg),
  'exec': Subcommand(
      name: 'exec',
      description: 'Run a command in a running container',
      options: [
        Option(name: '-it', description: 'Launch an interactive session')
      ],
      args: containerAndCommandArgs),
  'export': Subcommand(
      name: 'export',
      description: 'Export a container\'s filesystem as a tar archive',
      args: containersArg,
      options: [
        Option(
            description: 'Write to a file, instead of STDOUT',
            name: ['-o'],
            args: [Arg(name: 'strin')])
      ]),
  'kill': Subcommand(
      name: 'kill',
      description: 'Kill one or more running containers',
      args: [
        Arg()
      ],
      options: [
        Option(
            description: 'Signal to send to the container (default "KILL")',
            name: ['-s'],
            args: [Arg(name: 'strin')])
      ]),
  'logs': Subcommand(
      name: 'logs',
      description: 'Fetch the logs of a container',
      args: containersArg,
      options: [
        Option(
            description: 'Show extra details provided to logs',
            name: '--details')
      ]),
  'pause': Subcommand(
      name: 'pause',
      description: 'Pause all processes within one or more containers',
      args: containersArg),
  'port': Subcommand(
      name: 'port',
      description: 'List port mappings or a specific mapping for the container',
      args: [containersArg]),
  'rename': Subcommand(
      name: 'rename', description: 'Rename a container', args: [containersArg]),
  'restart': Subcommand(
      name: 'restart',
      description: 'Restart one or more containers',
      args: containersArg,
      options: [
        Option(
            description:
                'Seconds to wait for stop before killing the container (default 10)',
            name: ['-t'],
            args: [Arg(name: 'in')])
      ]),
  'rm': Subcommand(
      description: 'Remove one or more containers',
      args: [
        Arg(
          isVariadic: true,
          generators: dockerGenerators['allDockerContainers'],
        )
      ],
      name: 'containers',
      options: [
        Option(
            name: ['-f'],
            description:
                'Force the removal of a running container (uses SIGKILL)')
      ]),
  'run': Subcommand(
      name: 'run',
      description: 'Run a command in a new container',
      options: [
        Option(name: '-it', description: 'Launch an interactive session')
      ],
      args: [
        Arg(
            name: 'image',
            description: 'The Docker image to use',
            generators: Generator(script: ['docker']))
      ])
};

/// Completion spec for `docker` CLI
final FigSpec dockerSpec = FigSpec(
    name: 'docker',
    description: 'A self-sufficient runtime for containers',
    subcommands: [
      sharedCommands['attach']!,
      sharedCommands['build']!,
      sharedCommands['commit']!,
      sharedCommands['cp']!,
      sharedCommands['create']!,
      sharedCommands['diff']!,
      Subcommand(
          name: 'events',
          description: 'Get real time events from the server',
          options: [
            Option(
                args: [Arg(name: 'filter')],
                description: 'Filter output based on conditions provided',
                name: ['-f', '--filter']),
            Option(
                args: [Arg(name: 'string')],
                description: 'Format the output using the given Go template',
                name: '--format'),
            Option(
                args: [Arg(name: 'string')],
                description: 'Show all events created since timestamp',
                name: '--since'),
            Option(
                args: [Arg(name: 'string')],
                description: 'Stream events until this timestamp',
                name: '--until')
          ]),
      sharedCommands['exec']!,
      sharedCommands['export']!,
      sharedCommands['history']!,
      sharedCommands['imageList']!,
      sharedCommands['imageImport']!,
      Subcommand(
          name: 'info',
          description: 'Display system-wide information',
          options: [
            Option(
                args: [Arg(name: 'string')],
                description: 'Format the output using the given Go template',
                name: ['-f', '--format'])
          ]),
      Subcommand(
          name: 'inspect',
          description: 'Return low-level information on Docker objects',
          args: [
            Arg(name: 'Name or ID', generators: [
              Generator(
                  script: ['docker', 'ps', '-a', '--format', '{{ json . }}'],
                  // TS_UNCONVERTED_START (postProcess)
// function (out) {
//               const allLines = out.split("\n").map((line) => JSON.parse(line));
//               return allLines.map((i) => ({
//                 name: i.ID,
//                 displayName: `[con] ${i.ID} (${i.Image})`,
//               }));
// TS_UNCONVERTED_END
                  postProcess: null),
              Generator(
                  script: [
                    'docker',
                    'images',
                    '-a',
                    '--format',
                    '{{ json . }}'
                  ],
                  // TS_UNCONVERTED_START (postProcess)
// function (out) {
//               const allLines = out.split("\n").map((line) => JSON.parse(line));
//               return allLines.map((i) => {
//                 let displayName;
//                 if (i.Repository === "\u003cnone\u003e") {
//                   displayName = i.ID;
//                 } else {
//                   displayName = i.Repository;
//                   if (i.Tag !== "\u003cnone\u003e") {
//                     displayName += `:${i.Tag}`;
//                   }
//                 }
//
//                 return {
//                   name: i.ID,
//                   displayName: `[img] ${displayName}`,
//                 };
//               });
// TS_UNCONVERTED_END
                  postProcess: null),
              Generator(
                  script: [
                    'docker',
                    'volume',
                    'ls',
                    '--format',
                    '{{ json . }}'
                  ],
                  // TS_UNCONVERTED_START (postProcess)
// function (out) {
//               const allLines = out.split("\n").map((line) => JSON.parse(line));
//               return allLines.map((i) => ({
//                 name: i.Name,
//                 displayName: `[vol] ${i.Name}`,
//               }));
// TS_UNCONVERTED_END
                  postProcess: null)
            ])
          ],
          options: [
            Option(
                name: ['-f', '--format'],
                description: 'Format the output using the given Go template',
                args: [Arg(name: 'string')]),
            Option(
                name: ['-s', '--size'],
                description:
                    'Display total file sizes if the type is container'),
            Option(
                name: '--type',
                description: 'Return JSON for specified type',
                args: [Arg(name: 'string')])
          ]),
      sharedCommands['kill']!,
      sharedCommands['load']!,
      Subcommand(
          name: 'login',
          description: 'Log in to a Docker registry',
          args: [
            Arg(name: 'server')
          ],
          options: [
            Option(
                description: 'Password',
                name: ['-p', '--password'],
                args: [Arg(name: 'string')]),
            Option(
                description: 'Take the password from stdin',
                name: '--password-stdin'),
            Option(
                description: 'Username',
                name: ['-u', '--username'],
                args: [Arg(name: 'string')])
          ]),
      Subcommand(
          name: 'logout',
          description: 'Log out from a Docker registry',
          args: [Arg(name: 'server')]),
      sharedCommands['logs']!,
      sharedCommands['pause']!,
      sharedCommands['port']!,
      sharedCommands['ps']!,
      sharedCommands['pull']!,
      sharedCommands['push']!,
      sharedCommands['rename']!,
      sharedCommands['restart']!,
      sharedCommands['rm']!,
      sharedCommands['removeImage']!,
      sharedCommands['run']!,
      sharedCommands['imageSave']!,
      Subcommand(
          name: 'search',
          description: 'Search the Docker Hub for images',
          args: [
            Arg(name: 'TERM', description: 'Search term')
          ],
          options: [
            Option(
                args: [Arg(name: 'filter')],
                description: 'Filter output based on conditions provided',
                name: ['-f', '--filter']),
            Option(
                args: [Arg(name: 'string')],
                description: 'Pretty-print search using a Go template',
                name: '--format'),
            Option(
                args: [Arg(name: 'int')],
                description: 'Max number of search results (default 25)',
                name: '--limit'),
            Option(description: 'Don\'t truncate output', name: '--no-trunc')
          ]),
      sharedCommands['sbom']!,
      sharedCommands['start']!,
      sharedCommands['stats']!,
      sharedCommands['stop']!,
      sharedCommands['tag']!,
      sharedCommands['top']!,
      sharedCommands['unpause']!,
      sharedCommands['update']!,
      Subcommand(
          name: 'version',
          description: 'Show the Docker version information',
          options: [
            Option(
                description:
                    'Format the output. Values: [pretty | json]. (Default: pretty)',
                name: [
                  '-f',
                  '--format'
                ],
                args: [
                  Arg(name: 'string', suggestions: [
                    FigSuggestion(name: 'pretty'),
                    FigSuggestion(name: 'json')
                  ])
                ]),
            Option(
                description: 'Kubernetes config file',
                name: '--kubeconfig',
                args: [Arg(name: 'string')])
          ]),
      sharedCommands['wait']!,
      Subcommand(name: 'builder', description: 'Manage builds', subcommands: [
        sharedCommands['build']!,
        Subcommand(
            name: 'prune',
            description: 'Amount of disk space to keep for cache',
            options: [
              Option(
                  name: ['-a', '--all'],
                  description:
                      'Remove all unused build cache, not just dangling ones'),
              Option(
                  name: '--filter',
                  description: 'Provide filter values (e.g. \'until=24h\')',
                  args: [Arg(name: 'filter')]),
              Option(
                  name: ['-f', '--force'],
                  description: 'Do not prompt for confirmation'),
              Option(
                  name: '--keep-storage',
                  description: 'Amount of disk space to keep for cache',
                  args: [Arg(name: 'bytes')])
            ])
      ]),
      Subcommand(
          name: 'config',
          description: 'Manage Docker configs',
          subcommands: [
            Subcommand(
                name: 'create',
                description: 'Create a config from a file or STDIN',
                args: [
                  Arg(name: 'file', template: 'filepaths')
                ],
                options: [
                  Option(
                      name: '-l',
                      description: 'Config labels',
                      args: [Arg(name: 'list')]),
                  Option(
                      name: '--template-driver',
                      description: 'Template driver',
                      args: [Arg(name: 'string')])
                ]),
            Subcommand(
                name: 'inspect',
                description:
                    'Display detailed information on one or more configs',
                args: [
                  Arg(name: 'CONFIG', isVariadic: true)
                ],
                options: [
                  Option(
                      name: '-f',
                      description:
                          'Format the output using the given Go template',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--pretty',
                      description:
                          'Print the information in a human friendly format')
                ]),
            Subcommand(name: 'ls', description: 'List configs', options: [
              Option(
                  name: '-f',
                  description: 'Filter output based on conditions provided',
                  args: [Arg(name: 'filter')]),
              Option(
                  name: '--format',
                  description: 'Pretty-print configs using a Go template',
                  args: [Arg(name: 'string')]),
              Option(name: ['-q', '--quiet'], description: 'Only display IDs')
            ]),
            Subcommand(
                name: 'rm',
                description: 'Remove one or more configs',
                args: [Arg(name: 'CONFIG', isVariadic: true)])
          ]),
      Subcommand(
          name: 'container',
          description: 'Manage containers',
          subcommands: [
            sharedCommands['attach']!,
            sharedCommands['cp']!,
            sharedCommands['create']!,
            sharedCommands['diff']!,
            sharedCommands['exec']!,
            sharedCommands['export']!,
            Subcommand(
                name: 'inspect',
                description: 'Return low-level information on Docker objects',
                args: containersArg,
                options: [
                  Option(
                      name: ['-f', '--format'],
                      description:
                          'Format the output using the given Go template',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: ['-s', '--size'],
                      description:
                          'Display total file sizes if the type is container')
                ]),
            sharedCommands['kill']!,
            sharedCommands['logs']!,
            Subcommand(name: 'ls'),
            sharedCommands['pause']!,
            sharedCommands['port']!,
            Subcommand(
                name: 'prune',
                description: 'Remove all stopped containers',
                options: [
                  Option(
                      name: '--filter',
                      description:
                          'Provide filter values (e.g. \'until=<timestamp>\')',
                      args: [Arg(name: 'filter')]),
                  Option(
                      name: ['-f', '--force'],
                      description: 'Do not prompt for confirmation')
                ]),
            sharedCommands['rename']!,
            sharedCommands['restart']!,
            sharedCommands['rm']!,
            sharedCommands['run']!,
            sharedCommands['start']!,
            sharedCommands['stats']!,
            sharedCommands['stop']!,
            sharedCommands['top']!,
            sharedCommands['unpause']!,
            sharedCommands['update']!,
            sharedCommands['wait']!
          ]),
      Subcommand(name: 'context', description: 'Manage contexts', subcommands: [
        Subcommand(
            name: 'create',
            description: 'Create new context',
            subcommands: [
              Subcommand(
                  name: 'aci',
                  description: 'Create a context for Azure Container Instances',
                  args: [
                    Arg(name: 'CONTEXT')
                  ],
                  options: [
                    Option(
                        name: '--description',
                        description: 'Description of the context',
                        args: [Arg(name: 'string')]),
                    Option(name: ['-h', '--help'], description: 'Help for aci'),
                    Option(
                        name: '--location',
                        description: 'Location (default "eastus")',
                        args: [Arg(name: 'string')]),
                    Option(
                        name: '--resource-group',
                        description: 'Resource group',
                        args: [Arg(name: 'string')]),
                    Option(
                        name: '--subscription-id',
                        description: 'Location',
                        args: [Arg(name: 'string')])
                  ]),
              Subcommand(
                  name: 'ecs',
                  description: 'Create a context for Amazon ECS',
                  args: [
                    Arg(name: 'CONTEXT')
                  ],
                  options: [
                    Option(
                        name: '--access-keys',
                        description: 'Use AWS access keys from file',
                        args: [Arg(name: 'string')]),
                    Option(
                        name: '--description',
                        description: 'Description of the context',
                        args: [Arg(name: 'string')]),
                    Option(
                        name: '--from-env',
                        description:
                            'Use AWS environment variables for profile, or credentials and region'),
                    Option(name: ['-h', '--help'], description: 'Help for ecs'),
                    Option(
                        name: '--local-simulation',
                        description:
                            'Create context for ECS local simulation endpoints'),
                    Option(
                        name: '--profile',
                        description: 'Use an existing AWS profile',
                        args: [Arg(name: 'string')])
                  ])
            ],
            options: [
              Option(
                  name: '--default-stack-orchestrator',
                  description:
                      'Default orchestrator for stack operations to use with this context (swarm|kubernetes|all)',
                  args: [
                    Arg(name: 'string', suggestions: [
                      FigSuggestion(name: 'swarm'),
                      FigSuggestion(name: 'kubernetes'),
                      FigSuggestion(name: 'all')
                    ])
                  ]),
              Option(
                  name: '--description',
                  description: 'Description of the context',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--docker',
                  description: 'Set the docker endpoint (default [])',
                  args: [Arg(name: 'stringToString')]),
              Option(
                  name: '--from',
                  description: 'Create context from a named context',
                  args: [Arg(name: 'string')]),
              Option(name: ['-h', '--help'], description: 'Help for create'),
              Option(
                  name: '--kubernetes',
                  description: 'Set the kubernetes endpoint (default [])',
                  args: [Arg(name: 'stringToString')])
            ]),
        Subcommand(
            name: 'export',
            description: 'Export a context to a tar or kubeconfig file',
            args: [
              contextsArg,
              Arg(name: 'FILE', template: 'filepaths')
            ],
            options: [
              Option(name: ['-h', '--help'], description: 'Help for export'),
              Option(
                  name: '--kubeconfig',
                  description: 'Export as a kubeconfig file')
            ]),
        Subcommand(
            name: 'import',
            description: 'Import a context from a tar or zip file',
            args: [
              Arg(name: 'CONTEXT'),
              Arg(name: 'FILE', template: 'filepaths')
            ],
            options: [
              Option(name: ['-h', '--help'], description: 'Help for export')
            ]),
        Subcommand(
            name: 'inspect',
            description: 'Display detailed information on one or more contexts',
            args: [
              Arg(isVariadic: true)
            ],
            options: [
              Option(
                  name: '-f',
                  description: 'Format the output using the given Go template',
                  args: [Arg(name: 'string')]),
              Option(name: ['-h', '--help'], description: 'Help for inspect')
            ]),
        Subcommand(
            name: 'list',
            description: 'List available contexts',
            options: [
              Option(
                  name: '--format',
                  description:
                      'Format the output. Values: [pretty | json]. (Default: pretty)',
                  args: [
                    Arg(name: 'string', suggestions: [
                      FigSuggestion(name: 'pretty'),
                      FigSuggestion(name: 'json')
                    ])
                  ]),
              Option(name: ['-h', '--help'], description: 'Help for list'),
              Option(
                  name: ['-q', '--quiet'],
                  description: 'Only show context names')
            ]),
        Subcommand(
            name: 'rm',
            description: 'Remove one or more contexts',
            args: [
              Arg(isVariadic: true)
            ],
            options: [
              Option(
                  name: ['-f', '--force'],
                  description: 'Force removing current context'),
              Option(name: ['-h', '--help'], description: 'Help for rm')
            ]),
        Subcommand(
            name: 'show',
            description: 'Print the current context',
            options: [
              Option(name: ['-h', '--help'], description: 'Help for show')
            ]),
        Subcommand(
            name: 'update',
            description: 'Update a context',
            args: contextsArg,
            options: [
              Option(
                  name: '--default-stack-orchestrator',
                  description:
                      'Default orchestrator for stack operations to use with this context (swarm|kubernetes|all)',
                  args: [
                    Arg(name: 'string', suggestions: [
                      FigSuggestion(name: 'swarm'),
                      FigSuggestion(name: 'kubernetes'),
                      FigSuggestion(name: 'all')
                    ])
                  ]),
              Option(
                  name: '--description',
                  description: 'Description of the context',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--docker',
                  description: 'Set the docker endpoint (default [])',
                  args: [Arg(name: 'stringToString')]),
              Option(name: ['-h', '--help'], description: 'Help for update'),
              Option(
                  name: '--kubernetes',
                  description: 'Set the kubernetes endpoint (default [])',
                  args: [Arg(name: 'stringToString')])
            ]),
        Subcommand(
            name: 'use',
            description: 'Set the default context',
            args: contextsArg,
            options: [
              Option(name: ['-h', '--help'], description: 'Help for use')
            ])
      ], options: [
        Option(name: ['-h', '--help'], description: 'Help for context')
      ]),
      Subcommand(name: 'image', description: 'Manage images', subcommands: [
        sharedCommands['build']!,
        sharedCommands['history']!,
        sharedCommands['imageImport']!,
        Subcommand(
            name: 'inspect',
            description: 'Display detailed information on one or more images',
            args: [
              Arg(isVariadic: true)
            ],
            options: [
              Option(
                  name: '-f',
                  description: 'Format the output using the given Go template',
                  args: [Arg(name: 'string')])
            ]),
        sharedCommands['load']!,
        Subcommand(name: 'ls'),
        Subcommand(
            name: 'prune',
            description: 'Remove unused images',
            options: [
              Option(
                  name: ['-a', '--all'],
                  description:
                      'Remove all unused images, not just dangling ones'),
              Option(
                  name: '--filter',
                  description:
                      'Provide filter values (e.g. \'until=<timestamp>\')',
                  args: [Arg(name: 'filter')]),
              Option(
                  name: ['-f', '--force'],
                  description: 'Do not prompt for confirmation')
            ]),
        sharedCommands['pull']!,
        sharedCommands['push']!,
        Subcommand(name: 'rm'),
        sharedCommands['imageSave']!,
        sharedCommands['tag']!
      ]),
      Subcommand(name: 'network', description: 'Manage networks', subcommands: [
        Subcommand(
            name: 'connect',
            description: 'Connect a container to a network',
            args: [
              Arg(
                  name: 'NETWORK',
                  generators: dockerGenerators['listDockerNetworks']),
              containersArg
            ],
            options: [
              Option(
                  name: '--alias',
                  description: 'Add network-scoped alias for the container',
                  args: [Arg(name: 'strings')]),
              Option(
                  name: '--driver-opt',
                  description: 'Driver options for the network',
                  args: [Arg(name: 'strings')]),
              Option(
                  name: '--ip',
                  description: 'IPv4 address (e.g., 172.30.100.104)',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--ip6',
                  description: 'IPv6 address (e.g., 2001:db8::33)',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--link',
                  description: 'Add link to another container',
                  args: [Arg(name: 'list')]),
              Option(
                  name: '--link-local-ip',
                  description: 'Add a link-local address for the container',
                  args: [Arg(name: 'strings')])
            ]),
        Subcommand(name: 'create', description: 'Create a network', args: [
          Arg(name: 'NETWORK')
        ], options: [
          Option(
              name: '--attachable',
              description: 'Enable manual container attachment'),
          Option(
              name: '--aux-address',
              description:
                  'Auxiliary IPv4 or IPv6 addresses used by Network driver (default map[])',
              args: [Arg(name: 'map')]),
          Option(
              name: '--config-from',
              description: 'The network from which to copy the configuration',
              args: [Arg(name: 'string')]),
          Option(
              name: '--config-only',
              description: 'Create a configuration only network'),
          Option(
              name: ['-d', '--driver'],
              description: 'Driver to manage the Network (default "bridge")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--gateway',
              description: 'IPv4 or IPv6 Gateway for the master subnet',
              args: [Arg(name: 'strings')]),
          Option(
              name: '--ingress',
              description: 'Create swarm routing-mesh network'),
          Option(
              name: '--internal',
              description: 'Restrict external access to the network'),
          Option(
              name: '--ip-range',
              description: 'Allocate container ip from a sub-range',
              args: [Arg(name: 'strings')]),
          Option(
              name: '--ipam-driver',
              description: 'IP Address Management Driver (default "default")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--ipam-opt',
              description: 'Set IPAM driver specific options (default map[])',
              args: [Arg(name: 'map')]),
          Option(name: '--ipv6', description: 'Enable IPv6 networking'),
          Option(
              name: '--label',
              description: 'Set metadata on a network',
              args: [Arg(name: 'list')]),
          Option(
              name: ['-o', '--opt'],
              description: 'Set driver specific options (default map[])',
              args: [Arg(name: 'map')]),
          Option(
              name: '--scope',
              description: 'Control the network\'s scope',
              args: [Arg(name: 'string')]),
          Option(
              name: '--subnet',
              description:
                  'Subnet in CIDR format that represents a network segment',
              args: [Arg(name: 'strings')])
        ]),
        Subcommand(
            name: 'disconnect',
            description: 'Disconnect a container from a network',
            args: [
              Arg(
                  name: 'NETWORK',
                  generators: dockerGenerators['listDockerNetworks']),
              containersArg
            ],
            options: [
              Option(
                  name: ['-f', '--force'],
                  description:
                      'Force the container to disconnect from a network')
            ]),
        Subcommand(
            name: 'inspect',
            description: 'Display detailed information on one or more networks',
            args: [
              Arg(
                  name: 'NETWORK',
                  generators: dockerGenerators['listDockerNetworks'],
                  isVariadic: true)
            ],
            options: [
              Option(
                  name: ['-f', '--format'],
                  description: 'Format the output using the given Go template',
                  args: [Arg(name: 'string')]),
              Option(
                  name: ['-v', '--verbose'],
                  description: 'Verbose output for diagnostics')
            ]),
        Subcommand(name: 'ls', description: 'List networks', options: [
          Option(
              name: ['-f', '--filter'],
              description: 'Provide filter values (e.g. \'driver=bridge\')',
              args: [Arg(name: 'filter')]),
          Option(
              name: '--format',
              description: 'Pretty-print networks using a Go template',
              args: [Arg(name: 'string')]),
          Option(name: '--no-trunc', description: 'Do not truncate the output'),
          Option(
              name: ['-q', '--quiet'], description: 'Only display network IDs')
        ]),
        Subcommand(
            name: 'prune',
            description: 'Remove all unused networks',
            options: [
              Option(
                  name: '--filter',
                  description:
                      'Provide filter values (e.g. \'until=<timestamp>\')',
                  args: [Arg(name: 'filter')]),
              Option(
                  name: ['-f', '--force'],
                  description: 'Do not prompt for confirmation')
            ]),
        Subcommand(
            name: 'rm',
            description: 'Remove one or more networks',
            args: [
              Arg(
                  name: 'NETWORK',
                  generators: dockerGenerators['listDockerNetworks'],
                  isVariadic: true)
            ])
      ]),
      Subcommand(name: 'node', description: 'Manage Swarm nodes', subcommands: [
        Subcommand(
            name: 'demote',
            description: 'Demote one or more nodes from manager in the swarm',
            args: [
              Arg(
                  name: 'NODE',
                  generators: dockerGenerators['listDockerSwarmNodes'],
                  isVariadic: true)
            ]),
        Subcommand(
            name: 'inspect',
            description: 'Display detailed information on one or more nodes',
            args: [
              Arg(
                  name: 'NODE',
                  generators: dockerGenerators['listDockerSwarmNodes'],
                  isVariadic: true)
            ],
            options: [
              Option(
                  name: ['-f', '--format'],
                  description: 'Format the output using the given Go template',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--pretty',
                  description:
                      'Print the information in a human friendly format')
            ]),
        Subcommand(
            name: 'ls',
            description: 'List nodes in the swarm',
            options: [
              Option(
                  name: ['-f', '--filter'],
                  description: 'Filter output based on conditions provided',
                  args: [Arg(name: 'filter')]),
              Option(
                  name: '--format',
                  description: 'Pretty-print nodes using a Go template',
                  args: [Arg(name: 'string')]),
              Option(name: ['-q', '--quiet'], description: 'Only display IDs')
            ]),
        Subcommand(
            name: 'promote',
            description: 'Promote one or more nodes to manager in the swarm',
            args: [
              Arg(
                  name: 'NODE',
                  generators: dockerGenerators['listDockerSwarmNodes'],
                  isVariadic: true)
            ]),
        Subcommand(
            name: 'ps',
            description:
                'List tasks running on one or more nodes, defaults to current node',
            args: [
              Arg(
                  name: 'NODE',
                  generators: dockerGenerators['listDockerSwarmNodes'],
                  isVariadic: true)
            ],
            options: [
              Option(
                  name: ['-f', '--filter'],
                  description: 'Filter output based on conditions provided',
                  args: [Arg(name: 'filter')]),
              Option(
                  name: '--format',
                  description: 'Pretty-print tasks using a Go template',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--no-resolve', description: 'Do not map IDs to Names'),
              Option(name: '--no-trunc', description: 'Do not truncate output'),
              Option(
                  name: ['-q', '--quiet'], description: 'Only display task IDs')
            ]),
        Subcommand(
            name: 'rm',
            description: 'Remove one or more nodes from the swarm',
            args: [
              Arg(
                  name: 'NODE',
                  // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerSwarmNodes
// TS_UNCONVERTED_END
                  generators: null,
                  isVariadic: true)
            ],
            options: [
              Option(
                  name: ['-f', '--force'],
                  description: 'Force remove a node from the swarm')
            ]),
        Subcommand(name: 'update', description: 'Update a node', args: [
          Arg(
              name: 'NODE',
              generators: dockerGenerators['listDockerSwarmNodes'],
              isVariadic: true)
        ], options: [
          Option(
              name: '--availability',
              description:
                  'Availability of the node ("active"|"pause"|"drain")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--label-add',
              description: 'Add or update a node label (key=value)',
              args: [Arg(name: 'list')]),
          Option(
              name: '--label-rm',
              description: 'Remove a node label if exists',
              args: [Arg(name: 'list')]),
          Option(
              name: '--role',
              description: 'Role of the node ("worker"|"manager")',
              args: [Arg(name: 'string')])
        ])
      ]),
      Subcommand(
          name: 'buildx',
          description: 'Extended build capabilities with BuildKit',
          subcommands: [
            Subcommand(
                name: 'bake',
                description:
                    'Bake is a high-level build command. Each specified target will run in parallel as part of the build',
                args: [
                  Arg(name: 'string')
                ],
                options: [
                  Option(
                      name: ['-f', '--file'],
                      description: 'Build definition file',
                      args: [Arg(name: 'string', isVariadic: true)]),
                  Option(
                      name: '--load',
                      description: 'Shorthand for --set=*.output=type=docker',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--metadata-file',
                      description: 'Write build result metadata to the file',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--no-cache',
                      description: 'Do not use cache when building the image',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--print',
                      description: 'Print the options without building',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--progress',
                      description:
                          'Set type of progress output (auto, plain, tty). Use plain to show container output',
                      args: [
                        Arg(
                            name: 'progress',
                            defaultValue: 'auto',
                            suggestions: [
                              FigSuggestion(name: 'auto'),
                              FigSuggestion(name: 'plain'),
                              FigSuggestion(name: 'tty')
                            ])
                      ]),
                  Option(
                      name: '--pull',
                      description:
                          'Always attempt to pull all referenced images',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--push',
                      description: 'Shorthand for --set=*.output=type=registry',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--set',
                      description:
                          'Override target value (e.g., targetpattern.key=value)',
                      args: [Arg(name: 'string')])
                ]),
            Subcommand(
                name: 'build',
                description:
                    'The buildx build command starts a build using BuildKit. This command is similar to the UI of docker build command and takes the same flags and arguments',
                args: [
                  Arg(name: 'string')
                ],
                options: [
                  Option(
                      name: '--add-host',
                      description: 'Add a custom host-to-IP mapping',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--allow',
                      description: 'Allow extra privileged entitlement',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--build-arg',
                      description: 'Set build-time variables',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--build-context',
                      description: 'Additional build contexts',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--cache-from',
                      description: 'External cache sources',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--cache-to',
                      description: 'Cache export destinations',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--cgroup-parent',
                      description: 'Optional parent cgroup for the container',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--compress',
                      description: 'Compress the build context using gzip',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--cpu-period',
                      description:
                          'Limit the CPU CFS (Completely Fair Scheduler) period',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--cpu-quota',
                      description:
                          'Limit the CPU CFS (Completely Fair Scheduler) quota',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: ['--cpu-shares', '-c'],
                      description: 'CPU shares (relative weight)',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--cpuset-cpus',
                      description:
                          'CPUs in which to allow execution (0-3, 0,1)',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--cpuset-mems',
                      description:
                          'MEMs in which to allow execution (0-3, 0,1)',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: ['--file', '-f'],
                      description: 'Name of the Dockerfile',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--force-rm',
                      description: 'Always remove intermediate containers',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--iidfile',
                      description: 'Write the image ID to the file',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--invoke',
                      description:
                          'Invoke a command after the build [experimental]',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--isolation',
                      description: 'Container isolation technology',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--label',
                      description: 'Set metadata for an image',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--load',
                      description: 'Shorthand for --output=type=docker',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: ['--memory', '-m'],
                      description: 'Memory limit',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--memory-swap',
                      description:
                          'Swap limit equal to memory plus swap: -1 to enable unlimited swap',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--metadata-file',
                      description: 'Write build result metadata to the file',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--network',
                      description:
                          'Set the networking mode for the RUN instructions during build',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--no-cache',
                      description: 'Do not use cache when building the image',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--no-cache-filter',
                      description: 'Do not cache specified stages',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: ['--output', '-o'],
                      description:
                          'Output destination (format: type=local,dest=path)',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--platform',
                      description: 'Set target platform for build',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--print',
                      description:
                          'Print result of information request (e.g., outline, targets) [experimental]',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--progress',
                      description:
                          'Set type of progress output (auto, plain, tty). Use plain to show container output',
                      args: [
                        Arg(
                            name: 'progress',
                            defaultValue: 'auto',
                            suggestions: [
                              FigSuggestion(name: 'auto'),
                              FigSuggestion(name: 'plain'),
                              FigSuggestion(name: 'tty')
                            ])
                      ]),
                  Option(
                      name: '--pull',
                      description:
                          'Always attempt to pull all referenced images',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--push',
                      description: 'Shorthand for --output=type=registry',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: ['--quiet', '-q'],
                      description:
                          'Suppress the build output and print image ID on success',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--rm',
                      description:
                          'Remove intermediate containers after a successful build',
                      args: [Arg(name: 'container', defaultValue: 'true')]),
                  Option(
                      name: '--secret',
                      description:
                          'Secret to expose to the build (format: id=mysecret[,src=/local/secret])',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--security-opt',
                      description: 'Security options',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--shm-size',
                      description: 'Size of /dev/shm',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--squash',
                      description:
                          'Squash newly built layers into a single new layer',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--ssh',
                      description:
                          'SSH agent socket or keys to expose to the build (format: default|&lt;id&gt;[=&lt;socket&gt;|&lt;key&gt;[,&lt;key&gt;]])',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: ['--tag', '-t'],
                      description:
                          'Name and optionally a tag (format: name:tag)',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--target',
                      description: 'Set the target build stage to build',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--ulimit',
                      description: 'Ulimit options',
                      args: [Arg(name: 'string')])
                ]),
            Subcommand(
                name: 'create',
                description: 'Create a new builder instance',
                args: [
                  Arg(name: 'string')
                ],
                options: [
                  Option(
                      name: '--append',
                      description:
                          'Append a node to builder instead of changing it',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--bootstrap',
                      description: 'Boot builder after creation',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--buildkitd-flags',
                      description: 'Flags for buildkitd daemon',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--config',
                      description: 'BuildKit config file',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--driver',
                      description:
                          'Driver to use (available: docker-container, kubernetes, remote)',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--driver-opt',
                      description: 'Options for the driver',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--leave',
                      description:
                          'Remove a node from builder instead of changing it',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--name',
                      description: 'Builder instance name',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--node',
                      description: 'Create/modify node with given name',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--platform',
                      description: 'Fixed platforms for current node',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--use',
                      description: 'Set the current builder instance',
                      args: [Arg(name: 'string')])
                ]),
            Subcommand(name: 'du', description: 'Disk usage', args: [
              Arg(name: 'string')
            ], options: [
              Option(name: '--filter', description: 'Provide filter values'),
              Option(
                  name: '--verbose',
                  description: 'Provide a more verbose output')
            ]),
            Subcommand(
                name: 'imagetools',
                description:
                    'Imagetools contains commands for working with manifest lists in the registry. These commands are useful for inspecting multi-platform build results',
                args: [
                  Arg(name: 'string')
                ],
                subcommands: [
                  Subcommand(
                      name: 'create',
                      description: 'Create a new image based on source images',
                      args: [
                        Arg(name: 'string')
                      ],
                      options: [
                        Option(
                            name: '--append',
                            description: 'Append to existing manifest',
                            args: [Arg(name: 'string')]),
                        Option(
                            name: '--dry-run',
                            description: 'Show final image instead of pushing',
                            args: [Arg(name: 'string')]),
                        Option(
                            name: ['--file', '-f'],
                            description: 'Read source descriptor from file',
                            args: [Arg(name: 'string')]),
                        Option(
                            name: '--progress',
                            description:
                                'Set type of progress output (auto, plain, tty). Use plain to show container output',
                            args: [
                              Arg(
                                  name: 'progress',
                                  defaultValue: 'auto',
                                  suggestions: [
                                    FigSuggestion(name: 'auto'),
                                    FigSuggestion(name: 'plain'),
                                    FigSuggestion(name: 'tty')
                                  ])
                            ]),
                        Option(
                            name: ['--tag', '-t'],
                            description: 'Set reference for new image',
                            args: [Arg(name: 'string')])
                      ]),
                  Subcommand(
                      name: 'inspect',
                      description: 'Inspect current builder instance',
                      args: [
                        Arg(name: 'string')
                      ],
                      options: [
                        Option(
                            name: '--format',
                            description:
                                'Format the output using the given Go template',
                            args: [
                              Arg(name: 'sting', defaultValue: '{{.Manifest}}')
                            ]),
                        Option(
                            name: '--raw',
                            description:
                                'Show original, unformatted JSON manifest')
                      ])
                ]),
            Subcommand(
                name: 'inspect',
                description: 'Inspect current builder instance',
                args: [
                  Arg(name: 'string')
                ],
                options: [
                  Option(
                      name: '--bootstrap',
                      description:
                          'Ensure builder has booted before inspecting',
                      args: [Arg(name: 'string')])
                ]),
            Subcommand(
                name: 'install',
                description: 'Install buildx as a ‘docker builder’ alias'),
            Subcommand(name: 'ls', description: 'List builder instances'),
            Subcommand(name: 'prune', description: 'Remove build cache', args: [
              Arg(name: 'string')
            ], options: [
              Option(
                  name: ['--all', '-a'],
                  description: 'Include internal/frontend images',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--filter',
                  description: 'Provide filter values (e.g., until=24h)',
                  args: [Arg(name: 'string')]),
              Option(
                  name: ['--force', '-f'],
                  description: 'Do not prompt for confirmation',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--keep-storage',
                  description: 'Amount of disk space to keep for cache',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--verbose',
                  description: 'Provide a more verbose output',
                  args: [Arg(name: 'string')])
            ]),
            Subcommand(
                name: 'rm',
                description: 'Remove a builder instance',
                args: [
                  Arg(name: 'string')
                ],
                options: [
                  Option(
                      name: '--all-inactive',
                      description: 'Remove all inactive builders',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: ['--force', '-f'],
                      description: 'Do not prompt for confirmation',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--keep-daemon',
                      description: 'Keep the buildkitd daemon running',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--keep-state',
                      description: 'Keep BuildKit state',
                      args: [Arg(name: 'string')])
                ]),
            Subcommand(
                name: 'stop',
                description: 'Stop builder instance',
                args: [Arg(name: 'string')]),
            Subcommand(
                name: 'uninstall',
                description: 'Uninstall the ‘docker builder’ alias'),
            Subcommand(
                name: 'use',
                description: 'Set the current builder instance',
                args: [
                  Arg(name: 'string')
                ],
                options: [
                  Option(
                      name: '--default',
                      description: 'Set builder as default for current context',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--global',
                      description: 'Builder persists context changes',
                      args: [Arg(name: 'string')])
                ]),
            Subcommand(
                name: 'version', description: 'Show buildx version information')
          ],
          options: [
            Option(
                name: '--builder',
                description: 'Override the configured builder instance',
                isPersistent: true,
                args: [Arg(name: 'string')])
          ]),
      Subcommand(name: 'plugin', description: 'Manage plugins', subcommands: [
        Subcommand(
            name: 'create',
            description:
                'Create a plugin from a rootfs and configuration. Plugin data directory must contain config.json and rootfs directory',
            args: [
              Arg(name: 'PLUGIN'),
              Arg(name: 'PLUGIN-DATA-DIR', template: 'filepaths')
            ],
            options: [
              Option(
                  name: '--compress',
                  description: 'Compress the context using gzip')
            ]),
        Subcommand(name: 'disable', description: 'Disable a plugin', args: [
          Arg(
              name: 'PLUGIN',
              // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerPlugins
// TS_UNCONVERTED_END
              generators: null)
        ], options: [
          Option(
              name: ['-f', '--force'],
              description: 'Force the disable of an active plugin')
        ]),
        Subcommand(name: 'enable', description: 'Enable a plugin', args: [
          Arg(
              name: 'PLUGIN',
              // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerPlugins
// TS_UNCONVERTED_END
              generators: null)
        ], options: [
          Option(
              name: '--timeout',
              description: 'HTTP client timeout (in seconds) (default 30)',
              args: [Arg(name: 'int')])
        ]),
        Subcommand(
            name: 'inspect',
            description: 'Display detailed information on one or more plugins',
            args: [
              Arg(
                  name: 'PLUGIN',
                  // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerPlugins
// TS_UNCONVERTED_END
                  generators: null,
                  isVariadic: true)
            ],
            options: [
              Option(
                  name: ['-f', '--format'],
                  description: 'Format the output using the given Go template',
                  args: [Arg(name: 'string')])
            ]),
        Subcommand(name: 'install', description: 'Install a plugin', args: [
          Arg(name: 'PLUGIN'),
          Arg(name: 'KEY=VALUE', isVariadic: true)
        ], options: [
          Option(
              name: '--alias',
              description: 'Local name for plugin',
              args: [Arg(name: 'string')]),
          Option(
              name: '--disable',
              description: 'Do not enable the plugin on install'),
          Option(
              name: '--disable-content-trust',
              description: 'Skip image verification (default true)'),
          Option(
              name: '--grant-all-permissions',
              description: 'Grant all permissions necessary to run the plugin')
        ]),
        Subcommand(name: 'ls', description: 'List plugins', options: [
          Option(
              name: ['-f', '--filter'],
              description: 'Provide filter values (e.g. \'enabled=true\')',
              args: [Arg(name: 'filter')]),
          Option(
              name: '--format',
              description: 'Pretty-print plugins using a Go template',
              args: [Arg(name: 'string')]),
          Option(name: '--no-trunc', description: 'Don\'t truncate output'),
          Option(
              name: ['-q', '--quiet'], description: 'Only display plugin IDs')
        ]),
        Subcommand(
            name: 'push',
            description: 'Push a plugin to a registry',
            args: [
              Arg(name: 'PLUGIN:[TAG')
            ],
            options: [
              Option(
                  name: '--disable-content-trust',
                  description: 'Skip image signing (default true)')
            ]),
        Subcommand(
            name: 'rm',
            description: 'Remove one or more plugins',
            args: [
              Arg(
                  name: 'PLUGIN',
                  // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerPlugins
// TS_UNCONVERTED_END
                  generators: null,
                  isVariadic: true)
            ],
            options: [
              Option(
                  name: ['-f', '--force'],
                  description: 'Force the removal of an active plugin')
            ]),
        Subcommand(
            name: 'set',
            description: 'Change settings for a plugin',
            args: [
              Arg(
                  name: 'PLUGIN',
                  // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerPlugins
// TS_UNCONVERTED_END
                  generators: null),
              Arg(name: 'KEY=VALUE', isVariadic: true)
            ]),
        Subcommand(
            name: 'upgrade',
            description: 'Upgrade an existing plugin',
            args: [
              Arg(
                  name: 'PLUGIN',
                  // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerPlugins
// TS_UNCONVERTED_END
                  generators: null),
              Arg(name: 'REMOTE')
            ],
            options: [
              Option(
                  name: '--disable-content-trust',
                  description: 'Skip image verification (default true)'),
              Option(
                  name: '--grant-all-permissions',
                  description:
                      'Grant all permissions necessary to run the plugin'),
              Option(
                  name: '--skip-remote-check',
                  description:
                      'Do not check if specified remote plugin matches existing plugin image')
            ])
      ]),
      Subcommand(
          name: 'secret',
          description: 'Manage Docker secrets',
          subcommands: [
            Subcommand(
                name: 'create',
                description: 'Create a secret from a file or STDIN as content',
                args: [
                  Arg(name: 'SECRET NAME'),
                  Arg(name: 'SECRET', template: 'filepaths')
                ],
                options: [
                  Option(
                      name: ['-d', '--driver'],
                      description: 'Secret driver',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: ['-l', '--label'],
                      description: 'Secret labels',
                      args: [Arg(name: 'list')]),
                  Option(
                      name: '--template-driver',
                      description: 'Template driver',
                      args: [Arg(name: 'string')])
                ]),
            Subcommand(
                name: 'inspect',
                description:
                    'Display detailed information on one or more secrets',
                args: [
                  Arg(
                      name: 'SECRET',
                      // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerSecrets
// TS_UNCONVERTED_END
                      generators: null,
                      isVariadic: true)
                ],
                options: [
                  Option(
                      name: ['-f', '--format'],
                      description:
                          'Format the output using the given Go template',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--pretty',
                      description:
                          'Print the information in a human friendly format')
                ]),
            Subcommand(name: 'ls', description: 'List secrets', options: [
              Option(
                  name: ['-f', '--filter'],
                  description: 'Filter output based on conditions provided',
                  args: [Arg(name: 'filter')]),
              Option(
                  name: '--format',
                  description: 'Pretty-print secrets using a Go template',
                  args: [Arg(name: 'string')]),
              Option(name: ['-q', '--quiet'], description: 'Only display IDs')
            ]),
            Subcommand(
                name: 'rm',
                description: 'Remove one or more secrets',
                args: [
                  Arg(
                      name: 'SECRET',
                      // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerSecrets
// TS_UNCONVERTED_END
                      generators: null,
                      isVariadic: true)
                ])
          ]),
      Subcommand(name: 'service', description: 'Manage services', subcommands: [
        Subcommand(name: 'create', description: 'Create a new service', args: [
          // TS_UNCONVERTED_START (argsItem)
// imagesArg
// TS_UNCONVERTED_END
          null,
          Arg(name: 'COMMAND', isOptional: true)
        ], options: [
          Option(
              name: '--cap-add',
              description: 'Add Linux capabilities',
              args: [Arg(name: 'list')]),
          Option(
              name: '--cap-drop',
              description: 'Drop Linux capabilities',
              args: [Arg(name: 'list')]),
          Option(
              name: '--config',
              description: 'Specify configurations to expose to the service',
              args: [Arg(name: 'config')]),
          Option(
              name: '--constraint',
              description: 'Placement constraints',
              args: [Arg(name: 'list')]),
          Option(
              name: '--container-label',
              description: 'Container labels',
              args: [Arg(name: 'list')]),
          Option(
              name: '--credential-spec',
              description:
                  'Credential spec for managed service account (Windows only)',
              args: [Arg(name: 'credential-spec')]),
          Option(
              name: ['-d', '--detach'],
              description:
                  'Exit immediately instead of waiting for the service to converge'),
          Option(
              name: '--dns',
              description: 'Set custom DNS servers',
              args: [Arg(name: 'list')]),
          Option(
              name: '--dns-option',
              description: 'Set DNS options',
              args: [Arg(name: 'list')]),
          Option(
              name: '--dns-search',
              description: 'Set custom DNS search domains',
              args: [Arg(name: 'list')]),
          Option(
              name: '--endpoint-mode',
              description: 'Endpoint mode (vip or dnsrr) (default "vip")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--entrypoint',
              description: 'Overwrite the default ENTRYPOINT of the image',
              args: [Arg(name: 'command')]),
          Option(
              name: ['-e', '--env'],
              description: 'Set environment variables',
              args: [Arg(name: 'list')]),
          Option(
              name: '--env-file',
              description: 'Read in a file of environment variables',
              args: [Arg(name: 'list')]),
          Option(
              name: '--generic-resource',
              description: 'User defined resources',
              args: [Arg(name: 'list')]),
          Option(
              name: '--group',
              description:
                  'Set one or more supplementary user groups for the container',
              args: [Arg(name: 'list')]),
          Option(
              name: '--health-cmd',
              description: 'Command to run to check health',
              args: [Arg(name: 'string')]),
          Option(
              name: '--health-interval',
              description: 'Time between running the check (ms|s|m|h)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--health-retries',
              description: 'Consecutive failures needed to report unhealthy',
              args: [Arg(name: 'int')]),
          Option(
              name: '--health-start-period',
              description:
                  'Start period for the container to initialize before counting retries towards unstable (ms|s|m|h)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--health-timeout',
              description: 'Maximum time to allow one check to run (ms|s|m|h)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--host',
              description:
                  'Set one or more custom host-to-IP mappings (host:ip)',
              args: [Arg(name: 'list')]),
          Option(
              name: '--hostname',
              description: 'Container hostname',
              args: [Arg(name: 'string')]),
          Option(
              name: '--init',
              description:
                  'Use an init inside each service container to forward signals and reap processes'),
          Option(
              name: '--isolation',
              description: 'Service container isolation mode',
              args: [Arg(name: 'string')]),
          Option(
              name: ['-l', '--label'],
              description: 'Service labels',
              args: [Arg(name: 'list')]),
          Option(
              name: '--limit-cpu',
              description: 'Limit CPUs',
              args: [Arg(name: 'decimal')]),
          Option(
              name: '--limit-memory',
              description: 'Limit Memory',
              args: [Arg(name: 'bytes')]),
          Option(
              name: '--limit-pids',
              description:
                  'Limit maximum number of processes (default 0 = unlimited)',
              args: [Arg(name: 'int')]),
          Option(
              name: '--log-driver',
              description: 'Logging driver for service',
              args: [Arg(name: 'string')]),
          Option(
              name: '--log-opt',
              description: 'Logging driver options',
              args: [Arg(name: 'list')]),
          Option(
              name: '--max-concurrent',
              description:
                  'Number of job tasks to run concurrently (default equal to --replicas)',
              args: [Arg(name: 'uint')]),
          Option(
              name: '--mode',
              description:
                  'Service mode (replicated, global, replicated-job, or global-job) (default "replicated")',
              args: [
                Arg(name: 'string', suggestions: [
                  FigSuggestion(name: 'replicated'),
                  FigSuggestion(name: 'global'),
                  FigSuggestion(name: 'replicated-job'),
                  FigSuggestion(name: 'global-job')
                ])
              ]),
          Option(
              name: '--mount',
              description: 'Attach a filesystem mount to the service',
              args: [Arg(name: 'mount')]),
          Option(
              name: '--name',
              description: 'Service name',
              args: [Arg(name: 'string')]),
          Option(
              name: '--network',
              description: 'Network attachments',
              args: [Arg(name: 'network')]),
          Option(
              name: '--no-healthcheck',
              description: 'Disable any container-specified HEALTHCHECK'),
          Option(
              name: '--no-resolve-image',
              description:
                  'Do not query the registry to resolve image digest and supported platforms'),
          Option(
              name: '--placement-pref',
              description: 'Add a placement preference',
              args: [Arg(name: 'pref')]),
          Option(
              name: ['-p', '--publish'],
              description: 'Publish a port as a node port',
              args: [Arg(name: 'port')]),
          Option(
              name: ['-q', '--quiet'], description: 'Suppress progress output'),
          Option(
              name: '--read-only',
              description:
                  'Mount the container\'s root filesystem as read only'),
          Option(
              name: '--replicas',
              description: 'Number of tasks',
              args: [Arg(name: 'uint')]),
          Option(
              name: '--replicas-max-per-node',
              description:
                  'Maximum number of tasks per node (default 0 = unlimited)',
              args: [Arg(name: 'uint')]),
          Option(
              name: '--reserve-cpu',
              description: 'Reserve CPUs',
              args: [Arg(name: 'decimal')]),
          Option(
              name: '--reserve-memory',
              description: 'Reserve Memory',
              args: [Arg(name: 'bytes')]),
          Option(
              name: '--restart-condition',
              description:
                  'Restart when condition is met ("none"|"on-failure"|"any") (default "any")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--restart-delay',
              description:
                  'Delay between restart attempts (ns|us|ms|s|m|h) (default 5s)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--restart-max-attempts',
              description: 'Maximum number of restarts before giving up',
              args: [Arg(name: 'uint')]),
          Option(
              name: '--restart-window',
              description:
                  'Window used to evaluate the restart policy (ns|us|ms|s|m|h)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--rollback-delay',
              description:
                  'Delay between task rollbacks (ns|us|ms|s|m|h) (default 0s)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--rollback-failure-action',
              description:
                  'Action on rollback failure ("pause"|"continue") (default "pause")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--rollback-max-failure-ratio',
              description:
                  'Failure rate to tolerate during a rollback (default 0)',
              args: [Arg(name: 'float')]),
          Option(
              name: '--rollback-monitor',
              description:
                  'Duration after each task rollback to monitor for failure (ns|us|ms|s|m|h) (default 5s)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--rollback-order',
              description:
                  'Rollback order ("start-first"|"stop-first") (default "stop-first")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--rollback-parallelism',
              description:
                  'Maximum number of tasks rolled back simultaneously (0 to roll back all at once) (default 1)',
              args: [Arg(name: 'uint')]),
          Option(
              name: '--secret',
              description: 'Specify secrets to expose to the service',
              args: [Arg(name: 'secret')]),
          Option(
              name: '--stop-grace-period',
              description:
                  'Time to wait before force killing a container (ns|us|ms|s|m|h) (default 10s)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--stop-signal',
              description: 'Signal to stop the container',
              args: [Arg(name: 'string')]),
          Option(
              name: '--sysctl',
              description: 'Sysctl options',
              args: [Arg(name: 'list')]),
          Option(name: ['-t', '--tty'], description: 'Allocate a pseudo-TTY'),
          Option(
              name: '--ulimit',
              description: 'Ulimit options (default [])',
              args: [Arg(name: 'ulimit')]),
          Option(
              name: '--update-delay',
              description:
                  'Delay between updates (ns|us|ms|s|m|h) (default 0s)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--update-failure-action',
              description:
                  'Action on update failure ("pause"|"continue"|"rollback") (default "pause")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--update-max-failure-ratio',
              description:
                  'Failure rate to tolerate during an update (default 0)',
              args: [Arg(name: 'float')]),
          Option(
              name: '--update-monitor',
              description:
                  'Duration after each task update to monitor for failure (ns|us|ms|s|m|h) (default 5s)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--update-order',
              description:
                  'Update order ("start-first"|"stop-first") (default "stop-first")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--update-parallelism',
              description:
                  'Maximum number of tasks updated simultaneously (0 to update all at once) (default 1)',
              args: [Arg(name: 'uint')]),
          Option(
              name: ['-u', '--user'],
              description: 'Username or UID (format: <name|uid>[:<group|gid>])',
              args: [Arg(name: 'string')]),
          Option(
              name: '--with-registry-auth',
              description:
                  'Send registry authentication details to swarm agents'),
          Option(
              name: ['-w', '--workdir'],
              description: 'Working directory inside the container',
              args: [Arg(name: 'string')])
        ]),
        Subcommand(
            name: 'inspect',
            description: 'Display detailed information on one or more services',
            args: [
              Arg(
                  name: 'SERVICE',
                  // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerServices
// TS_UNCONVERTED_END
                  generators: null,
                  isVariadic: true)
            ],
            options: [
              Option(
                  name: ['-f', '--format'],
                  description: 'Format the output using the given Go template',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--pretty',
                  description:
                      'Print the information in a human friendly format')
            ]),
        Subcommand(
            name: 'logs',
            description: 'Fetch the logs of a service or task',
            args: [
              Arg(
                  name: 'SERVICE OR TASK',
                  // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerServices
// TS_UNCONVERTED_END
                  generators: null)
            ],
            options: [
              Option(
                  name: '--details',
                  description: 'Show extra details provided to logs'),
              Option(
                  name: ['-f', '--follow'], description: 'Follow log output'),
              Option(
                  name: '--no-resolve',
                  description: 'Do not map IDs to Names in output'),
              Option(
                  name: '--no-task-ids',
                  description: 'Do not include task IDs in output'),
              Option(name: '--no-trunc', description: 'Do not truncate output'),
              Option(name: '--raw', description: 'Do not neatly format logs'),
              Option(
                  name: '--since',
                  description:
                      'Show logs since timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)',
                  args: [Arg(name: 'string')]),
              Option(
                  name: ['-n', '--tail'],
                  description:
                      'Number of lines to show from the end of the logs (default "all")',
                  args: [Arg(name: 'string')]),
              Option(
                  name: ['-t', '--timestamps'], description: 'Show timestamps')
            ]),
        Subcommand(name: 'ls', description: 'List services', options: [
          Option(
              name: ['-f', '--filter'],
              description: 'Filter output based on conditions provided',
              args: [Arg(name: 'filter')]),
          Option(
              name: '--format',
              description: 'Pretty-print services using a Go template',
              args: [Arg(name: 'string')]),
          Option(name: ['-q', '--quiet'], description: 'Only display IDs')
        ]),
        Subcommand(
            name: 'ps',
            description: 'List the tasks of one or more services',
            args: [
              Arg(
                  name: 'SERVICE',
                  // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerServices
// TS_UNCONVERTED_END
                  generators: null,
                  isVariadic: true)
            ],
            options: [
              Option(
                  name: ['-f', '--filter'],
                  description: 'Filter output based on conditions provided',
                  args: [Arg(name: 'filter')]),
              Option(
                  name: '--format',
                  description: 'Pretty-print tasks using a Go template',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--no-resolve', description: 'Do not map IDs to Names'),
              Option(name: '--no-trunc', description: 'Do not truncate output'),
              Option(
                  name: ['-q', '--quiet'], description: 'Only display task IDs')
            ]),
        Subcommand(
            name: 'rm',
            description: 'Remove one or more services',
            args: [
              Arg(
                  name: 'SERVICE',
                  // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerServices
// TS_UNCONVERTED_END
                  generators: null,
                  isVariadic: true)
            ]),
        Subcommand(
            name: 'rollback',
            description: 'Revert changes to a service\'s configuration',
            args: [
              Arg(
                  name: 'SERVICE',
                  // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerServices
// TS_UNCONVERTED_END
                  generators: null)
            ],
            options: [
              Option(
                  name: ['-d', '--detach'],
                  description:
                      'Exit immediately instead of waiting for the service to converge'),
              Option(
                  name: ['-q', '--quiet'],
                  description: 'Suppress progress output')
            ]),
        Subcommand(
            name: 'scale',
            description: 'Scale one or multiple replicated services',
            args: [
              Arg(
                  name: 'SERVICE=REPLICAS',
                  // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerServicesReplicas
// TS_UNCONVERTED_END
                  generators: null,
                  isVariadic: true)
            ],
            options: [
              Option(
                  name: ['-d', '--detach'],
                  description:
                      'Exit immediately instead of waiting for the service to converge')
            ]),
        Subcommand(name: 'update', description: 'Update a service', args: [
          Arg(
              name: 'SERVICE',
              // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerServices
// TS_UNCONVERTED_END
              generators: null)
        ], options: [
          Option(
              name: '--args',
              description: 'Service command args',
              args: [Arg(name: 'command')]),
          Option(
              name: '--cap-add',
              description: 'Add Linux capabilities',
              args: [Arg(name: 'list')]),
          Option(
              name: '--cap-drop',
              description: 'Drop Linux capabilities',
              args: [Arg(name: 'list')]),
          Option(
              name: '--config-add',
              description: 'Add or update a config file on a service',
              args: [Arg(name: 'config')]),
          Option(
              name: '--config-rm',
              description: 'Remove a configuration file',
              args: [Arg(name: 'list')]),
          Option(
              name: '--constraint-add',
              description: 'Add or update a placement constraint',
              args: [Arg(name: 'list')]),
          Option(
              name: '--constraint-rm',
              description: 'Remove a constraint',
              args: [Arg(name: 'list')]),
          Option(
              name: '--container-label-add',
              description: 'Add or update a container label',
              args: [Arg(name: 'list')]),
          Option(
              name: '--container-label-rm',
              description: 'Remove a container label by its key',
              args: [Arg(name: 'list')]),
          Option(
              name: '--credential-spec',
              description:
                  'Credential spec for managed service account (Windows only)',
              args: [Arg(name: 'credential-spec')]),
          Option(
              name: ['-d', '--detach'],
              description:
                  'Exit immediately instead of waiting for the service to converge'),
          Option(
              name: '--dns-add',
              description: 'Add or update a custom DNS server',
              args: [Arg(name: 'list')]),
          Option(
              name: '--dns-option-add',
              description: 'Add or update a DNS option',
              args: [Arg(name: 'list')]),
          Option(
              name: '--dns-option-rm',
              description: 'Remove a DNS option',
              args: [Arg(name: 'list')]),
          Option(
              name: '--dns-rm',
              description: 'Remove a custom DNS server',
              args: [Arg(name: 'list')]),
          Option(
              name: '--dns-search-add',
              description: 'Add or update a custom DNS search domain',
              args: [Arg(name: 'list')]),
          Option(
              name: '--dns-search-rm',
              description: 'Remove a DNS search domain',
              args: [Arg(name: 'list')]),
          Option(
              name: '--endpoint-mode',
              description: 'Endpoint mode (vip or dnsrr)',
              args: [Arg(name: 'string')]),
          Option(
              name: '--entrypoint',
              description: 'Overwrite the default ENTRYPOINT of the image',
              args: [Arg(name: 'command')]),
          Option(
              name: '--env-add',
              description: 'Add or update an environment variable',
              args: [Arg(name: 'list')]),
          Option(
              name: '--env-rm',
              description: 'Remove an environment variable',
              args: [Arg(name: 'list')]),
          Option(
              name: '--force',
              description: 'Force update even if no changes require it'),
          Option(
              name: '--generic-resource-add',
              description: 'Add a Generic resource',
              args: [Arg(name: 'list')]),
          Option(
              name: '--generic-resource-rm',
              description: 'Remove a Generic resource',
              args: [Arg(name: 'list')]),
          Option(
              name: '--group-add',
              description:
                  'Add an additional supplementary user group to the container',
              args: [Arg(name: 'list')]),
          Option(
              name: '--group-rm',
              description:
                  'Remove a previously added supplementary user group from the container',
              args: [Arg(name: 'list')]),
          Option(
              name: '--health-cmd',
              description: 'Command to run to check health',
              args: [Arg(name: 'string')]),
          Option(
              name: '--health-interval',
              description: 'Time between running the check (ms|s|m|h)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--health-retries',
              description: 'Consecutive failures needed to report unhealthy',
              args: [Arg(name: 'int')]),
          Option(
              name: '--health-start-period',
              description:
                  'Start period for the container to initialize before counting retries towards unstable (ms|s|m|h)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--health-timeout',
              description: 'Maximum time to allow one check to run (ms|s|m|h)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--host-add',
              description: 'Add a custom host-to-IP mapping (host:ip)',
              args: [Arg(name: 'list')]),
          Option(
              name: '--host-rm',
              description: 'Remove a custom host-to-IP mapping (host:ip)',
              args: [Arg(name: 'list')]),
          Option(
              name: '--hostname',
              description: 'Container hostname',
              args: [Arg(name: 'string')]),
          Option(
              name: '--image',
              description: 'Service image tag',
              args: [Arg(name: 'string')]),
          Option(
              name: '--init',
              description:
                  'Use an init inside each service container to forward signals and reap processes'),
          Option(
              name: '--isolation',
              description: 'Service container isolation mode',
              args: [Arg(name: 'string')]),
          Option(
              name: '--label-add',
              description: 'Add or update a service label',
              args: [Arg(name: 'list')]),
          Option(
              name: '--label-rm',
              description: 'Remove a label by its key',
              args: [Arg(name: 'list')]),
          Option(
              name: '--limit-cpu',
              description: 'Limit CPUs',
              args: [Arg(name: 'decimal')]),
          Option(
              name: '--limit-memory',
              description: 'Limit Memory',
              args: [Arg(name: 'bytes')]),
          Option(
              name: '--limit-pids',
              description:
                  'Limit maximum number of processes (default 0 = unlimited)',
              args: [Arg(name: 'int')]),
          Option(
              name: '--log-driver',
              description: 'Logging driver for service',
              args: [Arg(name: 'string')]),
          Option(
              name: '--log-opt',
              description: 'Logging driver options',
              args: [Arg(name: 'list')]),
          Option(
              name: '--max-concurrent',
              description:
                  'Number of job tasks to run concurrently (default equal to --replicas)',
              args: [Arg(name: 'uint')]),
          Option(
              name: '--mount-add',
              description: 'Add or update a mount on a service',
              args: [Arg(name: 'mount')]),
          Option(
              name: '--mount-rm',
              description: 'Remove a mount by its target path',
              args: [Arg(name: 'list')]),
          Option(
              name: '--network-add',
              description: 'Add a network',
              args: [Arg(name: 'network')]),
          Option(
              name: '--network-rm',
              description: 'Remove a network',
              args: [Arg(name: 'list')]),
          Option(
              name: '--no-healthcheck',
              description: 'Disable any container-specified HEALTHCHECK'),
          Option(
              name: '--no-resolve-image',
              description:
                  'Do not query the registry to resolve image digest and supported platforms'),
          Option(
              name: '--placement-pref-add',
              description: 'Add a placement preference',
              args: [Arg(name: 'pref')]),
          Option(
              name: '--placement-pref-rm',
              description: 'Remove a placement preference',
              args: [Arg(name: 'pref')]),
          Option(
              name: '--publish-add',
              description: 'Add or update a published port',
              args: [Arg(name: 'port')]),
          Option(
              name: '--publish-rm',
              description: 'Remove a published port by its target port',
              args: [Arg(name: 'port')]),
          Option(
              name: ['-q', '--quiet'], description: 'Suppress progress output'),
          Option(
              name: '--read-only',
              description:
                  'Mount the container\'s root filesystem as read only'),
          Option(
              name: '--replicas',
              description: 'Number of tasks',
              args: [Arg(name: 'uint')]),
          Option(
              name: '--replicas-max-per-node',
              description:
                  'Maximum number of tasks per node (default 0 = unlimited)',
              args: [Arg(name: 'uint')]),
          Option(
              name: '--reserve-cpu',
              description: 'Reserve CPUs',
              args: [Arg(name: 'decimal')]),
          Option(
              name: '--reserve-memory',
              description: 'Reserve Memory',
              args: [Arg(name: 'bytes')]),
          Option(
              name: '--restart-condition',
              description:
                  'Restart when condition is met ("none"|"on-failure"|"any")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--restart-delay',
              description: 'Delay between restart attempts (ns|us|ms|s|m|h)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--restart-max-attempts',
              description: 'Maximum number of restarts before giving up',
              args: [Arg(name: 'uint')]),
          Option(
              name: '--restart-window',
              description:
                  'Window used to evaluate the restart policy (ns|us|ms|s|m|h)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--rollback',
              description: 'Rollback to previous specification'),
          Option(
              name: '--rollback-delay',
              description: 'Delay between task rollbacks (ns|us|ms|s|m|h)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--rollback-failure-action',
              description: 'Action on rollback failure ("pause"|"continue")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--rollback-max-failure-ratio',
              description: 'Failure rate to tolerate during a rollback',
              args: [Arg(name: 'float')]),
          Option(
              name: '--rollback-monitor',
              description:
                  'Duration after each task rollback to monitor for failure (ns|us|ms|s|m|h)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--rollback-order',
              description: 'Rollback order ("start-first"|"stop-first")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--rollback-parallelism',
              description:
                  'Maximum number of tasks rolled back simultaneously (0 to roll back all at once)',
              args: [Arg(name: 'uint')]),
          Option(
              name: '--secret-add',
              description: 'Add or update a secret on a service',
              args: [Arg(name: 'secret')]),
          Option(
              name: '--secret-rm',
              description: 'Remove a secret',
              args: [Arg(name: 'list')]),
          Option(
              name: '--stop-grace-period',
              description:
                  'Time to wait before force killing a container (ns|us|ms|s|m|h)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--stop-signal',
              description: 'Signal to stop the container',
              args: [Arg(name: 'string')]),
          Option(
              name: '--sysctl-add',
              description: 'Add or update a Sysctl option',
              args: [Arg(name: 'list')]),
          Option(
              name: '--sysctl-rm',
              description: 'Remove a Sysctl option',
              args: [Arg(name: 'list')]),
          Option(name: ['-t', '--tty'], description: 'Allocate a pseudo-TTY'),
          Option(
              name: '--ulimit-add',
              description: 'Add or update a ulimit option (default [])',
              args: [Arg(name: 'ulimit')]),
          Option(
              name: '--ulimit-rm',
              description: 'Remove a ulimit option',
              args: [Arg(name: 'list')]),
          Option(
              name: '--update-delay',
              description: 'Delay between updates (ns|us|ms|s|m|h)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--update-failure-action',
              description:
                  'Action on update failure ("pause"|"continue"|"rollback")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--update-max-failure-ratio',
              description: 'Failure rate to tolerate during an update',
              args: [Arg(name: 'float')]),
          Option(
              name: '--update-monitor',
              description:
                  'Duration after each task update to monitor for failure (ns|us|ms|s|m|h)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--update-order',
              description: 'Update order ("start-first"|"stop-first")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--update-parallelism',
              description:
                  'Maximum number of tasks updated simultaneously (0 to update all at once)',
              args: [Arg(name: 'uint')]),
          Option(
              name: ['-u', '--user'],
              description: 'Username or UID (format: <name|uid>[:<group|gid>])',
              args: [Arg(name: 'string')]),
          Option(
              name: '--with-registry-auth',
              description:
                  'Send registry authentication details to swarm agents'),
          Option(
              name: ['-w', '--workdir'],
              description: 'Working directory inside the container',
              args: [Arg(name: 'string')])
        ])
      ]),
      Subcommand(
          name: 'stack',
          description: 'Manage Docker stacks',
          subcommands: [
            Subcommand(
                name: 'deploy',
                description: 'Deploy a new stack or update an existing stack',
                args: [
                  Arg(name: 'STACK')
                ],
                options: [
                  Option(
                      name: ['-c', '--compose-file'],
                      description:
                          'Path to a Compose file, or "-" to read from stdin',
                      args: [Arg(name: 'strings', template: 'filepaths')]),
                  Option(
                      name: '--orchestrator',
                      description: 'Orchestrator to use (swarm|kubernetes|all)',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--prune',
                      description:
                          'Prune services that are no longer referenced'),
                  Option(
                      name: '--resolve-image',
                      description:
                          'Query the registry to resolve image digest and supported platforms ("always"|"changed"|"never") (default "always")',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--with-registry-auth',
                      description:
                          'Send registry authentication details to Swarm agents')
                ]),
            Subcommand(name: 'ls', description: 'List stacks', options: [
              Option(
                  name: '--format',
                  description: 'Pretty-print stacks using a Go template',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--orchestrator',
                  description: 'Orchestrator to use (swarm|kubernetes|all)',
                  args: [Arg(name: 'string')])
            ]),
            Subcommand(
                name: 'ps',
                description: 'List the tasks in the stack',
                args: [
                  Arg(
                      name: 'STACK',
                      // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerStacks
// TS_UNCONVERTED_END
                      generators: null)
                ],
                options: [
                  Option(
                      name: ['-f', '--filter'],
                      description: 'Filter output based on conditions provided',
                      args: [Arg(name: 'filter')]),
                  Option(
                      name: '--format',
                      description: 'Pretty-print tasks using a Go template',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--no-resolve',
                      description: 'Do not map IDs to Names'),
                  Option(
                      name: '--no-trunc',
                      description: 'Do not truncate output'),
                  Option(
                      name: '--orchestrator',
                      description: 'Orchestrator to use (swarm|kubernetes|all)',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: ['-q', '--quiet'],
                      description: 'Only display task IDs')
                ]),
            Subcommand(
                name: 'rm',
                description: 'Remove one or more stacks',
                args: [
                  Arg(
                      name: 'STACK',
                      // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerStacks
// TS_UNCONVERTED_END
                      generators: null,
                      isVariadic: true)
                ],
                options: [
                  Option(
                      name: '--orchestrator',
                      description: 'Orchestrator to use (swarm|kubernetes|all)',
                      args: [Arg(name: 'string')])
                ]),
            Subcommand(
                name: 'services',
                description: 'List the services in the stack',
                args: [
                  Arg(
                      name: 'STACK',
                      // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerStacks
// TS_UNCONVERTED_END
                      generators: null)
                ],
                options: [
                  Option(
                      name: ['-f', '--filter'],
                      description: 'Filter output based on conditions provided',
                      args: [Arg(name: 'filter')]),
                  Option(
                      name: '--format',
                      description: 'Pretty-print services using a Go template',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: '--orchestrator',
                      description: 'Orchestrator to use (swarm|kubernetes|all)',
                      args: [Arg(name: 'string')]),
                  Option(
                      name: ['-q', '--quiet'], description: 'Only display IDs')
                ])
          ]),
      Subcommand(name: 'swarm', description: 'Manage Swarm', subcommands: [
        Subcommand(
            name: 'ca',
            description: 'Display and rotate the root CA',
            options: [
              Option(
                  name: '--ca-cert',
                  description:
                      'Path to the PEM-formatted root CA certificate to use for the new cluster',
                  args: [Arg(name: 'pem-file', template: 'filepaths')]),
              Option(
                  name: '--ca-key',
                  description:
                      'Path to the PEM-formatted root CA key to use for the new cluster',
                  args: [Arg(name: 'pem-file', template: 'filepaths')]),
              Option(
                  name: '--cert-expiry',
                  description:
                      'Validity period for node certificates (ns|us|ms|s|m|h) (default 2160h0m0s)',
                  args: [Arg(name: 'duration')]),
              Option(
                  name: ['-d', '--detach'],
                  description:
                      'Exit immediately instead of waiting for the root rotation to converge'),
              Option(
                  name: '--external-ca',
                  description:
                      'Specifications of one or more certificate signing endpoints',
                  args: [Arg(name: 'external-ca')]),
              Option(
                  name: ['-q', '--quiet'],
                  description: 'Suppress progress output'),
              Option(
                  name: '--rotate',
                  description:
                      'Rotate the swarm CA - if no certificate or key are provided, new ones will be generated')
            ]),
        Subcommand(name: 'init', description: 'Initialize a swarm', options: [
          Option(
              name: '--advertise-addr',
              description: 'Advertised address (format: <ip|interface>[:port])',
              args: [Arg(name: 'string')]),
          Option(
              name: '--autolock',
              description:
                  'Enable manager autolocking (requiring an unlock key to start a stopped manager)'),
          Option(
              name: '--availability',
              description:
                  'Availability of the node ("active"|"pause"|"drain") (default "active")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--cert-expiry',
              description:
                  'Validity period for node certificates (ns|us|ms|s|m|h) (default 2160h0m0s)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--data-path-addr',
              description:
                  'Address or interface to use for data path traffic (format: <ip|interface>)',
              args: [Arg(name: 'string')]),
          Option(
              name: '--data-path-port',
              description:
                  'Port number to use for data path traffic (1024 - 49151). If no value is set or is set to 0, the default port (4789) is used',
              args: [Arg(name: 'uint32')]),
          Option(
              name: '--default-addr-pool',
              description: 'Default address pool in CIDR format (default [])',
              args: [Arg(name: 'ipNetSlice')]),
          Option(
              name: '--default-addr-pool-mask-length',
              description:
                  'Default address pool subnet mask length (default 24)',
              args: [Arg(name: 'uint32')]),
          Option(
              name: '--dispatcher-heartbeat',
              description:
                  'Dispatcher heartbeat period (ns|us|ms|s|m|h) (default 5s)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--external-ca',
              description:
                  'Specifications of one or more certificate signing endpoints',
              args: [Arg(name: 'external-ca')]),
          Option(
              name: '--force-new-cluster',
              description: 'Force create a new cluster from current state'),
          Option(
              name: '--listen-addr',
              description:
                  'Listen address (format: <ip|interface>[:port]) (default 0.0.0.0:2377)',
              args: [Arg(name: 'node-addr')]),
          Option(
              name: '--max-snapshots',
              description: 'Number of additional Raft snapshots to retain',
              args: [Arg(name: 'uint')]),
          Option(
              name: '--snapshot-interval',
              description:
                  'Number of log entries between Raft snapshots (default 10000)',
              args: [Arg(name: 'uint')]),
          Option(
              name: '--task-history-limit',
              description: 'Task history retention limit (default 5)',
              args: [Arg(name: 'int')])
        ]),
        Subcommand(
            name: 'join',
            description: 'Join a swarm as a node and/or manager',
            args: [
              Arg(name: 'HOST:PORT')
            ],
            options: [
              Option(
                  name: '--advertise-addr',
                  description:
                      'Advertised address (format: <ip|interface>[:port])',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--availability',
                  description:
                      'Availability of the node ("active"|"pause"|"drain") (default "active")',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--data-path-addr',
                  description:
                      'Address or interface to use for data path traffic (format: <ip|interface>)',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--listen-addr',
                  description:
                      'Listen address (format: <ip|interface>[:port]) (default 0.0.0.0:2377)',
                  args: [Arg(name: 'node-addr')]),
              Option(
                  name: '--token',
                  description: 'Token for entry into the swarm',
                  args: [Arg(name: 'string')])
            ]),
        Subcommand(
            name: 'join-token',
            description: 'Manage join tokens',
            args: [
              Arg(name: 'worker or manager', suggestions: [
                FigSuggestion(name: 'worker'),
                FigSuggestion(name: 'manager')
              ])
            ],
            options: [
              Option(
                  name: ['-q', '--quiet'], description: 'Only display token'),
              Option(name: '--rotate', description: 'Rotate join token')
            ]),
        Subcommand(name: 'leave', description: 'Leave the swarm', options: [
          Option(
              name: ['-f', '--force'],
              description:
                  'Force this node to leave the swarm, ignoring warnings')
        ]),
        Subcommand(name: 'unlock', description: 'Unlock swarm'),
        Subcommand(
            name: 'unlock-key',
            description: 'Manage the unlock key',
            options: [
              Option(
                  name: ['-q', '--quiet'], description: 'Only display token'),
              Option(name: '--rotate', description: 'Rotate unlock key')
            ]),
        Subcommand(name: 'update', description: 'Update the swarm', options: [
          Option(
              name: '--autolock',
              description: 'Change manager autolocking setting (true|false)',
              args: [
                Arg(suggestions: [
                  FigSuggestion(name: 'true'),
                  FigSuggestion(name: 'false')
                ])
              ]),
          Option(
              name: '--cert-expiry',
              description:
                  'Validity period for node certificates (ns|us|ms|s|m|h) (default 2160h0m0s)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--dispatcher-heartbeat',
              description:
                  'Dispatcher heartbeat period (ns|us|ms|s|m|h) (default 5s)',
              args: [Arg(name: 'duration')]),
          Option(
              name: '--external-ca',
              description:
                  'Specifications of one or more certificate signing endpoints',
              args: [Arg(name: 'external-ca')]),
          Option(
              name: '--max-snapshots',
              description: 'Number of additional Raft snapshots to retain',
              args: [Arg(name: 'uint')]),
          Option(
              name: '--snapshot-interval',
              description:
                  'Number of log entries between Raft snapshots (default 10000)',
              args: [Arg(name: 'uint')]),
          Option(
              name: '--task-history-limit',
              description: 'Task history retention limit (default 5)',
              args: [Arg(name: 'int')])
        ])
      ]),
      Subcommand(name: 'system', description: 'Manage Docker', subcommands: [
        Subcommand(name: 'prune', description: 'Remove unused data', options: [
          Option(
              name: ['-a', '--all'],
              description: 'Remove all unused images not just dangling ones'),
          Option(
              name: '--filter',
              // TS_UNCONVERTED_START (description)
// `Provide filter values (e.g. 'label=<key>=<value')`
// TS_UNCONVERTED_END
              description: null,
              args: [Arg(name: 'filter')]),
          Option(
              name: ['-f', '--force'],
              description: 'Do not prompt for confirmation'),
          Option(name: '--volumes', description: 'Prune volumes')
        ]),
        Subcommand(name: 'df', description: 'Show docker disk usage', options: [
          Option(
              name: '--format',
              description: 'Pretty-print images using a Go template',
              args: [Arg(name: 'string')]),
          Option(
              name: ['-v', '--verbose'],
              description: 'Show detailed information on space usage')
        ]),
        Subcommand(
            name: 'events',
            description: 'Get real time events from the server',
            options: [
              Option(
                  name: ['-f', '--filter'],
                  description: 'Filter output based on conditions provided',
                  args: [Arg(name: 'filter')]),
              Option(
                  name: '--format',
                  description: 'Format the output using the given Go template',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--since',
                  description: 'Show all events created since timestamp',
                  args: [Arg(name: 'string')]),
              Option(
                  name: '--until',
                  description: 'Stream events until this timestamp',
                  args: [Arg(name: 'string')])
            ]),
        Subcommand(
            name: 'info',
            description: 'Display system-wide information',
            options: [
              Option(
                  name: ['-f', '--format'],
                  description: 'Format the output using the given Go template',
                  args: [Arg(name: 'string')])
            ])
      ]),
      Subcommand(
          name: 'trust',
          description: 'Manage trust on Docker images',
          subcommands: [
            Subcommand(
                name: 'inspect',
                description:
                    'Return low-level information about keys and signatures',
                args: [
                  Arg(name: 'IMAGE[:TAG]', isVariadic: true)
                ],
                options: [
                  Option(
                      name: '--pretty',
                      description:
                          'Print the information in a human friendly format')
                ]),
            Subcommand(
                name: 'revoke',
                description: 'Remove trust for an image',
                // TS_UNCONVERTED_START (args)
// imagesArg
// TS_UNCONVERTED_END
                args: null,
                options: [
                  Option(
                      name: ['-y', '--yes'],
                      description: 'Do not prompt for confirmation')
                ]),
            Subcommand(
                name: 'sign',
                description: 'Sign an image',
                // TS_UNCONVERTED_START (args)
// imagesArg
// TS_UNCONVERTED_END
                args: null,
                options: [
                  Option(
                      name: '--local',
                      description: 'Sign a locally tagged image')
                ])
          ]),
      Subcommand(name: 'volume', description: 'Manage volumes', subcommands: [
        Subcommand(name: 'create', description: 'Create a volume', args: [
          Arg(name: 'VOLUME')
        ], options: [
          Option(
              name: ['-d', '--driver'],
              description: 'Specify volume driver name (default "local")',
              args: [Arg(name: 'string')]),
          Option(
              name: '--label',
              description: 'Set metadata for a volume',
              args: [Arg(name: 'list')]),
          Option(
              name: ['-o', '--opt'],
              description: 'Set driver specific options (default map[])',
              args: [Arg(name: 'map')])
        ]),
        Subcommand(
            name: 'inspect',
            description: 'Display detailed information on one or more volumes',
            args: [
              Arg(
                  name: 'VOLUME',
                  // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerVolumes
// TS_UNCONVERTED_END
                  generators: null,
                  isVariadic: true)
            ],
            options: [
              Option(
                  name: ['-f', '--format'],
                  description: 'Format the output using the given Go template',
                  args: [Arg(name: 'string')])
            ]),
        Subcommand(name: 'ls', description: 'List volumes', options: [
          Option(
              name: ['-f', '--filter'],
              description: 'Provide filter values (e.g. \'dangling=true\')',
              args: [Arg(name: 'filter')]),
          Option(
              name: '--format',
              description: 'Pretty-print volumes using a Go template',
              args: [Arg(name: 'string')]),
          Option(
              name: ['-q', '--quiet'], description: 'Only display volume names')
        ]),
        Subcommand(
            name: 'prune',
            description: 'Remove all unused local volumes',
            options: [
              Option(
                  name: '--filter',
                  description: 'Provide filter values (e.g. \'label=<label>\')',
                  args: [Arg(name: 'filter')]),
              Option(
                  name: ['-f', '--force'],
                  description: 'Do not prompt for confirmation')
            ]),
        Subcommand(
            name: 'rm',
            description: 'Remove one or more volumes',
            args: [
              Arg(
                  name: 'VOLUME',
                  // TS_UNCONVERTED_START (generators)
// dockerGenerators.listDockerVolumes
// TS_UNCONVERTED_END
                  generators: null,
                  isVariadic: true)
            ],
            options: [
              Option(
                  name: ['-f', '--force'],
                  description: 'Force the removal of one or more volumes')
            ])
      ]),
      Subcommand(
          name: 'compose',
          description:
              'Define and run multi-container applications with Docker',
          loadSpec: 'docker-compose')
    ]);
