import 'package:autocomplete/src/spec.dart';

final List<FigOption> runOptions = [
  FigOption(
    name: ['--add-host'],
    description: 'Add a custom host-to-IP mapping (host:ip)',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['-a', '--attach'],
    description: 'Attach to STDIN, STDOUT or STDERR',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--blkio-weight'],
    description:
        'Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)',
    args: [FigArg(name: 'uint16')],
  ),
  FigOption(
    name: ['--blkio-weight-device'],
    description: 'Block IO weight (relative device weight) (default [])',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--cap-add'],
    description: 'Add Linux capabilities',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--cap-drop'],
    description: 'Drop Linux capabilities',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--cgroup-parent'],
    description: 'Optional parent cgroup for the container',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--cgroupns'],
    description: 'Cgroup namespace to use (host|private)',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--cidfile'],
    description: 'Write the container ID to the file',
    args: [FigArg(name: 'string')],
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
    description: 'Limit CPU real-time period in microseconds',
    args: [FigArg(name: 'int')],
  ),
  FigOption(
    name: ['--cpu-rt-runtime'],
    description: 'Limit CPU real-time runtime in microseconds',
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
    name: ['--device'],
    description: 'Add a host device to the container',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--device-cgroup-rule'],
    description: 'Add a rule to the cgroup allowed devices list',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--device-read-bps'],
    description: 'Limit read rate (bytes per second) from a device (default [])',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--device-read-iops'],
    description: 'Limit read rate (IO per second) from a device (default [])',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--device-write-bps'],
    description: 'Limit write rate (bytes per second) to a device (default [])',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--device-write-iops'],
    description: 'Limit write rate (IO per second) to a device (default [])',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--disable-content-trust'],
    description: 'Skip image verification (default true)',
  ),
  FigOption(
    name: ['--dns'],
    description: 'Set custom DNS servers',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--dns-option'],
    description: 'Set DNS options',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--dns-search'],
    description: 'Set custom DNS search domains',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--domainname'],
    description: 'Container NIS domain name',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--entrypoint'],
    description: 'Overwrite the default ENTRYPOINT of the image',
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
    name: ['--expose'],
    description: 'Expose a port or a range of ports',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--gpus'],
    description: 'GPU devices to add to the container (\'all\' to pass all GPUs)',
    args: [FigArg(name: 'gpu-request')],
  ),
  FigOption(
    name: ['--group-add'],
    description: 'Add additional groups to join',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--health-cmd'],
    description: 'Command to run to check health',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--health-interval'],
    description: 'Time between running the check (ms|s|m|h) (default 0s)',
    args: [FigArg(name: 'duration')],
  ),
  FigOption(
    name: ['--health-retries'],
    description: 'Consecutive failures needed to report unhealthy',
    args: [FigArg(name: 'int')],
  ),
  FigOption(
    name: ['--health-start-period'],
    description:
        'Start period for the container to initialize before starting health-retries countdown (ms|s|m|h) (default 0s)',
    args: [FigArg(name: 'duration')],
  ),
  FigOption(
    name: ['--health-timeout'],
    description: 'Maximum time to allow one check to run (ms|s|m|h) (default 0s)',
    args: [FigArg(name: 'duration')],
  ),
  FigOption(
    name: ['--help'],
    description: 'Print usage',
  ),
  FigOption(
    name: ['-h', '--hostname'],
    description: 'Container host name',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--init'],
    description:
        'Run an init inside the container that forwards signals and reaps processes',
  ),
  FigOption(
    name: ['-i', '--interactive'],
    description: 'Keep STDIN open even if not attached',
  ),
  FigOption(
    name: ['--ip'],
    description: 'IPv4 address (e.g., 172.30.100.104)',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--ip6'],
    description: 'IPv6 address (e.g., 2001:db8::33)',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--ipc'],
    description: 'IPC mode to use',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--isolation'],
    description: 'Container isolation technology',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--kernel-memory'],
    description: 'Kernel memory limit',
    args: [FigArg(name: 'bytes')],
  ),
  FigOption(
    name: ['-l', '--label'],
    description: 'Set meta data on a container',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--label-file'],
    description: 'Read in a line delimited file of labels',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--link'],
    description: 'Add link to another container',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--link-local-ip'],
    description: 'Container IPv4/IPv6 link-local addresses',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--log-driver'],
    description: 'Logging driver for the container',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--log-opt'],
    description: 'Log driver options',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--mac-address'],
    description: 'Container MAC address (e.g., 92:d0:c6:0a:29:33)',
    args: [FigArg(name: 'string')],
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
        'Swap limit equal to memory plus swap: \'-1\' to enable unlimited swap',
    args: [FigArg(name: 'bytes')],
  ),
  FigOption(
    name: ['--memory-swappiness'],
    description: 'Tune container memory swappiness (0 to 100) (default -1)',
    args: [FigArg(name: 'int')],
  ),
  FigOption(
    name: ['--mount'],
    description: 'Attach a filesystem mount to the container',
    args: [FigArg(name: 'mount')],
  ),
  FigOption(
    name: ['--name'],
    description: 'Assign a name to the container',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--network'],
    description: 'Connect a container to a network',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--network-alias'],
    description: 'Add network-scoped alias for the container',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--no-healthcheck'],
    description: 'Disable any container-specified HEALTHCHECK',
  ),
  FigOption(
    name: ['--oom-kill-disable'],
    description: 'Disable OOM Killer',
  ),
  FigOption(
    name: ['--oom-score-adj'],
    description: 'Tune host\'s OOM preferences (-1000 to 1000)',
    args: [FigArg(name: 'int')],
  ),
  FigOption(
    name: ['--pid'],
    description: 'PID namespace to use',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--pids-limit'],
    description: 'Tune container pids limit (set -1 for unlimited)',
    args: [FigArg(name: 'int')],
  ),
  FigOption(
    name: ['--platform'],
    description: 'Set platform if server is multi-platform capable',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--privileged'],
    description: 'Give extended privileges to this container',
  ),
  FigOption(
    name: ['-p', '--publish'],
    description: 'Publish a container\'s port(s) to the host',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['-P', '--publish-all'],
    description: 'Publish all exposed ports to random ports',
  ),
  FigOption(
    name: ['--pull'],
    description: 'Pull image before running ("always"|"missing"|"never")',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--read-only'],
    description: 'Mount the container\'s root filesystem as read only',
  ),
  FigOption(
    name: ['--restart'],
    description: 'Restart policy to apply when a container exits (default "no")',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--rm'],
    description: 'Automatically remove the container when it exits',
  ),
  FigOption(
    name: ['--runtime'],
    description: 'Runtime to use for this container',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--security-opt'],
    description: 'Security Options',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--shm-size'],
    description: 'Size of /dev/shm',
    args: [FigArg(name: 'bytes')],
  ),
  FigOption(
    name: ['--sig-proxy'],
    description: 'Proxy received signals to the process (default true)',
  ),
  FigOption(
    name: ['--stop-signal'],
    description: 'Signal to stop a container',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--stop-timeout'],
    description: 'Timeout (in seconds) to stop a container',
    args: [FigArg(name: 'int')],
  ),
  FigOption(
    name: ['--storage-opt'],
    description: 'Storage driver options for the container',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--sysctl'],
    description: 'Sysctl options',
    args: [FigArg(name: 'map')],
  ),
  FigOption(
    name: ['--tmpfs'],
    description: 'Mount a tmpfs directory',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['-t', '--tty'],
    description: 'Allocate a pseudo-TTY',
  ),
  FigOption(
    name: ['--ulimit'],
    description: 'Ulimit options',
    args: [FigArg(name: 'ulimit')],
  ),
  FigOption(
    name: ['-u', '--user'],
    description: 'Username or UID (format: <name|uid>[:<group|gid>])',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--userns'],
    description: 'User namespace to use',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--uts'],
    description: 'UTS namespace to use',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['-v', '--volume'],
    description: 'Bind mount a volume',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['--volume-driver'],
    description: 'Optional volume driver for the container',
    args: [FigArg(name: 'string')],
  ),
  FigOption(
    name: ['--volumes-from'],
    description: 'Mount volumes from the specified container(s)',
    args: [FigArg(name: 'list')],
  ),
  FigOption(
    name: ['-w', '--workdir'],
    description: 'Working directory inside the container',
    args: [FigArg(name: 'string')],
  ),
];
