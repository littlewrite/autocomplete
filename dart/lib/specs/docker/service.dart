import 'package:autocomplete/src/spec.dart';
import 'generators.dart';

final serviceSubcommand = FigSubcommand(
  name: 'service',
  description: 'Manage services',
  subcommands: [
    FigSubcommand(
      name: 'create',
      description: 'Create a new service',
      args: [
        imagesArg,
        FigArg(
          name: 'COMMAND',
          isOptional: true,
          isCommand: true,
        ),
      ],
      options: [
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
          name: ['--config'],
          description: 'Specify configurations to expose to the service',
          args: [FigArg(name: 'config')],
        ),
        FigOption(
          name: ['--constraint'],
          description: 'Placement constraints',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--container-label'],
          description: 'Container labels',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--credential-spec'],
          description: 'Credential spec for managed service account (Windows only)',
          args: [FigArg(name: 'credential-spec')],
        ),
        FigOption(
          name: ['-d', '--detach'],
          description: 'Exit immediately instead of waiting for the service to converge',
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
          name: ['--endpoint-mode'],
          description: 'Endpoint mode (vip or dnsrr) (default "vip")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--entrypoint'],
          description: 'Overwrite the default ENTRYPOINT of the image',
          args: [FigArg(name: 'command')],
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
          name: ['--generic-resource'],
          description: 'User defined resources',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--group'],
          description: 'Set one or more supplementary user groups for the container',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--health-cmd'],
          description: 'Command to run to check health',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--health-interval'],
          description: 'Time between running the check (ms|s|m|h)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--health-retries'],
          description: 'Consecutive failures needed to report unhealthy',
          args: [FigArg(name: 'int')],
        ),
        FigOption(
          name: ['--health-start-period'],
          description: 'Start period for the container to initialize before counting retries towards unstable (ms|s|m|h)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--health-timeout'],
          description: 'Maximum time to allow one check to run (ms|s|m|h)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--host'],
          description: 'Set one or more custom host-to-IP mappings (host:ip)',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--hostname'],
          description: 'Container hostname',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--init'],
          description: 'Use an init inside each service container to forward signals and reap processes',
        ),
        FigOption(
          name: ['--isolation'],
          description: 'Service container isolation mode',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['-l', '--label'],
          description: 'Service labels',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--limit-cpu'],
          description: 'Limit CPUs',
          args: [FigArg(name: 'decimal')],
        ),
        FigOption(
          name: ['--limit-memory'],
          description: 'Limit Memory',
          args: [FigArg(name: 'bytes')],
        ),
        FigOption(
          name: ['--limit-pids'],
          description: 'Limit maximum number of processes (default 0 = unlimited)',
          args: [FigArg(name: 'int')],
        ),
        FigOption(
          name: ['--log-driver'],
          description: 'Logging driver for service',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--log-opt'],
          description: 'Logging driver options',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--max-concurrent'],
          description: 'Number of job tasks to run concurrently (default equal to --replicas)',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['--mode'],
          description: 'Service mode (replicated, global, replicated-job, or global-job) (default "replicated")',
          args: [
            FigArg(
              name: 'string',
              suggestions: ['replicated', 'global', 'replicated-job', 'global-job'],
            ),
          ],
        ),
        FigOption(
          name: ['--mount'],
          description: 'Attach a filesystem mount to the service',
          args: [FigArg(name: 'mount')],
        ),
        FigOption(
          name: ['--name'],
          description: 'Service name',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--network'],
          description: 'Network attachments',
          args: [FigArg(name: 'network')],
        ),
        FigOption(
          name: ['--no-healthcheck'],
          description: 'Disable any container-specified HEALTHCHECK',
        ),
        FigOption(
          name: ['--no-resolve-image'],
          description: 'Do not query the registry to resolve image digest and supported platforms',
        ),
        FigOption(
          name: ['--placement-pref'],
          description: 'Add a placement preference',
          args: [FigArg(name: 'pref')],
        ),
        FigOption(
          name: ['-p', '--publish'],
          description: 'Publish a port as a node port',
          args: [FigArg(name: 'port')],
        ),
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Suppress progress output',
        ),
        FigOption(
          name: ['--read-only'],
          description: 'Mount the container\'s root filesystem as read only',
        ),
        FigOption(
          name: ['--replicas'],
          description: 'Number of tasks',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['--replicas-max-per-node'],
          description: 'Maximum number of tasks per node (default 0 = unlimited)',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['--reserve-cpu'],
          description: 'Reserve CPUs',
          args: [FigArg(name: 'decimal')],
        ),
        FigOption(
          name: ['--reserve-memory'],
          description: 'Reserve Memory',
          args: [FigArg(name: 'bytes')],
        ),
        FigOption(
          name: ['--restart-condition'],
          description: 'Restart when condition is met ("none"|"on-failure"|"any") (default "any")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--restart-delay'],
          description: 'Delay between restart attempts (ns|us|ms|s|m|h) (default 5s)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--restart-max-attempts'],
          description: 'Maximum number of restarts before giving up',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['--restart-window'],
          description: 'Window used to evaluate the restart policy (ns|us|ms|s|m|h)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--rollback-delay'],
          description: 'Delay between task rollbacks (ns|us|ms|s|m|h) (default 0s)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--rollback-failure-action'],
          description: 'Action on rollback failure ("pause"|"continue") (default "pause")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--rollback-max-failure-ratio'],
          description: 'Failure rate to tolerate during a rollback (default 0)',
          args: [FigArg(name: 'float')],
        ),
        FigOption(
          name: ['--rollback-monitor'],
          description: 'Duration after each task rollback to monitor for failure (ns|us|ms|s|m|h) (default 5s)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--rollback-order'],
          description: 'Rollback order ("start-first"|"stop-first") (default "stop-first")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--rollback-parallelism'],
          description: 'Maximum number of tasks rolled back simultaneously (0 to roll back all at once) (default 1)',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['--secret'],
          description: 'Specify secrets to expose to the service',
          args: [FigArg(name: 'secret')],
        ),
        FigOption(
          name: ['--stop-grace-period'],
          description: 'Time to wait before force killing a container (ns|us|ms|s|m|h) (default 10s)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--stop-signal'],
          description: 'Signal to stop the container',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--sysctl'],
          description: 'Sysctl options',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['-t', '--tty'],
          description: 'Allocate a pseudo-TTY',
        ),
        FigOption(
          name: ['--ulimit'],
          description: 'Ulimit options (default [])',
          args: [FigArg(name: 'ulimit')],
        ),
        FigOption(
          name: ['--update-delay'],
          description: 'Delay between updates (ns|us|ms|s|m|h) (default 0s)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--update-failure-action'],
          description: 'Action on update failure ("pause"|"continue"|"rollback") (default "pause")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--update-max-failure-ratio'],
          description: 'Failure rate to tolerate during an update (default 0)',
          args: [FigArg(name: 'float')],
        ),
        FigOption(
          name: ['--update-monitor'],
          description: 'Duration after each task update to monitor for failure (ns|us|ms|s|m|h) (default 5s)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--update-order'],
          description: 'Update order ("start-first"|"stop-first") (default "stop-first")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--update-parallelism'],
          description: 'Maximum number of tasks updated simultaneously (0 to update all at once) (default 1)',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['-u', '--user'],
          description: 'Username or UID (format: <name|uid>[:<group|gid>])',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--with-registry-auth'],
          description: 'Send registry authentication details to swarm agents',
        ),
        FigOption(
          name: ['-w', '--workdir'],
          description: 'Working directory inside the container',
          args: [FigArg(name: 'string')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'inspect',
      description: 'Display detailed information on one or more services',
      args: [
        FigArg(
          name: 'SERVICE',
          generators: [dockerGenerators['listDockerServices']!],
          isVariadic: true,
        ),
      ],
      options: [
        FigOption(
          name: ['-f', '--format'],
          description: 'Format the output using the given Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--pretty'],
          description: 'Print the information in a human friendly format',
        ),
      ],
    ),
    FigSubcommand(
      name: 'logs',
      description: 'Fetch the logs of a service or task',
      args: [
        FigArg(
          name: 'SERVICE OR TASK',
          generators: [dockerGenerators['listDockerServices']!],
        ),
      ],
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
          name: ['--no-resolve'],
          description: 'Do not map IDs to Names in output',
        ),
        FigOption(
          name: ['--no-task-ids'],
          description: 'Do not include task IDs in output',
        ),
        FigOption(
          name: ['--no-trunc'],
          description: 'Do not truncate output',
        ),
        FigOption(
          name: ['--raw'],
          description: 'Do not neatly format logs',
        ),
        FigOption(
          name: ['--since'],
          description: 'Show logs since timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['-n', '--tail'],
          description: 'Number of lines to show from the end of the logs (default "all")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['-t', '--timestamps'],
          description: 'Show timestamps',
        ),
      ],
    ),
    FigSubcommand(
      name: 'ls',
      description: 'List services',
      options: [
        FigOption(
          name: ['-f', '--filter'],
          description: 'Filter output based on conditions provided',
          args: [FigArg(name: 'filter')],
        ),
        FigOption(
          name: ['--format'],
          description: 'Pretty-print services using a Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Only display IDs',
        ),
      ],
    ),
    FigSubcommand(
      name: 'ps',
      description: 'List the tasks of one or more services',
      args: [
        FigArg(
          name: 'SERVICE',
          generators: [dockerGenerators['listDockerServices']!],
          isVariadic: true,
        ),
      ],
      options: [
        FigOption(
          name: ['-f', '--filter'],
          description: 'Filter output based on conditions provided',
          args: [FigArg(name: 'filter')],
        ),
        FigOption(
          name: ['--format'],
          description: 'Pretty-print tasks using a Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--no-resolve'],
          description: 'Do not map IDs to Names',
        ),
        FigOption(
          name: ['--no-trunc'],
          description: 'Do not truncate output',
        ),
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Only display task IDs',
        ),
      ],
    ),
    FigSubcommand(
      name: 'rm',
      description: 'Remove one or more services',
      args: [
        FigArg(
          name: 'SERVICE',
          generators: [dockerGenerators['listDockerServices']!],
          isVariadic: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'rollback',
      description: 'Revert changes to a service\'s configuration',
      args: [
        FigArg(
          name: 'SERVICE',
          generators: [dockerGenerators['listDockerServices']!],
        ),
      ],
      options: [
        FigOption(
          name: ['-d', '--detach'],
          description: 'Exit immediately instead of waiting for the service to converge',
        ),
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Suppress progress output',
        ),
      ],
    ),
    FigSubcommand(
      name: 'scale',
      description: 'Scale one or multiple replicated services',
      args: [
        FigArg(
          name: 'SERVICE=REPLICAS',
          generators: [dockerGenerators['listDockerServicesReplicas']!],
          isVariadic: true,
        ),
      ],
      options: [
        FigOption(
          name: ['-d', '--detach'],
          description: 'Exit immediately instead of waiting for the service to converge',
        ),
      ],
    ),
    FigSubcommand(
      name: 'update',
      description: 'Update a service',
      args: [
        FigArg(
          name: 'SERVICE',
          generators: [dockerGenerators['listDockerServices']!],
        ),
      ],
      options: [
        FigOption(
          name: ['--args'],
          description: 'Service command args',
          args: [FigArg(name: 'command')],
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
          name: ['--config-add'],
          description: 'Add or update a config file on a service',
          args: [FigArg(name: 'config')],
        ),
        FigOption(
          name: ['--config-rm'],
          description: 'Remove a configuration file',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--constraint-add'],
          description: 'Add or update a placement constraint',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--constraint-rm'],
          description: 'Remove a constraint',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--container-label-add'],
          description: 'Add or update a container label',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--container-label-rm'],
          description: 'Remove a container label by its key',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--credential-spec'],
          description: 'Credential spec for managed service account (Windows only)',
          args: [FigArg(name: 'credential-spec')],
        ),
        FigOption(
          name: ['-d', '--detach'],
          description: 'Exit immediately instead of waiting for the service to converge',
        ),
        FigOption(
          name: ['--dns-add'],
          description: 'Add or update a custom DNS server',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--dns-option-add'],
          description: 'Add or update a DNS option',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--dns-option-rm'],
          description: 'Remove a DNS option',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--dns-rm'],
          description: 'Remove a custom DNS server',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--dns-search-add'],
          description: 'Add or update a custom DNS search domain',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--dns-search-rm'],
          description: 'Remove a DNS search domain',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--endpoint-mode'],
          description: 'Endpoint mode (vip or dnsrr)',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--entrypoint'],
          description: 'Overwrite the default ENTRYPOINT of the image',
          args: [FigArg(name: 'command')],
        ),
        FigOption(
          name: ['--env-add'],
          description: 'Add or update an environment variable',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--env-rm'],
          description: 'Remove an environment variable',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--force'],
          description: 'Force update even if no changes require it',
        ),
        FigOption(
          name: ['--generic-resource-add'],
          description: 'Add a Generic resource',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--generic-resource-rm'],
          description: 'Remove a Generic resource',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--group-add'],
          description: 'Add an additional supplementary user group to the container',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--group-rm'],
          description: 'Remove a previously added supplementary user group from the container',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--health-cmd'],
          description: 'Command to run to check health',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--health-interval'],
          description: 'Time between running the check (ms|s|m|h)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--health-retries'],
          description: 'Consecutive failures needed to report unhealthy',
          args: [FigArg(name: 'int')],
        ),
        FigOption(
          name: ['--health-start-period'],
          description: 'Start period for the container to initialize before counting retries towards unstable (ms|s|m|h)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--health-timeout'],
          description: 'Maximum time to allow one check to run (ms|s|m|h)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--host-add'],
          description: 'Add a custom host-to-IP mapping (host:ip)',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--host-rm'],
          description: 'Remove a custom host-to-IP mapping (host:ip)',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--hostname'],
          description: 'Container hostname',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--image'],
          description: 'Service image tag',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--init'],
          description: 'Use an init inside each service container to forward signals and reap processes',
        ),
        FigOption(
          name: ['--isolation'],
          description: 'Service container isolation mode',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--label-add'],
          description: 'Add or update a service label',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--label-rm'],
          description: 'Remove a label by its key',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--limit-cpu'],
          description: 'Limit CPUs',
          args: [FigArg(name: 'decimal')],
        ),
        FigOption(
          name: ['--limit-memory'],
          description: 'Limit Memory',
          args: [FigArg(name: 'bytes')],
        ),
        FigOption(
          name: ['--limit-pids'],
          description: 'Limit maximum number of processes (default 0 = unlimited)',
          args: [FigArg(name: 'int')],
        ),
        FigOption(
          name: ['--log-driver'],
          description: 'Logging driver for service',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--log-opt'],
          description: 'Logging driver options',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--max-concurrent'],
          description: 'Number of job tasks to run concurrently (default equal to --replicas)',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['--mount-add'],
          description: 'Add or update a mount on a service',
          args: [FigArg(name: 'mount')],
        ),
        FigOption(
          name: ['--mount-rm'],
          description: 'Remove a mount by its target path',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--network-add'],
          description: 'Add a network',
          args: [FigArg(name: 'network')],
        ),
        FigOption(
          name: ['--network-rm'],
          description: 'Remove a network',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--no-healthcheck'],
          description: 'Disable any container-specified HEALTHCHECK',
        ),
        FigOption(
          name: ['--no-resolve-image'],
          description: 'Do not query the registry to resolve image digest and supported platforms',
        ),
        FigOption(
          name: ['--placement-pref-add'],
          description: 'Add a placement preference',
          args: [FigArg(name: 'pref')],
        ),
        FigOption(
          name: ['--placement-pref-rm'],
          description: 'Remove a placement preference',
          args: [FigArg(name: 'pref')],
        ),
        FigOption(
          name: ['--publish-add'],
          description: 'Add or update a published port',
          args: [FigArg(name: 'port')],
        ),
        FigOption(
          name: ['--publish-rm'],
          description: 'Remove a published port by its target port',
          args: [FigArg(name: 'port')],
        ),
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Suppress progress output',
        ),
        FigOption(
          name: ['--read-only'],
          description: 'Mount the container\'s root filesystem as read only',
        ),
        FigOption(
          name: ['--replicas'],
          description: 'Number of tasks',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['--replicas-max-per-node'],
          description: 'Maximum number of tasks per node (default 0 = unlimited)',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['--reserve-cpu'],
          description: 'Reserve CPUs',
          args: [FigArg(name: 'decimal')],
        ),
        FigOption(
          name: ['--reserve-memory'],
          description: 'Reserve Memory',
          args: [FigArg(name: 'bytes')],
        ),
        FigOption(
          name: ['--restart-condition'],
          description: 'Restart when condition is met ("none"|"on-failure"|"any")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--restart-delay'],
          description: 'Delay between restart attempts (ns|us|ms|s|m|h)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--restart-max-attempts'],
          description: 'Maximum number of restarts before giving up',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['--restart-window'],
          description: 'Window used to evaluate the restart policy (ns|us|ms|s|m|h)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--rollback'],
          description: 'Rollback to previous specification',
        ),
        FigOption(
          name: ['--rollback-delay'],
          description: 'Delay between task rollbacks (ns|us|ms|s|m|h)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--rollback-failure-action'],
          description: 'Action on rollback failure ("pause"|"continue")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--rollback-max-failure-ratio'],
          description: 'Failure rate to tolerate during a rollback',
          args: [FigArg(name: 'float')],
        ),
        FigOption(
          name: ['--rollback-monitor'],
          description: 'Duration after each task rollback to monitor for failure (ns|us|ms|s|m|h)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--rollback-order'],
          description: 'Rollback order ("start-first"|"stop-first")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--rollback-parallelism'],
          description: 'Maximum number of tasks rolled back simultaneously (0 to roll back all at once)',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['--secret-add'],
          description: 'Add or update a secret on a service',
          args: [FigArg(name: 'secret')],
        ),
        FigOption(
          name: ['--secret-rm'],
          description: 'Remove a secret',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--stop-grace-period'],
          description: 'Time to wait before force killing a container (ns|us|ms|s|m|h)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--stop-signal'],
          description: 'Signal to stop the container',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--sysctl-add'],
          description: 'Add or update a Sysctl option',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--sysctl-rm'],
          description: 'Remove a Sysctl option',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['-t', '--tty'],
          description: 'Allocate a pseudo-TTY',
        ),
        FigOption(
          name: ['--ulimit-add'],
          description: 'Add or update a ulimit option (default [])',
          args: [FigArg(name: 'ulimit')],
        ),
        FigOption(
          name: ['--ulimit-rm'],
          description: 'Remove a ulimit option',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--update-delay'],
          description: 'Delay between updates (ns|us|ms|s|m|h)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--update-failure-action'],
          description: 'Action on update failure ("pause"|"continue"|"rollback")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--update-max-failure-ratio'],
          description: 'Failure rate to tolerate during an update',
          args: [FigArg(name: 'float')],
        ),
        FigOption(
          name: ['--update-monitor'],
          description: 'Duration after each task update to monitor for failure (ns|us|ms|s|m|h)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--update-order'],
          description: 'Update order ("start-first"|"stop-first")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--update-parallelism'],
          description: 'Maximum number of tasks updated simultaneously (0 to update all at once)',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['-u', '--user'],
          description: 'Username or UID (format: <name|uid>[:<group|gid>])',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--with-registry-auth'],
          description: 'Send registry authentication details to swarm agents',
        ),
        FigOption(
          name: ['-w', '--workdir'],
          description: 'Working directory inside the container',
          args: [FigArg(name: 'string')],
        ),
      ],
    ),
  ],
);
