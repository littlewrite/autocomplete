// AI-generated from TypeScript source: docker-compose.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

/// 获取 Docker Compose 命令（安全版本）
List<String> getComposeCommand(List<String> tokens) {
  if (tokens.isEmpty) return ['docker-compose'];
  return tokens[0] == 'docker' ? ['docker', 'compose'] : ['docker-compose'];
}

/// 从 tokens 中提取文件参数（安全版本）
List<String> extractFileArgs(List<String> tokens) {
  final files = <String>[];

  for (int i = 0; i < tokens.length - 1; i++) {
    if (tokens[i] == '-f' && i + 1 < tokens.length) {
      final fileName = tokens[i + 1];
      if (fileName.isNotEmpty) {
        files.add(fileName);
        i += 1; // 跳过文件名
      }
    }
  }

  // 将文件列表转换为 -f file1 -f file2 ... 格式
  return files.expand((f) => ['-f', f]).toList();
}

/// 服务生成器（带有 postProcess）
final FigGenerator servicesGenerator = FigGenerator(
  script: (context) {
    try {
      final compose = getComposeCommand(context);
      final fileArgs = extractFileArgs(context);
      return [...compose, ...fileArgs, 'config', '--services'];
    } catch (e) {
      // 如果出现错误，返回空命令或默认命令
      print('Error building compose command: $e');
      return ['docker-compose', 'config', '--services'];
    }
  },
  splitOn: '\n',
  postProcess: (String out, [List<String>? tokens]) {
    // 可选的后处理函数，用于进一步处理输出
    return out
        .split('\n')
        .where((service) => service.trim().isNotEmpty)
        .map((service) => FigSuggestion(
              name: service.trim(),
              description: 'Docker Compose service',
              icon: '🐳',
            ))
        .toList();
  },
);

/// 配置生成器
final FigGenerator profilesGenerator = FigGenerator(
  script: (context) {
    final compose = getComposeCommand(context);
    final fileArgs = extractFileArgs(context);
    return [...compose, ...fileArgs, 'config', '--profiles'];
  },
  splitOn: '\n',
);

/// Completion spec for `docker-compose` CLI
final FigSpec dockerComposeSpec = FigSpec(
    name: 'docker-compose',
    description: 'Define and run multi-container applications with Docker',
    subcommands: [
      Subcommand(
          name: 'build',
          description: 'Build or rebuild services',
          args: [
            Arg(
                name: 'services',
                isVariadic: true,
                isOptional: true,
                generators: servicesGenerator)
          ],
          options: [
            Option(
                name: '--build-arg',
                description: 'Set build-time variables for services',
                isRepeatable: true,
                args: [Arg(name: 'key=value', generators: servicesGenerator)]),
            Option(
                name: '--compress',
                description:
                    'Compress the build context using gzip. DEPRECATED'),
            Option(
                name: '--force-rm',
                description:
                    'Always remove intermediate containers. DEPRECATED'),
            Option(
                name: ['--memory', '-m'],
                description:
                    'Set memory limit for the build container. Not supported on buildkit yet',
                args: [Arg(name: 'memory')]),
            Option(
                name: '--no-cache',
                description: 'Do not use cache when building the image'),
            Option(
                name: '--no-rm',
                description:
                    'Do not remove intermediate containers after a successful build. DEPRECATED'),
            Option(
                name: '--parallel',
                description: 'Build images in parallel. DEPRECATED'),
            Option(
                name: '--progress',
                description:
                    'Set type of progress output (auto, tty, plain, quiet)',
                args: [
                  Arg(name: 'progress', defaultValue: 'auto', suggestions: [
                    FigSuggestion(name: 'auto'),
                    FigSuggestion(name: 'tty'),
                    FigSuggestion(name: 'plain'),
                    FigSuggestion(name: 'quiet')
                  ])
                ]),
            Option(
                name: '--pull',
                description:
                    'Always attempt to pull a newer version of the image'),
            Option(
                name: ['--quiet', '-q'],
                description: 'Don\'t print anything to STDOUT'),
            Option(
                name: '--ssh',
                description:
                    'Set SSH authentications used when building service images. (use \'default\' for using your default SSH Agent)',
                args: [Arg(name: 'ssh')])
          ]),
      Subcommand(
          name: ['config', 'convert'],
          description:
              'Converts the compose file to platform\'s canonical format',
          args: [
            Arg(
                name: 'services',
                isVariadic: true,
                generators: servicesGenerator)
          ],
          options: [
            Option(
                name: '--format',
                description: 'Format the output. Values: [yaml | json]',
                args: [
                  Arg(name: 'format', defaultValue: 'yaml', suggestions: [
                    FigSuggestion(name: 'yaml'),
                    FigSuggestion(name: 'json')
                  ])
                ]),
            Option(
                name: '--hash',
                description: 'Print the service config hash, one per line',
                args: [Arg(name: 'hash')]),
            Option(
                name: '--images',
                description: 'Print the image names, one per line'),
            Option(
                name: '--no-interpolate',
                description: 'Don\'t interpolate environment variables'),
            Option(
                name: '--no-normalize',
                description: 'Don\'t normalize compose model'),
            Option(
                name: ['--output', '-o'],
                description: 'Save to file (default to stdout)',
                args: [Arg(name: 'output', template: 'filepaths')]),
            Option(
                name: '--profiles',
                description: 'Print the profile names, one per line'),
            Option(
                name: ['--quiet', '-q'],
                description:
                    'Only validate the configuration, don\'t print anything'),
            Option(
                name: '--resolve-image-digests',
                description: 'Pin image tags to digests'),
            Option(
                name: '--services',
                description: 'Print the service names, one per line'),
            Option(
                name: '--volumes',
                description: 'Print the volume names, one per line')
          ]),
      Subcommand(
          name: 'cp',
          description:
              'Copy files/folders between a service container and the local filesystem',
          args: [
            Arg(name: 'source path'),
            Arg(name: 'dest path')
          ],
          options: [
            Option(
                name: '--all',
                description: 'Copy to all the containers of the service'),
            Option(
                name: ['--archive', '-a'],
                description: 'Archive mode (copy all uid/gid information)'),
            Option(
                name: ['--follow-link', '-L'],
                description: 'Always follow symbol link in SRC_PATH'),
            Option(
                name: '--index',
                description:
                    'Index of the container if there are multiple instances of a service',
                args: [Arg(name: 'index', defaultValue: '0')])
          ]),
      Subcommand(
          name: 'create',
          description: 'Creates containers for a service',
          args: [
            Arg(
                name: 'service',
                isVariadic: true,
                isOptional: true,
                generators: servicesGenerator)
          ],
          options: [
            Option(
                name: '--build',
                description: 'Build images before starting containers'),
            Option(
                name: '--force-recreate',
                description:
                    'Recreate containers even if their configuration and image haven\'t changed'),
            Option(
                name: '--no-build',
                description: 'Don\'t build an image, even if it\'s missing'),
            Option(
                name: '--no-recreate',
                description:
                    'If containers already exist, don\'t recreate them. Incompatible with --force-recreate')
          ]),
      Subcommand(
          name: 'down',
          description: 'Stop and remove containers, networks',
          options: [
            Option(
                name: '--remove-orphans',
                description:
                    'Remove containers for services not defined in the Compose file'),
            Option(
                name: '--rmi',
                description:
                    'Remove images used by services. "local" remove only images that don\'t have a custom tag ("local"|"all")',
                args: [Arg(name: 'rmi')]),
            Option(
                name: ['--timeout', '-t'],
                description: 'Specify a shutdown timeout in seconds',
                args: [Arg(name: 'timeout', defaultValue: '10')]),
            Option(
                name: ['--volumes', '-v'],
                description:
                    'Remove named volumes declared in the `volumes` section of the Compose file and anonymous volumes attached to containers')
          ]),
      Subcommand(
          name: 'events',
          description: 'Receive real time events from containers',
          args: [
            Arg(
                name: 'service',
                isVariadic: true,
                isOptional: true,
                generators: servicesGenerator)
          ],
          options: [
            Option(
                name: '--json',
                description: 'Output events as a stream of json objects')
          ]),
      Subcommand(
          name: 'exec',
          description: 'Execute a command in a running container',
          args: [
            Arg(name: 'service', generators: servicesGenerator),
            Arg(name: 'command', isVariadic: true)
          ],
          options: [
            Option(
                name: ['--detach', '-d'],
                description: 'Detached mode: Run command in the background'),
            Option(
                name: ['--env', '-e'],
                description: 'Set environment variables',
                isRepeatable: true,
                args: [Arg(name: 'key=value')]),
            Option(
                name: '--index',
                description:
                    'Index of the container if there are multiple instances of a service [default: 1]',
                args: [Arg(name: 'index', defaultValue: '1')]),
            Option(
                name: ['--interactive', '-i'],
                description: 'Keep STDIN open even if not attached'),
            Option(
                name: ['--no-TTY', '-T'],
                description:
                    'Disable pseudo-TTY allocation. By default `docker compose exec` allocates a TTY'),
            Option(
                name: '--privileged',
                description: 'Give extended privileges to the process'),
            Option(name: ['--tty', '-t'], description: 'Allocate a pseudo-TTY'),
            Option(
                name: ['--user', '-u'],
                description: 'Run the command as this user',
                args: [Arg(name: 'user')]),
            Option(
                name: ['--workdir', '-w'],
                description: 'Path to workdir directory for this command',
                args: [Arg(name: 'workdir', template: 'folders')])
          ]),
      Subcommand(
          name: 'images',
          description: 'List images used by the created containers',
          args: [
            Arg(
                name: 'service',
                isVariadic: true,
                isOptional: true,
                generators: servicesGenerator)
          ],
          options: [
            Option(name: ['--quiet', '-q'], description: 'Only display IDs')
          ]),
      Subcommand(
          name: 'kill',
          description: 'Force stop service containers',
          args: [
            Arg(
                name: 'service',
                isVariadic: true,
                isOptional: true,
                generators: servicesGenerator)
          ],
          options: [
            Option(
                name: ['--signal', '-s'],
                description: 'SIGNAL to send to the container',
                args: [Arg(name: 'signal', defaultValue: 'SIGKILL')])
          ]),
      Subcommand(
          name: 'logs',
          description: 'View output from containers',
          args: [
            Arg(
                name: 'service',
                isVariadic: true,
                isOptional: true,
                generators: servicesGenerator)
          ],
          options: [
            Option(name: ['--follow', '-f'], description: 'Follow log output'),
            Option(
                name: '--no-color', description: 'Produce monochrome output'),
            Option(
                name: '--no-log-prefix',
                description: 'Don\'t print prefix in logs'),
            Option(
                name: '--since',
                description:
                    'Show logs since timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)',
                args: [Arg(name: 'since')]),
            Option(
                name: '--tail',
                description:
                    'Number of lines to show from the end of the logs for each container',
                args: [
                  Arg(
                      name: 'lines',
                      suggestions: [FigSuggestion(name: 'all')],
                      defaultValue: 'all')
                ]),
            Option(
                name: ['--timestamps', '-t'], description: 'Show timestamps'),
            Option(
                name: '--until',
                description:
                    'Show logs before a timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)',
                args: [Arg(name: 'timestamp')])
          ]),
      Subcommand(
          name: 'ls',
          description: 'List running compose projects',
          options: [
            Option(
                name: ['--all', '-a'],
                description: 'Show all stopped Compose projects'),
            Option(
                name: '--filter',
                description: 'Filter output based on conditions provided',
                args: [Arg(name: 'filter')]),
            Option(
                name: '--format',
                description: 'Format the output. Values: [pretty | json]',
                args: [
                  Arg(name: 'format', defaultValue: 'pretty', suggestions: [
                    FigSuggestion(name: 'pretty'),
                    FigSuggestion(name: 'json')
                  ])
                ]),
            Option(name: ['--quiet', '-q'], description: 'Only display IDs')
          ]),
      Subcommand(name: 'pause', description: 'Pause services', args: [
        Arg(
            name: 'service',
            isVariadic: true,
            isOptional: true,
            generators: servicesGenerator)
      ]),
      Subcommand(
          name: 'port',
          description: 'Print the public port for a port binding',
          args: [
            Arg(name: 'service', generators: servicesGenerator),
            Arg(name: 'private_port')
          ],
          options: [
            Option(
                name: '--index',
                description:
                    'Index of the container if service has multiple replicas',
                args: [Arg(name: 'index', defaultValue: '1')]),
            Option(name: '--protocol', description: 'Tcp or udp', args: [
              Arg(name: 'protocol', defaultValue: 'tcp', suggestions: [
                FigSuggestion(name: 'tcp'),
                FigSuggestion(name: 'udp')
              ])
            ])
          ]),
      Subcommand(name: 'ps', description: 'List containers', args: [
        Arg(
            name: 'service',
            isVariadic: true,
            isOptional: true,
            generators: servicesGenerator)
      ], options: [
        Option(
            name: ['--all', '-a'],
            description:
                'Show all stopped containers (including those created by the run command)'),
        Option(
            name: '--filter',
            description:
                'Filter services by a property (supported filters: status)',
            args: [Arg(name: 'filter')]),
        Option(
            name: '--format',
            description: 'Format the output. Values: [pretty | json]',
            args: [
              Arg(name: 'format', defaultValue: 'pretty', suggestions: [
                FigSuggestion(name: 'pretty'),
                FigSuggestion(name: 'json')
              ])
            ]),
        Option(name: ['--quiet', '-q'], description: 'Only display IDs'),
        Option(name: '--services', description: 'Display services'),
        Option(
            name: '--status',
            description:
                'Filter services by status. Values: [paused | restarting | removing | running | dead | created | exited]',
            isRepeatable: true,
            args: [
              Arg(name: 'status', suggestions: [
                FigSuggestion(name: 'paused'),
                FigSuggestion(name: 'restarting'),
                FigSuggestion(name: 'removing'),
                FigSuggestion(name: 'running'),
                FigSuggestion(name: 'dead'),
                FigSuggestion(name: 'created'),
                FigSuggestion(name: 'exited')
              ])
            ])
      ]),
      Subcommand(name: 'pull', description: 'Pull service images', args: [
        Arg(
            name: 'service',
            isVariadic: true,
            isOptional: true,
            generators: servicesGenerator)
      ], options: [
        Option(
            name: '--ignore-pull-failures',
            description:
                'Pull what it can and ignores images with pull failures'),
        Option(
            name: '--include-deps',
            description: 'Also pull services declared as dependencies'),
        Option(
            name: '--no-parallel',
            description: 'DEPRECATED disable parallel pulling'),
        Option(
            name: '--parallel',
            description: 'DEPRECATED pull multiple images in parallel'),
        Option(
            name: ['--quiet', '-q'],
            description: 'Pull without printing progress information')
      ]),
      Subcommand(name: 'push', description: 'Push service images', args: [
        Arg(
            name: 'service',
            isVariadic: true,
            isOptional: true,
            generators: servicesGenerator)
      ], options: [
        Option(
            name: '--ignore-push-failures',
            description:
                'Push what it can and ignores images with push failures')
      ]),
      Subcommand(name: 'restart', description: 'Restart containers', options: [
        Option(
            name: ['--timeout', '-t'],
            description: 'Specify a shutdown timeout in seconds',
            args: [Arg(name: 'timeout', defaultValue: '10')])
      ], args: [
        Arg(
            name: 'service',
            isVariadic: true,
            isOptional: true,
            generators: servicesGenerator)
      ]),
      Subcommand(
          name: 'rm',
          description: 'Removes stopped service containers',
          args: [
            Arg(
                name: 'service',
                isVariadic: true,
                isOptional: true,
                generators: servicesGenerator)
          ],
          options: [
            Option(
                name: ['--all', '-a'], description: 'Deprecated - no effect'),
            Option(
                name: ['--force', '-f'],
                description: 'Don\'t ask to confirm removal'),
            Option(
                name: ['--stop', '-s'],
                description:
                    'Stop the containers, if required, before removing'),
            Option(
                name: ['--volumes', '-v'],
                description:
                    'Remove any anonymous volumes attached to containers')
          ]),
      Subcommand(
          name: 'run',
          description: 'Run a one-off command on a service',
          args: [
            Arg(name: 'service', generators: servicesGenerator),
            Arg(name: 'command')
          ],
          options: [
            Option(
                name: ['--detach', '-d'],
                description:
                    'Run container in background and print container ID'),
            Option(
                name: '--entrypoint',
                description: 'Override the entrypoint of the image',
                args: [Arg(name: 'entrypoint')]),
            Option(
                name: ['--env', '-e'],
                description: 'Set environment variables',
                isRepeatable: true,
                args: [Arg(name: 'env')]),
            Option(
                name: ['--interactive', '-i'],
                description: 'Keep STDIN open even if not attached'),
            Option(
                name: ['--label', '-l'],
                description: 'Add or override a label',
                isRepeatable: true,
                args: [Arg(name: 'label')]),
            Option(
                name: '--name',
                description: 'Assign a name to the container',
                args: [Arg(name: 'name')]),
            Option(
                name: ['--no-TTY', '-T'],
                description:
                    'Disable pseudo-TTY allocation (default: auto-detected)'),
            Option(
                name: '--no-deps', description: 'Don\'t start linked services'),
            Option(
                name: ['--publish', '-p'],
                description: 'Publish a container\'s port(s) to the host',
                isRepeatable: true,
                args: [Arg(name: 'publish')]),
            Option(
                name: '--quiet-pull',
                description: 'Pull without printing progress information'),
            Option(
                name: '--rm',
                description:
                    'Automatically remove the container when it exits'),
            Option(
                name: '--service-ports',
                description:
                    'Run command with the service\'s ports enabled and mapped to the host'),
            Option(name: ['--tty', '-t'], description: 'Allocate a pseudo-TTY'),
            Option(
                name: '--use-aliases',
                description:
                    'Use the service\'s network useAliases in the network(s) the container connects to'),
            Option(
                name: ['--user', '-u'],
                description: 'Run as specified username or uid',
                args: [Arg(name: 'user')]),
            Option(
                name: ['--volume', '-v'],
                description: 'Bind mount a volume',
                isRepeatable: true,
                args: [Arg(name: 'volume')]),
            Option(
                name: ['--workdir', '-w'],
                description: 'Working directory inside the container',
                args: [Arg(name: 'workdir', template: 'folders')])
          ]),
      Subcommand(name: 'start', description: 'Start services', args: [
        Arg(
            name: 'service',
            isVariadic: true,
            isOptional: true,
            generators: servicesGenerator)
      ]),
      Subcommand(name: 'stop', description: 'Stop services', args: [
        Arg(
            name: 'service',
            isVariadic: true,
            isOptional: true,
            generators: servicesGenerator)
      ], options: [
        Option(
            name: ['--timeout', '-t'],
            description: 'Specify a shutdown timeout in seconds',
            args: [Arg(name: 'timeout', defaultValue: '10')])
      ]),
      Subcommand(
          name: 'top',
          description: 'Display the running processes',
          args: [
            Arg(
                name: 'service',
                isOptional: true,
                isVariadic: true,
                generators: servicesGenerator)
          ]),
      Subcommand(name: 'unpause', description: 'Unpause services', args: [
        Arg(
            name: 'service',
            isOptional: true,
            isVariadic: true,
            generators: servicesGenerator)
      ]),
      Subcommand(name: 'up', description: 'Create and start containers', args: [
        Arg(
            name: 'service',
            isVariadic: true,
            isOptional: true,
            generators: servicesGenerator)
      ], options: [
        Option(
            name: '--abort-on-container-exit',
            description:
                'Stops all containers if any container was stopped. Incompatible with -d'),
        Option(
            name: '--always-recreate-deps',
            description:
                'Recreate dependent containers. Incompatible with --no-recreate'),
        Option(
            name: '--attach',
            description: 'Attach to service output',
            isRepeatable: true,
            args: [Arg(name: 'attach')]),
        Option(
            name: '--attach-dependencies',
            description: 'Attach to dependent containers'),
        Option(
            name: '--build',
            description: 'Build images before starting containers'),
        Option(
            name: ['--detach', '-d'],
            description: 'Detached mode: Run containers in the background'),
        Option(
            name: '--exit-code-from',
            description:
                'Return the exit code of the selected service container. Implies --abort-on-container-exit',
            args: [Arg(name: 'exit-code-from')]),
        Option(
            name: '--force-recreate',
            description:
                'Recreate containers even if their configuration and image haven\'t changed'),
        Option(
            name: '--no-build',
            description: 'Don\'t build an image, even if it\'s missing'),
        Option(name: '--no-color', description: 'Produce monochrome output'),
        Option(name: '--no-deps', description: 'Don\'t start linked services'),
        Option(
            name: '--no-log-prefix',
            description: 'Don\'t print prefix in logs'),
        Option(
            name: '--no-recreate',
            description:
                'If containers already exist, don\'t recreate them. Incompatible with --force-recreate'),
        Option(
            name: '--no-start',
            description: 'Don\'t start the services after creating them'),
        Option(
            name: '--quiet-pull',
            description: 'Pull without printing progress information'),
        Option(
            name: '--remove-orphans',
            description:
                'Remove containers for services not defined in the Compose file'),
        Option(
            name: ['--renew-anon-volumes', '-V'],
            description:
                'Recreate anonymous volumes instead of retrieving data from the previous containers'),
        Option(
            name: '--scale',
            description:
                'Scale SERVICE to NUM instances. Overrides the `scale` setting in the Compose file if present',
            isRepeatable: true,
            args: [Arg(name: 'scale')]),
        Option(
            name: ['--timeout', '-t'],
            description:
                'Use this timeout in seconds for container shutdown when attached or when containers are already running',
            args: [Arg(name: 'timeout', defaultValue: '10')]),
        Option(
            name: '--wait',
            description:
                'Wait for services to be running|healthy. Implies detached mode')
      ]),
      Subcommand(
          name: 'version',
          description: 'Show the Docker Compose version information',
          options: [
            Option(
                name: ['--format', '-f'],
                description:
                    'Format the output. Values: [pretty | json]. (Default: pretty)',
                args: [
                  Arg(name: 'format', suggestions: [
                    FigSuggestion(name: 'pretty'),
                    FigSuggestion(name: 'json')
                  ])
                ]),
            Option(
                name: '--short',
                description: 'Shows only Compose\'s version number')
          ])
    ],
    options: [
      Option(
          name: '--ansi',
          description:
              'Control when to print ANSI control characters ("never"|"always"|"auto")',
          args: [
            Arg(name: 'ansi', defaultValue: 'auto', suggestions: [
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'always'),
              FigSuggestion(name: 'auto')
            ])
          ]),
      Option(
          name: '--compatibility',
          description: 'Run compose in backward compatibility mode'),
      Option(
          name: '--env-file',
          description: 'Specify an alternate environment file',
          args: [Arg(name: 'env-file', template: 'filepaths')]),
      Option(
          name: ['--file', '-f'],
          description: 'Compose configuration files',
          isRepeatable: true,
          args: [Arg(name: 'file', template: 'filepaths')]),
      Option(
          name: '--no-ansi',
          description: 'Do not print ANSI control characters (DEPRECATED)'),
      Option(
          name: '--profile',
          description: 'Specify a profile to enable',
          isRepeatable: true,
          args: [Arg(name: 'profile', generators: profilesGenerator)]),
      Option(
          name: '--project-directory',
          description:
              'Specify an alternate working directory (default: the path of the, first specified, Compose file)',
          args: [Arg(name: 'project-directory', template: 'folders')]),
      Option(
          name: ['--project-name', '-p'],
          description: 'Project name',
          args: [Arg(name: 'project-name')]),
      Option(name: '--verbose', description: 'Show more output'),
      Option(
          name: '--workdir',
          description:
              'DEPRECATED! USE --project-directory INSTEAD. Specify an alternate working directory (default: the path of the, first specified, Compose file)',
          args: [Arg(name: 'workdir')])
    ]);
