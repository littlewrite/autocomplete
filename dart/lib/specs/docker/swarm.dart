import 'package:autocomplete/src/spec.dart';

final swarmSubcommand = FigSubcommand(
  name: 'swarm',
  description: 'Manage Swarm',
  subcommands: [
    FigSubcommand(
      name: 'ca',
      description: 'Display and rotate the root CA',
      options: [
        FigOption(
          name: ['--ca-cert'],
          description: 'Path to the PEM-formatted root CA certificate to use for the new cluster',
          args: [
            FigArg(
              name: 'pem-file',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--ca-key'],
          description: 'Path to the PEM-formatted root CA key to use for the new cluster',
          args: [
            FigArg(
              name: 'pem-file',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--cert-expiry'],
          description: 'Validity period for node certificates (ns|us|ms|s|m|h) (default 2160h0m0s)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['-d', '--detach'],
          description: 'Exit immediately instead of waiting for the root rotation to converge',
        ),
        FigOption(
          name: ['--external-ca'],
          description: 'Specifications of one or more certificate signing endpoints',
          args: [FigArg(name: 'external-ca')],
        ),
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Suppress progress output',
        ),
        FigOption(
          name: ['--rotate'],
          description: 'Rotate the swarm CA - if no certificate or key are provided, new ones will be generated',
        ),
      ],
    ),
    FigSubcommand(
      name: 'init',
      description: 'Initialize a swarm',
      options: [
        FigOption(
          name: ['--advertise-addr'],
          description: 'Advertised address (format: <ip|interface>[:port])',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--autolock'],
          description: 'Enable manager autolocking (requiring an unlock key to start a stopped manager)',
        ),
        FigOption(
          name: ['--availability'],
          description: 'Availability of the node ("active"|"pause"|"drain") (default "active")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--cert-expiry'],
          description: 'Validity period for node certificates (ns|us|ms|s|m|h) (default 2160h0m0s)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--data-path-addr'],
          description: 'Address or interface to use for data path traffic (format: <ip|interface>)',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--data-path-port'],
          description: 'Port number to use for data path traffic (1024 - 49151). If no value is set or is set to 0, the default port (4789) is used',
          args: [FigArg(name: 'uint32')],
        ),
        FigOption(
          name: ['--default-addr-pool'],
          description: 'Default address pool in CIDR format (default [])',
          args: [FigArg(name: 'ipNetSlice')],
        ),
        FigOption(
          name: ['--default-addr-pool-mask-length'],
          description: 'Default address pool subnet mask length (default 24)',
          args: [FigArg(name: 'uint32')],
        ),
        FigOption(
          name: ['--dispatcher-heartbeat'],
          description: 'Dispatcher heartbeat period (ns|us|ms|s|m|h) (default 5s)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--external-ca'],
          description: 'Specifications of one or more certificate signing endpoints',
          args: [FigArg(name: 'external-ca')],
        ),
        FigOption(
          name: ['--force-new-cluster'],
          description: 'Force create a new cluster from current state',
        ),
        FigOption(
          name: ['--listen-addr'],
          description: 'Listen address (format: <ip|interface>[:port]) (default 0.0.0.0:2377)',
          args: [FigArg(name: 'node-addr')],
        ),
        FigOption(
          name: ['--max-snapshots'],
          description: 'Number of additional Raft snapshots to retain',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['--snapshot-interval'],
          description: 'Number of log entries between Raft snapshots (default 10000)',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['--task-history-limit'],
          description: 'Task history retention limit (default 5)',
          args: [FigArg(name: 'int')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'join',
      description: 'Join a swarm as a node and/or manager',
      args: [FigArg(name: 'HOST:PORT')],
      options: [
        FigOption(
          name: ['--advertise-addr'],
          description: 'Advertised address (format: <ip|interface>[:port])',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--availability'],
          description: 'Availability of the node ("active"|"pause"|"drain") (default "active")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--data-path-addr'],
          description: 'Address or interface to use for data path traffic (format: <ip|interface>)',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--listen-addr'],
          description: 'Listen address (format: <ip|interface>[:port]) (default 0.0.0.0:2377)',
          args: [FigArg(name: 'node-addr')],
        ),
        FigOption(
          name: ['--token'],
          description: 'Token for entry into the swarm',
          args: [FigArg(name: 'string')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'join-token',
      description: 'Manage join tokens',
      args: [
        FigArg(
          name: 'worker or manager',
          suggestions: ['worker', 'manager'],
        ),
      ],
      options: [
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Only display token',
        ),
        FigOption(
          name: ['--rotate'],
          description: 'Rotate join token',
        ),
      ],
    ),
    FigSubcommand(
      name: 'leave',
      description: 'Leave the swarm',
      options: [
        FigOption(
          name: ['-f', '--force'],
          description: 'Force this node to leave the swarm, ignoring warnings',
        ),
      ],
    ),
    FigSubcommand(
      name: 'unlock',
      description: 'Unlock swarm',
    ),
    FigSubcommand(
      name: 'unlock-key',
      description: 'Manage the unlock key',
      options: [
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Only display token',
        ),
        FigOption(
          name: ['--rotate'],
          description: 'Rotate unlock key',
        ),
      ],
    ),
    FigSubcommand(
      name: 'update',
      description: 'Update the swarm',
      options: [
        FigOption(
          name: ['--autolock'],
          description: 'Change manager autolocking setting (true|false)',
          args: [
            FigArg(
              suggestions: ['true', 'false'],
            ),
          ],
        ),
        FigOption(
          name: ['--cert-expiry'],
          description: 'Validity period for node certificates (ns|us|ms|s|m|h) (default 2160h0m0s)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--dispatcher-heartbeat'],
          description: 'Dispatcher heartbeat period (ns|us|ms|s|m|h) (default 5s)',
          args: [FigArg(name: 'duration')],
        ),
        FigOption(
          name: ['--external-ca'],
          description: 'Specifications of one or more certificate signing endpoints',
          args: [FigArg(name: 'external-ca')],
        ),
        FigOption(
          name: ['--max-snapshots'],
          description: 'Number of additional Raft snapshots to retain',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['--snapshot-interval'],
          description: 'Number of log entries between Raft snapshots (default 10000)',
          args: [FigArg(name: 'uint')],
        ),
        FigOption(
          name: ['--task-history-limit'],
          description: 'Task history retention limit (default 5)',
          args: [FigArg(name: 'int')],
        ),
      ],
    ),
  ],
);
