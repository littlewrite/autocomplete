import 'package:autocomplete/src/spec.dart';
import 'generators.dart';
import 'run_options.dart';

final Map<String, FigSubcommand> sharedCommands = {
  'attach': FigSubcommand(
    name: 'attach',
    description:
        'Attach local standard input, output, and error streams to a running container,',
    options: [
      FigOption(
        name: ['--detach-keys'],
        description: 'Override the key sequence for detaching a container',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['--no-stdin'],
        description: 'Do not attach STDIN',
      ),
      FigOption(
        name: ['--sig-proxy'],
        description: 'Proxy all received signals to the process (default true)',
      ),
    ],
  ),
  'commit': FigSubcommand(
    name: 'commit',
    description: "Create a new image from a container's changes",
    args: [
      containersArg,
      FigArg(name: '[REPOSITORY[:TAG]]'),
    ],
    options: [
      FigOption(
        name: ['-a', '--author'],
        description:
            'Author (e.g., "John Hannibal Smith <hannibal@a-team.com>")',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['-c', '--change'],
        description: 'Apply Dockerfile instruction to the created image',
        args: [FigArg(name: 'list')],
      ),
      FigOption(
        name: ['-m', '--message'],
        description: 'Commit message',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['-p', '--pause'],
        description: 'Pause container during commit (default true)',
      ),
    ],
  ),
  'cp': FigSubcommand(
    name: 'cp',
    description:
        'Copy files/folders between a container and the local filesystem',
    args: [
      FigArg(
          name:
              'CONTAINER:SRC_PATH DEST_PATH|- OR SRC_PATH|- CONTAINER:DEST_PATH'),
    ],
    options: [
      FigOption(
        name: ['-a', '--archive'],
        description: 'Archive mode (copy all uid/gid information)',
      ),
      FigOption(
        name: ['-L', '--follow-link'],
        description: 'Always follow symbol link in SRC_PATH',
      ),
    ],
  ),
  'create': FigSubcommand(
    name: 'create',
    description: 'Create a new container',
    args: [
      FigArg(
        name: 'container',
        generators: [dockerGenerators['allLocalImages']!],
      ),
      FigArg(
        name: 'command',
        isCommand: true,
      ),
    ],
    options: runOptions,
  ),
  'run': FigSubcommand(
    name: 'run',
    description: 'Run a command in a new container',
    args: [
      FigArg(
        name: 'image',
        description: 'The Docker image to use',
        generators: [dockerGenerators['allLocalImages']!],
      ),
      FigArg(
        name: 'command',
        isCommand: true,
      ),
    ],
    options: [
      FigOption(
        name: ['-d', '--detach'],
        description: 'Run container in background and print container ID',
      ),
      FigOption(
        name: ['--detach-keys'],
        description: 'Override the key sequence for detaching a container',
        args: [FigArg(name: 'string')],
      ),
      ...runOptions,
    ],
  ),
  'sbom': FigSubcommand(
    name: 'sbom',
    description:
        'View the packaged-based Software Bill Of Materials (SBOM) for an image',
    args: [
      FigArg(
        name: 'image',
        generators: [dockerGenerators['allLocalImagesWithRepository']!],
      ),
    ],
    options: [
      FigOption(
        name: ['-D', '--debug'],
        description: 'Show debug logging',
      ),
      FigOption(
        name: ['--exclude'],
        description: 'Exclude paths from being scanned using a glob expression',
        args: [FigArg(name: 'paths')],
      ),
      FigOption(
        name: ['--format'],
        description: 'Report output format',
        args: [
          FigArg(
            name: 'fromat',
            defaultValue: 'table',
            suggestions: [
              FigSuggestion(name: 'syft-json'),
              FigSuggestion(name: 'cyclonedx-xml'),
              FigSuggestion(name: 'cyclonedx-json'),
              FigSuggestion(name: 'github-0-json'),
              FigSuggestion(name: 'spdx-tag-value'),
              FigSuggestion(name: 'spdx-json'),
              FigSuggestion(name: 'table'),
              FigSuggestion(name: 'text'),
            ],
          ),
        ],
      ),
      FigOption(
        name: ['--layers'],
        description: '[experimental] selection of layers to catalog',
        args: [
          FigArg(
            name: 'layers',
            defaultValue: 'squashed',
            suggestions: [
              FigSuggestion(name: 'squashed'),
              FigSuggestion(name: 'all'),
            ],
          ),
        ],
      ),
      FigOption(
        name: ['-o', '--output'],
        description:
            'File to write the default report output to (default is STDOUT)',
        args: [
          FigArg(
            name: 'file',
            template: ['filepaths'],
          ),
        ],
      ),
      FigOption(
        name: ['--platform'],
        description:
            "An optional platform specifier for container image sources (e.g. 'linux/arm64', 'linux/arm64/v8', 'arm64', 'linux')",
        args: [FigArg(name: 'platform')],
      ),
      FigOption(
        name: ['--quiet'],
        description: 'Suppress all non-report output',
      ),
      FigOption(
        name: ['-v', '--version'],
        description: 'Version for sbom',
      ),
    ],
  ),
  'start': FigSubcommand(
    name: 'start',
    description: 'Start one or more stopped containers',
    args: [
      FigArg(
        name: 'container',
        generators: [dockerGenerators['allDockerContainers']!],
      ),
    ],
    options: [
      FigOption(
        name: ['-a', '--attach'],
        description: 'Attach STDOUT/STDERR and forward signals',
      ),
      FigOption(
        name: ['--detach-keys'],
        description: 'Override the key sequence for detaching a container',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['-i', '--interactive'],
        description: "Attach container's STDIN",
      ),
    ],
  ),
  'build': FigSubcommand(
    name: 'build',
    description: 'Build an image from a Dockerfile',
    args: [
      FigArg(
        name: 'path',
        template: ['folders'],
      ),
    ],
    options: [
      FigOption(
        name: ['--add-host'],
        description: 'Add a custom host-to-IP mapping (host:ip)',
        args: [FigArg(name: 'list')],
      ),
      FigOption(
        name: ['--build-arg'],
        description: 'Set build-time variables',
        args: [FigArg(name: 'list')],
      ),
      FigOption(
        name: ['--cache-from'],
        description: 'Images to consider as cache sources',
        args: [FigArg(name: 'strings')],
      ),
      FigOption(
        name: ['--disable-content-trust'],
        description: 'Skip image verification (default true)',
      ),
      FigOption(
        name: ['-f', '--file'],
        description: "Name of the Dockerfile (Default is 'PATH/Dockerfile')",
        args: [
          FigArg(
            name: 'string',
            template: ['filepaths'],
          ),
        ],
      ),
      FigOption(
        name: ['--iidfile'],
        description: 'Write the image ID to the file',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['--isolation'],
        description: 'Container isolation technology',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['--label'],
        description: 'Set metadata for an image',
        args: [FigArg(name: 'list')],
      ),
      FigOption(
        name: ['--network'],
        description:
            'Set the networking mode for the RUN instructions during build (default "default")',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['--no-cache'],
        description: 'Do not use cache when building the image',
      ),
      FigOption(
        name: ['-o', '--output'],
        description: 'Output destination (format: type=local,dest=path)',
        args: [FigArg(name: 'stringArray')],
      ),
      FigOption(
        name: ['--platform'],
        description: 'Set platform if server is multi-platform capable',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['--progress'],
        description:
            'Set type of progress output (auto, plain, tty). Use plain to show container output',
        args: [
          FigArg(
            name: 'string',
            suggestions: [
              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'plain'),
              FigSuggestion(name: 'tty'),
            ],
          ),
        ],
      ),
      FigOption(
        name: ['--pull'],
        description: 'Always attempt to pull a newer version of the image',
      ),
      FigOption(
        name: ['-q', '--quiet'],
        description: 'Suppress the build output and print image ID on success',
      ),
      FigOption(
        name: ['--secret'],
        description:
            'Secret file to expose to the build (only if BuildKit enabled): id=mysecret,src=/local/secret',
        args: [FigArg(name: 'stringArray')],
      ),
      FigOption(
        name: ['--squash'],
        description: 'Squash newly built layers into a single new layer',
      ),
      FigOption(
        name: ['--ssh'],
        description:
            'SSH agent socket or keys to expose to the build (only if BuildKit enabled) (format: default|<id>[=<socket>|<key>[,<key>]])',
        args: [FigArg(name: 'stringArray')],
      ),
      FigOption(
        name: ['-t', '--tag'],
        description: "Name and optionally a tag in the 'name:tag' format",
      ),
      FigOption(
        name: ['--target'],
        description: 'Set the target build stage to build',
        args: [
          FigArg(
            name: 'target build stage',
            // TODO: Implement build target generator
          ),
        ],
      ),
    ],
  ),
  'exec': FigSubcommand(
    name: 'exec',
    description: 'Run a command in a running container',
    args: containerAndCommandArgs,
    options: [
      FigOption(
        name: ['-it'],
        description: 'Launch an interactive session',
        icon: 'fig://icon?type=commandkey',
      ),
      FigOption(
        name: ['-d', '--detach'],
        description: 'Detached mode: run command in the background',
      ),
      FigOption(
        name: ['--detach-keys'],
        description: 'Override the key sequence for detaching a container',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['-e', '--env'],
        description: 'Set environment variables',
        args: [FigArg(name: 'list')],
      ),
      FigOption(
        name: ['--env-file'],
        description: 'Read in a file of environment variables',
        args: [FigArg(name: 'list')],
      ),
      FigOption(
        name: ['-i', '--interactive'],
        description: 'Keep STDIN open even if not attached',
      ),
      FigOption(
        name: ['--privileged'],
        description: 'Give extended privileges to the command',
      ),
      FigOption(
        name: ['-t', '--tty'],
        description: 'Allocate a pseudo-TTY',
      ),
      FigOption(
        name: ['-u', '--user'],
        description: 'Username or UID (format: <name|uid>[:<group|gid>])',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['-w', '--workdir'],
        description: 'Working directory inside the container',
        args: [FigArg(name: 'string')],
      ),
    ],
  ),
  'diff': FigSubcommand(
    name: 'diff',
    description:
        "Inspect changes to files or directories on a container's filesystem",
    args: [containersArg],
  ),
  'export': FigSubcommand(
    name: 'export',
    description: "Export a container's filesystem as a tar archive",
    args: [containersArg],
    options: [
      FigOption(
        name: ['-o', '--output'],
        description: 'Write to a file, instead of STDOUT',
        args: [FigArg(name: 'string')],
      ),
    ],
  ),
  'logs': FigSubcommand(
    name: 'logs',
    description: 'Fetch the logs of a container',
    args: [containersArg],
    options: [
      FigOption(
        name: ['--details'],
        description: 'Show extra details provided to logs',
      ),
      FigOption(
        name: ['-f', '--follow'],
        description: 'Follow log output',
      ),
      FigOption(
        name: ['--since'],
        description:
            'Show logs since timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['-n', '--tail'],
        description:
            'Number of lines to show from the end of the logs (default "all")',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['-t', '--timestamps'],
        description: 'Show timestamps',
      ),
      FigOption(
        name: ['--until'],
        description:
            'Show logs before a timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)',
        args: [FigArg(name: 'string')],
      ),
    ],
  ),
  'pause': FigSubcommand(
    name: 'pause',
    description: 'Pause all processes within one or more containers',
    args: [containersArg],
  ),
  'port': FigSubcommand(
    name: 'port',
    description: 'List port mappings or a specific mapping for the container',
    args: [
      containersArg,
      FigArg(name: '[PRIVATE_PORT[/PROTO]]'),
    ],
  ),
  'rename': FigSubcommand(
    name: 'rename',
    description: 'Rename a container',
    args: [
      containersArg,
      FigArg(name: 'NEW_NAME'),
    ],
  ),
  'restart': FigSubcommand(
    name: 'restart',
    description: 'Restart one or more containers',
    args: [containersArg],
    options: [
      FigOption(
        name: ['-t', '--time'],
        description:
            'Seconds to wait for stop before killing the container (default 10)',
        args: [FigArg(name: 'int')],
      ),
    ],
  ),
  'stats': FigSubcommand(
    name: 'stats',
    description:
        'Display a live stream of container(s) resource usage statistics',
    args: [containersArg],
    options: [
      FigOption(
        name: ['-a', '--all'],
        description: 'Show all containers (default shows just running)',
      ),
      FigOption(
        name: ['--format'],
        description: 'Pretty-print images using a Go template',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['--no-stream'],
        description: 'Disable streaming stats and only pull the first result',
      ),
      FigOption(
        name: ['--no-trunc'],
        description: 'Do not truncate output',
      ),
    ],
  ),
  'stop': FigSubcommand(
    name: 'stop',
    description: 'Stop one or more running containers',
    args: [containersArg],
    options: [
      FigOption(
        name: ['-t', '--time'],
        description: 'Seconds to wait for stop before killing it (default 10)',
        args: [FigArg(name: 'int')],
      ),
    ],
  ),
  'top': FigSubcommand(
    name: 'top',
    description: 'Display the running processes of a container',
    args: [containersArg],
  ),
  'unpause': FigSubcommand(
    name: 'unpause',
    description: 'Unpause all processes within one or more containers',
    args: [
      FigArg(
        name: 'container',
        generators: [dockerGenerators['pausedDockerContainers']!],
      ),
    ],
  ),
  'update': FigSubcommand(
    name: 'update',
    description: 'Update configuration of one or more containers',
    args: [containersArg],
    options: [
      FigOption(
        name: ['--blkio-weight'],
        description:
            'Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)',
        args: [FigArg(name: 'uint16')],
      ),
      FigOption(
        name: ['--cpu-period'],
        description: 'Limit CPU CFS (Completely Fair Scheduler) period',
        args: [FigArg(name: 'int')],
      ),
      FigOption(
        name: ['--cpu-quota'],
        description: 'Limit CPU CFS (Completely Fair Scheduler) quota',
        args: [FigArg(name: 'int')],
      ),
      FigOption(
        name: ['--cpu-rt-period'],
        description: 'Limit the CPU real-time period in microseconds',
        args: [FigArg(name: 'int')],
      ),
      FigOption(
        name: ['--cpu-rt-runtime'],
        description: 'Limit the CPU real-time runtime in microseconds',
        args: [FigArg(name: 'int')],
      ),
      FigOption(
        name: ['-c', '--cpu-shares'],
        description: 'CPU shares (relative weight)',
        args: [FigArg(name: 'int')],
      ),
      FigOption(
        name: ['--cpus'],
        description: 'Number of CPUs',
        args: [FigArg(name: 'decimal')],
      ),
      FigOption(
        name: ['--cpuset-cpus'],
        description: 'CPUs in which to allow execution (0-3, 0,1)',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['--cpuset-mems'],
        description: 'MEMs in which to allow execution (0-3, 0,1)',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['--kernel-memory'],
        description: 'Kernel memory limit',
        args: [FigArg(name: 'bytes')],
      ),
      FigOption(
        name: ['-m', '--memory'],
        description: 'Memory limit',
        args: [FigArg(name: 'bytes')],
      ),
      FigOption(
        name: ['--memory-reservation'],
        description: 'Memory soft limit',
        args: [FigArg(name: 'bytes')],
      ),
      FigOption(
        name: ['--memory-swap'],
        description:
            "Swap limit equal to memory plus swap: '-1' to enable unlimited swap",
        args: [FigArg(name: 'bytes')],
      ),
      FigOption(
        name: ['--pids-limit'],
        description: 'Tune container pids limit (set -1 for unlimited)',
        args: [FigArg(name: 'int')],
      ),
      FigOption(
        name: ['--restart'],
        description: 'Restart policy to apply when a container exits',
        args: [FigArg(name: 'string')],
      ),
    ],
  ),
  'wait': FigSubcommand(
    name: 'wait',
    description:
        'Block until one or more containers stop, then print their exit codes',
    args: [containersArg],
  ),
  'kill': FigSubcommand(
    name: 'kill',
    description: 'Kill one or more running containers',
    args: [
      FigArg(
        name: 'container',
        isVariadic: true,
        generators: [dockerGenerators['runningDockerContainers']!],
      ),
    ],
    options: [
      FigOption(
        name: ['-s', '--signal'],
        description: 'Signal to send to the container (default "KILL")',
        args: [FigArg(name: 'string')],
      ),
    ],
  ),
  'rm': FigSubcommand(
    name: 'rm',
    description: 'Remove one or more containers',
    args: [
      FigArg(
        name: 'containers',
        isVariadic: true,
        generators: [dockerGenerators['allDockerContainers']!],
      ),
    ],
    options: [
      FigOption(
        name: ['-f', '--force'],
        description: 'Force the removal of a running container (uses SIGKILL)',
      ),
      FigOption(
        name: ['-l', '--link'],
        description: 'Remove the specified link',
      ),
      FigOption(
        name: ['-v', '--volumes'],
        description:
            'Remove the anonymous volumes associated with the container',
      ),
    ],
  ),
  'history': FigSubcommand(
    name: 'history',
    description: 'Show the history of an image',
    args: [imagesArg],
    options: [
      FigOption(
        name: ['--format'],
        description: 'Pretty-print images using a Go template',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['-H', '--human'],
        description:
            'Print sizes and dates in human readable format (default true)',
      ),
      FigOption(
        name: ['--no-trunc'],
        description: "Don't truncate output",
      ),
      FigOption(
        name: ['-q', '--quiet'],
        description: 'Only show image IDs',
      ),
    ],
  ),
  'images': FigSubcommand(
    name: 'images',
    description: 'List images',
    args: [FigArg(name: '[REPOSITORY[:TAG]]')],
    options: [
      FigOption(
        name: ['-a', '--all'],
        description: 'Show all images (default hides intermediate images)',
      ),
      FigOption(
        name: ['--digests'],
        description: 'Show digests',
      ),
      FigOption(
        name: ['-f', '--filter'],
        description: 'Filter output based on conditions provided',
        args: [FigArg(name: 'filter')],
      ),
      FigOption(
        name: ['--format'],
        description: 'Pretty-print images using a Go template',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['--no-trunc'],
        description: "Don't truncate output",
      ),
      FigOption(
        name: ['-q', '--quiet'],
        description: 'Only show image IDs',
      ),
    ],
  ),
  'import': FigSubcommand(
    name: 'import',
    description:
        'Import the contents from a tarball to create a filesystem image',
    args: [FigArg(name: 'file|URL|- [REPOSITORY[:TAG]]')],
    options: [
      FigOption(
        name: ['-c', '--change'],
        description: 'Apply Dockerfile instruction to the created image',
        args: [FigArg(name: 'list')],
      ),
      FigOption(
        name: ['-m', '--message'],
        description: 'Set commit message for imported image',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['--platform'],
        description: 'Set platform if server is multi-platform capable',
        args: [FigArg(name: 'string')],
      ),
    ],
  ),
  'load': FigSubcommand(
    name: 'load',
    description: 'Load an image from a tar archive or STDIN',
    options: [
      FigOption(
        name: ['-i', '--input'],
        description: 'Read from tar archive file, instead of STDIN',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['-q', '--quiet'],
        description: 'Suppress the load output',
      ),
    ],
  ),
  'ps': FigSubcommand(
    name: 'ps',
    description: 'List containers',
    options: [
      FigOption(
        name: ['-a', '--all'],
        description: 'Show all containers (default shows just running)',
      ),
      FigOption(
        name: ['-f', '--filter'],
        description: 'Filter output based on conditions provided',
        args: [FigArg(name: 'filter')],
      ),
      FigOption(
        name: ['--format'],
        description: 'Pretty-print containers using a Go template',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['-n', '--last'],
        description:
            'Show n last created containers (includes all states) (default -1)',
        args: [FigArg(name: 'int')],
      ),
      FigOption(
        name: ['-l', '--latest'],
        description: 'Show the latest created container (includes all states)',
      ),
      FigOption(
        name: ['--no-trunc'],
        description: "Don't truncate output",
      ),
      FigOption(
        name: ['-q', '--quiet'],
        description: 'Only display container IDs',
      ),
      FigOption(
        name: ['-s', '--size'],
        description: 'Display total file sizes',
      ),
    ],
  ),
  'pull': FigSubcommand(
    name: 'pull',
    description: 'Pull an image or a repository from a registry',
    args: [
      FigArg(
        name: 'NAME[:TAG|@DIGEST]',
        generators: [dockerGenerators['dockerHubSearch']!],
        debounce: true,
      ),
    ],
    options: [
      FigOption(
        name: ['-a', '--all-tags'],
        description: 'Download all tagged images in the repository',
      ),
      FigOption(
        name: ['--disable-content-trust'],
        description: 'Skip image verification (default true)',
      ),
      FigOption(
        name: ['--platform'],
        description: 'Set platform if server is multi-platform capable',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['-q', '--quiet'],
        description: 'Suppress verbose output',
      ),
    ],
  ),
  'push': FigSubcommand(
    name: 'push',
    description: 'Push an image or a repository to a registry',
    args: [FigArg(name: 'NAME[:TAG]')],
    options: [
      FigOption(
        name: ['-a', '--all-tags'],
        description: 'Push all tagged images in the repository',
      ),
      FigOption(
        name: ['--disable-content-trust'],
        description: 'Skip image signing (default true)',
      ),
      FigOption(
        name: ['-q', '--quiet'],
        description: 'Suppress verbose output',
      ),
    ],
  ),
  'rmi': FigSubcommand(
    name: 'rmi',
    description: 'Remove one or more images',
    args: [
      FigArg(
        name: 'image',
        isVariadic: true,
        generators: [dockerGenerators['allLocalImages']!],
      ),
    ],
    options: [
      FigOption(
        name: ['-f', '--force'],
        description: 'Force removal of the image',
      ),
      FigOption(
        name: ['--no-prune'],
        description: 'Do not delete untagged parents',
      ),
    ],
  ),
  'save': FigSubcommand(
    name: 'save',
    description:
        'Save one or more images to a tar archive (streamed to STDOUT by default)',
    args: [imagesArg],
    options: [
      FigOption(
        name: ['-o', '--output'],
        description: 'Write to a file, instead of STDOUT',
        args: [FigArg(name: 'string')],
      ),
    ],
  ),
  'tag': FigSubcommand(
    name: 'tag',
    description: 'Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE',
    args: [FigArg(name: 'SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]')],
  ),
  'events': FigSubcommand(
    name: 'events',
    description: 'Get real time events from the server',
    options: [
      FigOption(
        name: ['-f', '--filter'],
        description: 'Filter output based on conditions provided',
        args: [FigArg(name: 'filter')],
      ),
      FigOption(
        name: ['--format'],
        description: 'Format the output using the given Go template',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['--since'],
        description: 'Show all events created since timestamp',
        args: [FigArg(name: 'string')],
      ),
      FigOption(
        name: ['--until'],
        description: 'Stream events until this timestamp',
        args: [FigArg(name: 'string')],
      ),
    ],
  ),
  'info': FigSubcommand(
    name: 'info',
    description: 'Display system-wide information',
    options: [
      FigOption(
        name: ['-f', '--format'],
        description: 'Format the output using the given Go template',
        args: [FigArg(name: 'string')],
      ),
    ],
  ),
};
