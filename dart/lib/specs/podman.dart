// AI-generated from TypeScript source: podman.ts
// Generated at: 2026-02-16

import 'dart:convert';
import 'package:autocomplete/src/spec.dart';

/// Docker/Podman 容器处理函数
final List<FigSuggestion> Function(String, [List<String>?])
    postProcessDockerPs = (String out, [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.trim().isNotEmpty)
      .map<FigSuggestion?>((line) {
        try {
          final parsedJSON = json.decode(line) as Map<String, dynamic>;
          final name = parsedJSON['Names']?.toString() ?? '';
          final image = parsedJSON['Image']?.toString() ?? '';

          return FigSuggestion(
            name: name,
            displayName: '$name ($image)',
            icon: 'fig://icon?type=docker',
          );
        } catch (error) {
          print('Error parsing Docker container line: $error');
          return null;
        }
      })
      .where((suggestion) => suggestion != null)
      .cast<FigSuggestion>()
      .toList();
};

/// 共享的后处理函数
final List<FigSuggestion> Function(String, [List<String>?]) sharedPostProcess =
    (String out, [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.trim().isNotEmpty)
      .map<FigSuggestion?>((line) {
        try {
          final data = json.decode(line) as Map<String, dynamic>;
          final name =
              data['name']?.toString() ?? data['Name']?.toString() ?? '';
          final description =
              data['id']?.toString() ?? data['ID']?.toString() ?? '';

          if (name.isEmpty) return null;

          return FigSuggestion(
            name: name,
            description: description,
            icon: 'fig://icon?type=docker',
          );
        } catch (error) {
          print('Error parsing Docker data: $error');
          return null;
        }
      })
      .where((suggestion) => suggestion != null)
      .cast<FigSuggestion>()
      .toList();
};

/// Docker/Podman 生成器集合
final Map<String, FigGenerator> dockerGenerators = {
  'runningDockerContainers': FigGenerator(
    script: ['podman', 'ps', '--format', '{{ json . }}'],
    postProcess: postProcessDockerPs,
  ),
  'allDockerContainers': FigGenerator(
    script: ['podman', 'ps', '-a', '--format', '{{ json . }}'],
    postProcess: postProcessDockerPs,
  ),
  'pausedDockerContainers': FigGenerator(
    script: [
      'podman',
      'ps',
      '--filter',
      'status=paused',
      '--format',
      '{{ json . }}'
    ],
    postProcess: postProcessDockerPs,
  ),
  'allLocalImages': FigGenerator(
    script: ['podman', 'image', 'ls', '--format', '{{ json . }}'],
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map<FigSuggestion?>((line) {
            try {
              final data = json.decode(line) as Map<String, dynamic>;
              final id = data['Id']?.toString() ?? '';
              final repository = data['repository']?.toString() ?? '';

              if (id.isEmpty) return null;

              return FigSuggestion(
                name: id,
                displayName:
                    '$repository - ${id.length > 12 ? '${id.substring(0, 12)}...' : id}',
                icon: 'fig://icon?type=docker',
              );
            } catch (error) {
              print('Error parsing Docker image: $error');
              return null;
            }
          })
          .where((suggestion) => suggestion != null)
          .cast<FigSuggestion>()
          .toList();
    },
  ),
  'allLocalImagesWithRepository': FigGenerator(
    script: ['podman', 'image', 'ls', '--format', '{{ json . }}'],
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map<FigSuggestion?>((line) {
            try {
              final data = json.decode(line) as Map<String, dynamic>;
              final repository = data['repository']?.toString() ?? '';
              final id = data['Id']?.toString() ?? '';

              if (repository.isEmpty) return null;

              return FigSuggestion(
                name: repository,
                displayName:
                    '$repository - ${id.length > 12 ? '${id.substring(0, 12)}...' : id}',
                icon: 'fig://icon?type=docker',
              );
            } catch (error) {
              print('Error parsing Docker image with repository: $error');
              return null;
            }
          })
          .where((suggestion) => suggestion != null)
          .cast<FigSuggestion>()
          .toList();
    },
  ),
  'dockerHubSearch': FigGenerator(
    script: (List<String> context) {
      if (context.isEmpty || context.last.isEmpty) return null;
      final searchTerm = context.last;
      return ['podman', 'search', searchTerm, '--format', '{{ json . }}'];
    },
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map<FigSuggestion?>((line) {
            try {
              final data = json.decode(line) as Map<String, dynamic>;
              final name = data['Name']?.toString() ?? '';

              if (name.isEmpty) return null;

              return FigSuggestion(
                name: name,
                icon: 'fig://icon?type=docker',
              );
            } catch (error) {
              print('Error parsing Docker Hub search result: $error');
              return null;
            }
          })
          .where((suggestion) => suggestion != null)
          .cast<FigSuggestion>()
          .toList();
    },
    trigger: (String newToken, String oldToken) => true,
  ),
  'listDockerNetworks': FigGenerator(
    script: ['podman', 'network', 'list', '--format', '{{ json . }}'],
    postProcess: sharedPostProcess,
  ),
  'listDockerSecrets': FigGenerator(
    script: ['podman', 'secret', 'list', '--format', '{{ json . }}'],
    postProcess: sharedPostProcess,
  ),
  'listDockerVolumes': FigGenerator(
    script: ['podman', 'volume', 'list', '--format', '{{ json . }}'],
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map<FigSuggestion?>((line) {
            try {
              final data = json.decode(line) as Map<String, dynamic>;
              final name = data['Name']?.toString() ?? '';

              if (name.isEmpty) return null;

              return FigSuggestion(
                name: name,
                icon: 'fig://icon?type=docker',
              );
            } catch (error) {
              print('Error parsing Docker volume: $error');
              return null;
            }
          })
          .where((suggestion) => suggestion != null)
          .cast<FigSuggestion>()
          .toList();
    },
  ),
};

/// 容器参数
final FigArg containersArg = FigArg(
  name: 'container',
  generators: [dockerGenerators['runningDockerContainers']!],
);

/// 镜像参数
final FigArg imagesArg = FigArg(
  name: 'image',
  generators: [dockerGenerators['allLocalImages']!],
);

/// 容器和命令参数数组
final List<FigArg> containerAndCommandArgs = [
  containersArg,
  FigArg(
    name: 'command',
    isCommand: true,
  ),
];

final Map<String, Subcommand> sharedCommands = {
  'build': Subcommand(
      name: 'build',
      description: 'Build an image using instructions from Containerfiles',
      args: [
        Arg(name: 'path', generators: Generator(template: 'folders'))
      ],
      options: [
        Option(name: '--add-host', args: [
          Arg(
              name: 'list',
              description: 'Add a custom host-to-IP mapping (host:ip)')
        ]),
        Option(
            name: '--build-arg',
            args: [Arg(name: 'list', description: 'Set build-time variables')]),
        Option(name: '--cache-from', args: [
          Arg(
              name: 'strings',
              description: 'Images to consider as cache sources')
        ]),
        Option(
            name: '--disable-content-trust',
            description: 'Skip image verification (default true)'),
        Option(
            name: ['-f', '--file'],
            description:
                'Name of the Dockerfile (Default is \'PATH/Dockerfile\')',
            args: [
              Arg(name: 'string', generators: Generator(template: 'filepaths'))
            ]),
        Option(
            name: '--iidfile',
            description: 'Write the image ID to the file',
            args: [Arg(name: 'string')]),
        Option(
            name: '--isolation',
            description: 'Container isolation technology',
            args: [Arg(name: 'string')]),
        Option(
            name: '--label',
            description: 'Set metadata for an image',
            args: [Arg(name: 'list')]),
        Option(
            name: '--network',
            description:
                'Set the networking mode for the RUN instructions during build (default "default")',
            args: [Arg(name: 'string')]),
        Option(
            name: '--no-cache',
            description: 'Do not use cache when building the image'),
        Option(
            name: ['-o', '--output'],
            description: 'Output destination (format: type=local,dest=path)',
            args: [Arg(name: 'stringArray')]),
        Option(
            name: '--platform',
            description: 'Set platform if server is multi-platform capable',
            args: [Arg(name: 'string')]),
        Option(
            name: '--progress',
            description:
                'Set type of progress output (auto, plain, tty). Use plain to show container output',
            args: [
              Arg(name: 'string', suggestions: [
                FigSuggestion(name: 'auto'),
                FigSuggestion(name: 'plain')
              ])
            ]),
        Option(
            name: '--pull',
            description: 'Always attempt to pull a newer version of the image'),
        Option(
            name: ['-q', '--quiet'],
            description:
                'Suppress the build output and print image ID on success'),
        Option(
            name: '--secret',
            // TS_UNCONVERTED_START (description)
// `Secret file to expose to the build (only if BuildKit enabled): id=mysecret,src=/local/secret`
// TS_UNCONVERTED_END
            description: null,
            args: [Arg(name: 'stringArray')]),
        Option(
            name: '--squash',
            description: 'Squash newly built layers into a single new layer'),
        Option(
            name: '--ssh',
            // TS_UNCONVERTED_START (description)
// `SSH agent socket or keys to expose to the build (only if BuildKit enabled) (format: default|<id>[=<socket>|<key>[,<key>]])`
// TS_UNCONVERTED_END
            description: null,
            args: [Arg(name: 'stringArray')]),
        Option(name: [
          '-t',
          '--tag'
        ], description: 'Name and optionally a tag in the \'name:tag\' format'),
        Option(
            name: '--target',
            description: 'Set the target build stage to build',
            args: [
              Arg(
                  name: 'target build stage',
                  generators: Generator(
                      // TS_UNCONVERTED_START (trigger)
// function () {
//               return true;
// TS_UNCONVERTED_END
                      trigger: null,
                      // TS_UNCONVERTED_START (script)
// function (context) {
//               let fileFlagIndex
// TS_UNCONVERTED_END
                      script: null,
                      // TS_UNCONVERTED_START (postProcess)
// function (out) {
//               // This just searches the Dockerfile for the alias name after AS,
//               // and due to the grep above, will only match lines where FROM and AS
//               // are on the same line. This could certainly be made more robust
//               // down the line.
//               const imageNameRegexp = /(?:[aA][sS]\s+)([\w:.-]+)/;
//               return out
//                 .split("\n")
//                 .map((i) => {
//                   const result = imageNameRegexp.exec(i);
//                   if (result) {
//                     return {
//                       name: result[1],
//                     };
//                   }
//                 })
//                 .filter((i) => i !== undefined);
// TS_UNCONVERTED_END
                      postProcess: null))
            ])
      ]),
  'create': Subcommand(
      name: 'create',
      description: 'Create but do not start a container',
      args: [
        Arg(name: 'container', generators: dockerGenerators['allLocalImages']),
        Arg(name: 'command')
      ],
      options: [
        Option(
            args: [Arg(name: 'list')],
            description: 'Add a custom host-to-IP mapping (host:ip)',
            name: '--add-host'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Attach to STDIN, STDOUT or STDERR',
            name: ['-a', '--attach']),
        Option(
            args: [Arg(name: 'uint16')],
            description:
                'Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)',
            name: '--blkio-weight'),
        Option(
            args: [Arg(name: 'list')],
            description:
                'Block IO weight (relative device weight) (default [])',
            name: '--blkio-weight-device'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Add Linux capabilities',
            name: '--cap-add'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Drop Linux capabilities',
            name: '--cap-drop'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Optional parent cgroup for the container',
            name: '--cgroup-parent'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Cgroup namespace to use (host|private)',
            name: '--cgroupns'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Write the container ID to the file',
            name: '--cidfile'),
        Option(
            args: [Arg(name: 'int')],
            description: 'Limit CPU CFS (Completely Fair Scheduler) period',
            name: '--cpu-period'),
        Option(
            args: [Arg(name: 'int')],
            description: 'Limit CPU CFS (Completely Fair Scheduler) quota',
            name: '--cpu-quota'),
        Option(
            args: [Arg(name: 'int')],
            description: 'Limit CPU real-time period in microseconds',
            name: '--cpu-rt-period'),
        Option(
            args: [Arg(name: 'int')],
            description: 'Limit CPU real-time runtime in microseconds',
            name: '--cpu-rt-runtime'),
        Option(
            args: [Arg(name: 'int')],
            description: 'CPU shares (relative weight)',
            name: ['-c', '--cpu-shares']),
        Option(
            args: [Arg(name: 'decimal')],
            description: 'Number of CPUs',
            name: '--cpus'),
        Option(
            args: [Arg(name: 'string')],
            description: 'CPUs in which to allow execution (0-3, 0,1)',
            name: '--cpuset-cpus'),
        Option(
            args: [Arg(name: 'string')],
            description: 'MEMs in which to allow execution (0-3, 0,1)',
            name: '--cpuset-mems'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Add a host device to the container',
            name: '--device'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Add a rule to the cgroup allowed devices list',
            name: '--device-cgroup-rule'),
        Option(
            args: [Arg(name: 'list')],
            description:
                'Limit read rate (bytes per second) from a device (default [])',
            name: '--device-read-bps'),
        Option(
            args: [Arg(name: 'list')],
            description:
                'Limit read rate (IO per second) from a device (default [])',
            name: '--device-read-iops'),
        Option(
            args: [Arg(name: 'list')],
            description:
                'Limit write rate (bytes per second) to a device (default [])',
            name: '--device-write-bps'),
        Option(
            args: [Arg(name: 'list')],
            description:
                'Limit write rate (IO per second) to a device (default [])',
            name: '--device-write-iops'),
        Option(
            description: 'Skip image verification (default true)',
            name: '--disable-content-trust'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Set custom DNS servers',
            name: '--dns'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Set DNS options',
            name: '--dns-option'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Set custom DNS search domains',
            name: '--dns-search'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Container NIS domain name',
            name: '--domainname'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Overwrite the default ENTRYPOINT of the image',
            name: '--entrypoint'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Set environment variables',
            name: ['-e', '--env']),
        Option(
            args: [Arg(name: 'list')],
            description: 'Read in a file of environment variables',
            name: '--env-file'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Expose a port or a range of ports',
            name: '--expose'),
        Option(
            args: [Arg(name: 'gpu-request')],
            description:
                'GPU devices to add to the container (\'all\' to pass all GPUs)',
            name: '--gpus'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Add additional groups to join',
            name: '--group-add'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Command to run to check health',
            name: '--health-cmd'),
        Option(
            args: [Arg(name: 'duration')],
            description:
                'Time between running the check (ms|s|m|h) (default 0s)',
            name: '--health-interval'),
        Option(
            args: [Arg(name: 'int')],
            description: 'Consecutive failures needed to report unhealthy',
            name: '--health-retries'),
        Option(
            args: [Arg(name: 'duration')],
            description:
                'Start period for the container to initialize before starting health-retries countdown (ms|s|m|h) (default 0s)',
            name: '--health-start-period'),
        Option(
            args: [Arg(name: 'duration')],
            description:
                'Maximum time to allow one check to run (ms|s|m|h) (default 0s)',
            name: '--health-timeout'),
        Option(description: 'Print usage', name: '--help'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Container host name',
            name: ['-h', '--hostname']),
        Option(
            description:
                'Run an init inside the container that forwards signals and reaps processes',
            name: '--init'),
        Option(
            description: 'Keep STDIN open even if not attached',
            name: ['-i', '--interactive']),
        Option(
            args: [Arg(name: 'string')],
            description: 'IPv4 address (e.g., 172.30.100.104)',
            name: '--ip'),
        Option(
            args: [Arg(name: 'string')],
            description: 'IPv6 address (e.g., 2001:db8::33)',
            name: '--ip6'),
        Option(
            args: [Arg(name: 'string')],
            description: 'IPC mode to use',
            name: '--ipc'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Container isolation technology',
            name: '--isolation'),
        Option(
            args: [Arg(name: 'bytes')],
            description: 'Kernel memory limit',
            name: '--kernel-memory'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Set meta data on a container',
            name: ['-l', '--label']),
        Option(
            args: [Arg(name: 'list')],
            description: 'Read in a line delimited file of labels',
            name: '--label-file'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Add link to another container',
            name: '--link'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Container IPv4/IPv6 link-local addresses',
            name: '--link-local-ip'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Logging driver for the container',
            name: '--log-driver'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Log driver options',
            name: '--log-opt'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Container MAC address (e.g., 92:d0:c6:0a:29:33)',
            name: '--mac-address'),
        Option(
            args: [Arg(name: 'bytes')],
            description: 'Memory limit',
            name: ['-m', '--memory']),
        Option(
            args: [Arg(name: 'bytes')],
            description: 'Memory soft limit',
            name: '--memory-reservation'),
        Option(
            args: [Arg(name: 'bytes')],
            description:
                'Swap limit equal to memory plus swap: \'-1\' to enable unlimited swap',
            name: '--memory-swap'),
        Option(
            args: [Arg(name: 'int')],
            description:
                'Tune container memory swappiness (0 to 100) (default -1)',
            name: '--memory-swappiness'),
        Option(
            args: [Arg(name: 'mount')],
            description: 'Attach a filesystem mount to the container',
            name: '--mount'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Assign a name to the container',
            name: '--name'),
        Option(
            args: [Arg(name: 'network')],
            description: 'Connect a container to a network',
            name: '--network'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Add network-scoped alias for the container',
            name: '--network-alias'),
        Option(
            description: 'Disable any container-specified HEALTHCHECK',
            name: '--no-healthcheck'),
        Option(description: 'Disable OOM Killer', name: '--oom-kill-disable'),
        Option(
            args: [Arg(name: 'int')],
            description: 'Tune host\'s OOM preferences (-1000 to 1000)',
            name: '--oom-score-adj'),
        Option(
            args: [Arg(name: 'string')],
            description: 'PID namespace to use',
            name: '--pid'),
        Option(
            args: [Arg(name: 'int')],
            description: 'Tune container pids limit (set -1 for unlimited)',
            name: '--pids-limit'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Set platform if server is multi-platform capable',
            name: '--platform'),
        Option(
            description: 'Give extended privileges to this container',
            name: '--privileged'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Publish a container\'s port(s) to the host',
            name: ['-p', '--publish']),
        Option(
            description: 'Publish all exposed ports to random ports',
            name: ['-P', '--publish-all']),
        Option(
            args: [Arg(name: 'string')],
            description:
                'Pull image before creating ("always"|"missing"|"never") (default "missing")',
            name: '--pull'),
        Option(
            description: 'Mount the container\'s root filesystem as read only',
            name: '--read-only'),
        Option(
            args: [Arg(name: 'string')],
            description:
                'Restart policy to apply when a container exits (default "no")',
            name: '--restart'),
        Option(
            description: 'Automatically remove the container when it exits',
            name: '--rm'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Runtime to use for this container',
            name: '--runtime'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Security Options',
            name: '--security-opt'),
        Option(
            args: [Arg(name: 'bytes')],
            description: 'Size of /dev/shm',
            name: '--shm-size'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Signal to stop a container (default "SIGTERM")',
            name: '--stop-signal'),
        Option(
            args: [Arg(name: 'int')],
            description: 'Timeout (in seconds) to stop a container',
            name: '--stop-timeout'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Storage driver options for the container',
            name: '--storage-opt'),
        Option(
            args: [Arg(name: 'map')],
            description: 'Sysctl options (default map[])',
            name: '--sysctl'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Mount a tmpfs directory',
            name: '--tmpfs'),
        Option(description: 'Allocate a pseudo-TTY', name: ['-t', '--tty']),
        Option(
            args: [Arg(name: 'ulimit')],
            description: 'Ulimit options (default [])',
            name: '--ulimit'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Username or UID (format: <name|uid>[:<group|gid>])',
            name: ['-u', '--user']),
        Option(
            args: [Arg(name: 'string')],
            description: 'User namespace to use',
            name: '--userns'),
        Option(
            args: [Arg(name: 'string')],
            description: 'UTS namespace to use',
            name: '--uts'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Bind mount a volume',
            name: ['-v', '--volume']),
        Option(
            args: [Arg(name: 'string')],
            description: 'Optional volume driver for the container',
            name: '--volume-driver'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Mount volumes from the specified container(s)',
            name: '--volumes-from'),
        Option(
            args: [Arg(name: 'string')],
            description: 'Working directory inside the container',
            name: ['-w', '--workdir'])
      ]),
  'attach': Subcommand(
      name: 'attach',
      description: 'Attach to a running container',
      options: [
        Option(
            name: '--detach-keys',
            description: 'Override the key sequence for detaching a container',
            args: [Arg(name: 'string')]),
        Option(name: '--no-stdin', description: 'Do not attach STDIN'),
        Option(
            name: '--sig-proxy',
            description:
                'Proxy all received signals to the process (default true)')
      ]),
  'commit': Subcommand(
      name: 'commit',
      description: 'Create new image based on the changed container',
      args: [
        containersArg,
        Arg(name: '[REPOSITORY[:TAG]]')
      ],
      options: [
        Option(
            args: [Arg(name: 'string')],
            description:
                'Author (e.g., "John Hannibal Smith <hannibal@a-team.com>")',
            name: ['-a', '--author']),
        Option(
            args: [Arg(name: 'list')],
            description: 'Apply Dockerfile instruction to the created image',
            name: ['-c', '--change']),
        Option(
            args: [Arg(name: 'string')],
            description: 'Commit message',
            name: ['-m', '--message']),
        Option(
            description: 'Pause container during commit (default true)',
            name: ['-p', '--pause'])
      ]),
  'cp': Subcommand(
      name: 'cp',
      description:
          'Copy files/folders between a container and the local filesystem',
      args: [
        Arg(
            name:
                'CONTAINER:SRC_PATH DEST_PATH|- OR SRC_PATH|- CONTAINER:DEST_PATH')
      ],
      options: [
        Option(
            description: 'Archive mode (copy all uid/gid information)',
            name: ['-a', '--archive']),
        Option(
            description: 'Always follow symbol link in SRC_PATH',
            name: ['-L', '--follow-link'])
      ]),
  'diff': Subcommand(
      name: 'diff',
      description: 'Display the changes to the object\'s file system',
      args: containersArg),
  'exec': Subcommand(
      name: 'exec',
      description: 'Run a process in a running container',
      options: [
        Option(name: '-it', description: 'Launch an interactive session'),
        Option(
            description: 'Detached mode: run command in the background',
            name: ['-d', '--detach']),
        Option(
            args: [Arg(name: 'string')],
            description: 'Override the key sequence for detaching a container',
            name: '--detach-keys'),
        Option(
            args: [Arg(name: 'list')],
            description: 'Set environment variables',
            name: ['-e', '--env']),
        Option(
            args: [Arg(name: 'list')],
            description: 'Read in a file of environment variables',
            name: '--env-file'),
        Option(
            description: 'Keep STDIN open even if not attached',
            name: ['-i', '--interactive']),
        Option(
            description: 'Give extended privileges to the command',
            name: '--privileged'),
        Option(description: 'Allocate a pseudo-TTY', name: ['-t', '--tty']),
        Option(
            args: [Arg(name: 'string')],
            description: 'Username or UID (format: <name|uid>[:<group|gid>])',
            name: ['-u', '--user']),
        Option(
            args: [Arg(name: 'string')],
            description: 'Working directory inside the container',
            name: ['-w', '--workdir'])
      ],
      args: containerAndCommandArgs),
  'export': Subcommand(
      name: 'export',
      description: 'Export container\'s filesystem contents as a tar archive',
      args: containersArg,
      options: [
        Option(
            description: 'Write to a file, instead of STDOUT',
            name: ['-o', '--output'],
            args: [Arg(name: 'string')])
      ]),
  'kill': Subcommand(
      name: 'kill',
      description: 'Kill one or more running containers with a specific signal',
      args: [
        Arg(isVariadic: true)
      ],
      options: [
        Option(
            description: 'Signal to send to the container (default "KILL")',
            name: ['-s', '--signal'],
            args: [Arg(name: 'string')])
      ]),
  'logs': Subcommand(
      name: 'logs',
      description: 'Fetch the logs of one or more containers',
      args: containersArg,
      options: [
        Option(
            description: 'Show extra details provided to logs',
            name: '--details'),
        Option(description: 'Follow log output', name: ['-f', '--follow']),
        Option(
            description:
                'Show logs since timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)',
            name: '--since',
            args: [Arg(name: 'string')]),
        Option(
            description:
                'Number of lines to show from the end of the logs (default "all")',
            name: ['-n', '--tail'],
            args: [Arg(name: 'string')]),
        Option(description: 'Show timestamps', name: ['-t', '--timestamps']),
        Option(
            description:
                'Show logs before a timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)',
            name: '--until',
            args: [Arg(name: 'string')])
      ]),
  'pause': Subcommand(
      name: 'pause',
      description: 'Pause all processes within one or more containers',
      args: containersArg),
  'port': Subcommand(
      name: 'port',
      description: 'List port mappings or a specific mapping for the container',
      args: [containersArg, Arg(name: '[PRIVATE_PORT[/PROTO]]')]),
  'rename': Subcommand(
      name: 'rename',
      description: 'Rename an existing container',
      args: [containersArg, Arg(name: 'NEW_NAME')]),
  'restart': Subcommand(
      name: 'restart',
      description: 'Restart one or more containers',
      args: containersArg,
      options: [
        Option(
            description:
                'Seconds to wait for stop before killing the container (default 10)',
            name: ['-t', '--time'],
            args: [Arg(name: 'int')])
      ]),
  'rm': Subcommand(
      name: 'rm',
      description: 'Remove one or more containers',
      args: [
        Arg(
            isVariadic: true,
            name: 'containers',
            generators: dockerGenerators['allDockerContainers'])
      ],
      options: [
        Option(
            name: ['-f', '--force'],
            description:
                'Force the removal of a running container (uses SIGKILL)'),
        Option(
            name: ['-l', '--link'], description: 'Remove the specified link'),
        Option(
            name: ['-v', '--volumes'],
            description:
                'Remove the anonymous volumes associated with the container')
      ]),
  'run': Subcommand(
      name: 'run',
      description: 'Run a command in a new container',
      options: [
        Option(name: '-it', description: 'Launch an interactive session'),
        Option(
            name: '--add-host',
            description: 'Add a custom host-to-IP mapping (host:ip)',
            args: [Arg(name: 'list')]),
        Option(
            name: ['-a', '--attach'],
            description: 'Attach to STDIN, STDOUT or STDERR',
            args: [Arg(name: 'list')]),
        Option(
            name: '--blkio-weight',
            description:
                'Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)',
            args: [Arg(name: 'uint16')]),
        Option(
            name: '--blkio-weight-device',
            description:
                'Block IO weight (relative device weight) (default [])',
            args: [Arg(name: 'list')]),
        Option(
            name: '--cap-add',
            description: 'Add Linux capabilities',
            args: [Arg(name: 'list')]),
        Option(
            name: '--cap-drop',
            description: 'Drop Linux capabilities',
            args: [Arg(name: 'list')]),
        Option(
            name: '--cgroup-parent',
            description: 'Optional parent cgroup for the container',
            args: [Arg(name: 'string')]),
        Option(
            name: '--cgroupns',
            // TS_UNCONVERTED_START (description)
// `Cgroup namespace to use (host|private)
// 'host':    Run the container in the Docker host's cgroup namespace
// 'private': Run the container in its own private cgroup namespace
// '':        Use the cgroup namespace as configured by the
// default-cgroupns-mode option on the daemon (default)`
// TS_UNCONVERTED_END
            description: null,
            args: [Arg(name: 'string')]),
        Option(
            name: '--cidfile',
            description: 'Write the container ID to the file',
            args: [Arg(name: 'string')]),
        Option(
            name: '--cpu-period',
            description: 'Limit CPU CFS (Completely Fair Scheduler) period',
            args: [Arg(name: 'int')]),
        Option(
            name: '--cpu-quota',
            description: 'Limit CPU CFS (Completely Fair Scheduler) quota',
            args: [Arg(name: 'int')]),
        Option(
            name: '--cpu-rt-period',
            description: 'Limit CPU real-time period in microseconds',
            args: [Arg(name: 'int')]),
        Option(
            name: '--cpu-rt-runtime',
            description: 'Limit CPU real-time runtime in microseconds',
            args: [Arg(name: 'int')]),
        Option(
            name: ['-c', '--cpu-shares'],
            description: 'CPU shares (relative weight)',
            args: [Arg(name: 'int')]),
        Option(
            name: '--cpus',
            description: 'Number of CPUs',
            args: [Arg(name: 'decimal')]),
        Option(
            name: '--cpuset-cpus',
            description: 'CPUs in which to allow execution (0-3, 0,1)',
            args: [Arg(name: 'string')]),
        Option(
            name: '--cpuset-mems',
            description: 'MEMs in which to allow execution (0-3, 0,1)',
            args: [Arg(name: 'string')]),
        Option(
            name: ['-d', '--detach'],
            description: 'Run container in background and print container ID'),
        Option(
            name: '--detach-keys',
            description: 'Override the key sequence for detaching a container',
            args: [Arg(name: 'string')]),
        Option(
            name: '--device',
            description: 'Add a host device to the container',
            args: [Arg(name: 'list')]),
        Option(
            name: '--device-cgroup-rule',
            description: 'Add a rule to the cgroup allowed devices list',
            args: [Arg(name: 'list')]),
        Option(
            name: '--device-read-bps',
            description:
                'Limit read rate (bytes per second) from a device (default [])',
            args: [Arg(name: 'list')]),
        Option(
            name: '--device-read-iops',
            description:
                'Limit read rate (IO per second) from a device (default [])',
            args: [Arg(name: 'list')]),
        Option(
            name: '--device-write-bps',
            description:
                'Limit write rate (bytes per second) to a device (default [])',
            args: [Arg(name: 'list')]),
        Option(
            name: '--device-write-iops',
            description:
                'Limit write rate (IO per second) to a device (default [])',
            args: [Arg(name: 'list')]),
        Option(
            name: '--disable-content-trust',
            description: 'Skip image verification (default true)'),
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
            name: '--domainname',
            description: 'Container NIS domain name',
            args: [Arg(name: 'string')]),
        Option(
            name: '--entrypoint',
            description: 'Overwrite the default ENTRYPOINT of the image',
            args: [Arg(name: 'string')]),
        Option(
            name: ['-e', '--env'],
            description: 'Set environment variables',
            args: [Arg(name: 'list')]),
        Option(
            name: '--env-file',
            description: 'Read in a file of environment variables',
            args: [Arg(name: 'list')]),
        Option(
            name: '--expose',
            description: 'Expose a port or a range of ports',
            args: [Arg(name: 'list')]),
        Option(
            name: '--gpus',
            description:
                'GPU devices to add to the container (\'all\' to pass all GPUs)',
            args: [Arg(name: 'gpu-request')]),
        Option(
            name: '--group-add',
            description: 'Add additional groups to join',
            args: [Arg(name: 'list')]),
        Option(
            name: '--health-cmd',
            description: 'Command to run to check health',
            args: [Arg(name: 'string')]),
        Option(
            name: '--health-interval',
            description:
                'Time between running the check (ms|s|m|h) (default 0s)',
            args: [Arg(name: 'duration')]),
        Option(
            name: '--health-retries',
            description: 'Consecutive failures needed to report unhealthy',
            args: [Arg(name: 'int')]),
        Option(
            name: '--health-start-period',
            description:
                'Start period for the container to initialize before starting health-retries countdown (ms|s|m|h) (default 0s)',
            args: [Arg(name: 'duration')]),
        Option(
            name: '--health-timeout',
            description:
                'Maximum time to allow one check to run (ms|s|m|h) (default 0s)',
            args: [Arg(name: 'duration')]),
        Option(name: '--help', description: 'Print usage'),
        Option(
            name: ['-h', '--hostname'],
            description: 'Container host name',
            args: [Arg(name: 'string')]),
        Option(
            name: '--init',
            description:
                'Run an init inside the container that forwards signals and reaps processes'),
        Option(
            name: ['-i', '--interactive'],
            description: 'Keep STDIN open even if not attached'),
        Option(
            name: '--ip',
            description: 'IPv4 address (e.g., 172.30.100.104)',
            args: [Arg(name: 'string')]),
        Option(
            name: '--ip6',
            description: 'IPv6 address (e.g., 2001:db8::33)',
            args: [Arg(name: 'string')]),
        Option(
            name: '--ipc',
            description: 'IPC mode to use',
            args: [Arg(name: 'string')]),
        Option(
            name: '--isolation',
            description: 'Container isolation technology',
            args: [Arg(name: 'string')]),
        Option(
            name: '--kernel-memory',
            description: 'Kernel memory limit',
            args: [Arg(name: 'bytes')]),
        Option(
            name: ['-l', '--label'],
            description: 'Set meta data on a container',
            args: [Arg(name: 'list')]),
        Option(
            name: '--label-file',
            description: 'Read in a line delimited file of labels',
            args: [Arg(name: 'list')]),
        Option(
            name: '--link',
            description: 'Add link to another container',
            args: [Arg(name: 'list')]),
        Option(
            name: '--link-local-ip',
            description: 'Container IPv4/IPv6 link-local addresses',
            args: [Arg(name: 'list')]),
        Option(
            name: '--log-driver',
            description: 'Logging driver for the container',
            args: [
              Arg(name: 'string', suggestions: [
                FigSuggestion(name: 'json-file'),
                FigSuggestion(name: 'syslog'),
                FigSuggestion(name: 'journald'),
                FigSuggestion(name: 'gelf'),
                FigSuggestion(name: 'fluentd'),
                FigSuggestion(name: 'awslogs'),
                FigSuggestion(name: 'splunk'),
                FigSuggestion(name: 'etwlogs'),
                FigSuggestion(name: 'gcplogs'),
                FigSuggestion(name: 'none')
              ])
            ]),
        Option(
            name: '--log-opt',
            description: 'Log driver options',
            args: [Arg(name: 'list')]),
        Option(
            name: '--mac-address',
            description: 'Container MAC address (e.g., 92:d0:c6:0a:29:33)',
            args: [Arg(name: 'string')]),
        Option(
            name: ['-m', '--memory'],
            description: 'Memory limit',
            args: [Arg(name: 'bytes')]),
        Option(
            name: '--memory-reservation',
            description: 'Memory soft limit',
            args: [Arg(name: 'bytes')]),
        Option(
            name: '--memory-swap',
            description:
                'Swap limit equal to memory plus swap: \'-1\' to enable unlimited swap',
            args: [Arg(name: 'bytes')]),
        Option(
            name: '--memory-swappiness',
            description:
                'Tune container memory swappiness (0 to 100) (default -1)',
            args: [Arg(name: 'int')]),
        Option(
            name: '--mount',
            description: 'Attach a filesystem mount to the container',
            args: [Arg(name: 'mount')]),
        Option(
            name: '--name',
            description: 'Assign a name to the container',
            args: [Arg(name: 'string')]),
        Option(
            name: '--network',
            description: 'Connect a container to a network',
            args: [Arg(name: 'network')]),
        Option(
            name: '--network-alias',
            description: 'Add network-scoped alias for the container',
            args: [Arg(name: 'list')]),
        Option(
            name: '--no-healthcheck',
            description: 'Disable any container-specified HEALTHCHECK'),
        Option(name: '--oom-kill-disable', description: 'Disable OOM Killer'),
        Option(
            name: '--oom-score-adj',
            description: 'Tune host\'s OOM preferences (-1000 to 1000)',
            args: [Arg(name: 'int')]),
        Option(
            name: '--pid',
            description: 'PID namespace to use',
            args: [Arg(name: 'string')]),
        Option(
            name: '--pids-limit',
            description: 'Tune container pids limit (set -1 for unlimited)',
            args: [Arg(name: 'int')]),
        Option(
            name: '--platform',
            description: 'Set platform if server is multi-platform capable',
            args: [Arg(name: 'string')]),
        Option(
            name: '--privileged',
            description: 'Give extended privileges to this container'),
        Option(
            name: ['-p', '--publish'],
            description: 'Publish a container\'s port(s) to the host',
            args: [Arg(name: 'list')]),
        Option(
            name: ['-P', '--publish-all'],
            description: 'Publish all exposed ports to random ports'),
        Option(
            name: '--pull',
            description:
                'Pull image before running (\'always\'|\'missing\'|\'never\') (default \'missing\')',
            args: [Arg(name: 'string')]),
        Option(
            name: '--read-only',
            description: 'Mount the container\'s root filesystem as read only'),
        Option(
            name: '--restart',
            description:
                'Restart policy to apply when a container exits (default \'no\')',
            args: [Arg(name: 'string')]),
        Option(
            name: '--rm',
            description: 'Automatically remove the container when it exits'),
        Option(
            name: '--runtime',
            description: 'Runtime to use for this container',
            args: [Arg(name: 'string')]),
        Option(
            name: '--security-opt',
            description: 'Security Options',
            args: [Arg(name: 'list')]),
        Option(
            name: '--shm-size',
            description: 'Size of /dev/shm',
            args: [Arg(name: 'bytes')]),
        Option(
            name: '--sig-proxy',
            description:
                'Proxy received signals to the process (default true)'),
        Option(
            name: '--stop-signal',
            description: 'Signal to stop a container (default \'SIGTERM\')',
            args: [Arg(name: 'string')]),
        Option(
            name: '--stop-timeout',
            description: 'Timeout (in seconds) to stop a container',
            args: [Arg(name: 'int')]),
        Option(
            name: '--storage-opt',
            description: 'Storage driver options for the container',
            args: [Arg(name: 'list')]),
        Option(
            name: '--sysctl',
            description: 'Sysctl options (default map[])',
            args: [Arg(name: 'map')]),
        Option(
            name: '--tmpfs',
            description: 'Mount a tmpfs directory',
            args: [Arg(name: 'list')]),
        Option(name: ['-t', '--tty'], description: 'Allocate a pseudo-TTY'),
        Option(
            name: '--ulimit',
            description: 'Ulimit options (default [])',
            args: [Arg(name: 'ulimit')]),
        Option(
            name: ['-u', '--user'],
            description: 'Username or UID (format: <name|uid>[:<group|gid>])',
            args: [Arg(name: 'string')]),
        Option(
            name: '--userns',
            description: 'User namespace to use',
            args: [Arg(name: 'string')]),
        Option(
            name: '--uts',
            description: 'UTS namespace to use',
            args: [Arg(name: 'string')]),
        Option(
            name: ['-v', '--volume'],
            description: 'Bind mount a volume',
            args: [Arg(name: 'list')]),
        Option(
            name: '--volume-driver',
            description: 'Optional volume driver for the container',
            args: [Arg(name: 'string')]),
        Option(
            name: '--volumes-from',
            description: 'Mount volumes from the specified container(s)',
            args: [Arg(name: 'list')]),
        Option(
            name: ['-w', '--workdir'],
            description: 'Working directory inside the container',
            args: [Arg(name: 'string')])
      ],
      args: [
        Arg(
            name: 'image',
            description: 'The Podman image to use',
            generators: Generator(
                script: [
                  'podman',
                  'images',
                  '--format',
                  '{{.Repository}} {{.Size}} {{.Tag}} {{.ID}}'
                ],
                // TS_UNCONVERTED_START (postProcess)
// function (out) {
//             return out.split("\n").map((image) => {
//               const [repo, size, tag, id] = image.split(" ");
//               return {
//                 name: repo,
//                 description: `${id}@${tag} - ${size}`,
//                 icon: "fig://icon?type=docker",
//               };
//             }
// TS_UNCONVERTED_END
                postProcess: null))
      ])
};

/// Completion spec for `podman` CLI
final FigSpec podmanSpec = FigSpec(
    name: 'podman',
    description: 'Manage containers, pods, and images with Podman',
    subcommands: [
      sharedCommands['attach']!,
      sharedCommands['build']!,
      sharedCommands['commit']!,
      sharedCommands['cp']!,
      sharedCommands['create']!,
      sharedCommands['diff']!,
      Subcommand(
          name: 'events',
          description: 'Show podman system events',
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
          description: 'Display podman system information',
          options: [
            Option(
                args: [Arg(name: 'string')],
                description: 'Format the output using the given Go template',
                name: ['-f', '--format'])
          ]),
      Subcommand(
          name: 'inspect',
          description: 'Display the configuration of object denoted by ID',
          args: [
            Arg(name: 'Name or ID', generators: [
              Generator(
                  script: ['podman', 'ps', '-a', '--format', '{{ json . }}'],
                  // TS_UNCONVERTED_START (postProcess)
// function (out) {
//               const allLines = out.split("\n").map((line) => JSON.parse(line));
//               return allLines.map((i) => ({
//                 name: i.Id,
//                 displayName: `[con] ${i.Id} (${i.Image})`,
//               }));
// TS_UNCONVERTED_END
                  postProcess: null),
              Generator(
                  script: [
                    'podman',
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
//                 if (i.repository === "\u003cnone\u003e") {
//                   displayName = i.Id;
//                 } else {
//                   displayName = i.repository;
//                   if (i.Tag !== "\u003cnone\u003e") {
//                     displayName += `:${i.tag}`;
//                   }
//                 }
//
//                 return {
//                   name: i.ID,
//                   displayName: `[img] ${displayName}`,
//                 };
//               }
// TS_UNCONVERTED_END
                  postProcess: null)
            ])
          ])
    ]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (dockerGenerators)
// const dockerGenerators: Record<string, Fig.Generator> = {
//   runningDockerContainers: {
//     script: ["podman", "ps", "--format", "{{ json . }}"],
//     postProcess: postProcessDockerPs,
//   },
//   allDockerContainers: {
//     script: ["podman", "ps", "-a", "--format", "{{ json . }}"],
//     postProcess: postProcessDockerPs,
//   },
//   pausedDockerContainers: {
//     script: [
//       "podman",
//       "ps",
//       "--filter",
//       "status=paused",
//       "--format",
//       "{{ json . }}",
//     ],
//     postProcess: postProcessDockerPs,
//   },
//   allLocalImages: {
//     script: ["podman", "image", "ls", "--format", "{{ json . }}"],
//     postProcess: function (out) {
//       return out
//         .split("\n")
//         .map((line) => JSON.parse(line))
//         .map((i) => ({
//           name: `${i.Id}`,
//           displayName: `${i.repository} - ${i.Id}`,
//           icon: "fig://icon?type=docker",
//         }
// TS_GENERATOR_BLOCK_END
