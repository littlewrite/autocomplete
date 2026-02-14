import 'package:autocomplete/src/spec.dart';
import 'generators.dart';

final networkSubcommand = FigSubcommand(
  name: 'network',
  description: 'Manage networks',
  subcommands: [
    FigSubcommand(
      name: 'connect',
      description: 'Connect a container to a network',
      args: [
        FigArg(
          name: 'NETWORK',
          generators: [dockerGenerators['listDockerNetworks']!],
        ),
        containersArg,
      ],
      options: [
        FigOption(
          name: ['--alias'],
          description: 'Add network-scoped alias for the container',
          args: [FigArg(name: 'strings')],
        ),
        FigOption(
          name: ['--driver-opt'],
          description: 'Driver options for the network',
          args: [FigArg(name: 'strings')],
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
          name: ['--link'],
          description: 'Add link to another container',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['--link-local-ip'],
          description: 'Add a link-local address for the container',
          args: [FigArg(name: 'strings')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'create',
      description: 'Create a network',
      args: [FigArg(name: 'NETWORK')],
      options: [
        FigOption(
          name: ['--attachable'],
          description: 'Enable manual container attachment',
        ),
        FigOption(
          name: ['--aux-address'],
          description:
              'Auxiliary IPv4 or IPv6 addresses used by Network driver (default map[])',
          args: [FigArg(name: 'map')],
        ),
        FigOption(
          name: ['--config-from'],
          description: 'The network from which to copy the configuration',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--config-only'],
          description: 'Create a configuration only network',
        ),
        FigOption(
          name: ['-d', '--driver'],
          description: 'Driver to manage the Network (default "bridge")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--gateway'],
          description: 'IPv4 or IPv6 Gateway for the master subnet',
          args: [FigArg(name: 'strings')],
        ),
        FigOption(
          name: ['--ingress'],
          description: 'Create swarm routing-mesh network',
        ),
        FigOption(
          name: ['--internal'],
          description: 'Restrict external access to the network',
        ),
        FigOption(
          name: ['--ip-range'],
          description: 'Allocate container ip from a sub-range',
          args: [FigArg(name: 'strings')],
        ),
        FigOption(
          name: ['--ipam-driver'],
          description: 'IP Address Management Driver (default "default")',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--ipam-opt'],
          description: 'Set IPAM driver specific options (default map[])',
          args: [FigArg(name: 'map')],
        ),
        FigOption(
          name: ['--ipv6'],
          description: 'Enable IPv6 networking',
        ),
        FigOption(
          name: ['--label'],
          description: 'Set metadata on a network',
          args: [FigArg(name: 'list')],
        ),
        FigOption(
          name: ['-o', '--opt'],
          description: 'Set driver specific options (default map[])',
          args: [FigArg(name: 'map')],
        ),
        FigOption(
          name: ['--scope'],
          description: 'Control the network\'s scope',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--subnet'],
          description:
              'Subnet in CIDR format that represents a network segment',
          args: [FigArg(name: 'strings')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'disconnect',
      description: 'Disconnect a container from a network',
      args: [
        FigArg(
          name: 'NETWORK',
          generators: [dockerGenerators['listDockerNetworks']!],
        ),
        containersArg,
      ],
      options: [
        FigOption(
          name: ['-f', '--force'],
          description: 'Force the container to disconnect from a network',
        ),
      ],
    ),
    FigSubcommand(
      name: 'inspect',
      description: 'Display detailed information on one or more networks',
      args: [
        FigArg(
          name: 'NETWORK',
          generators: [dockerGenerators['listDockerNetworks']!],
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
          name: ['-v', '--verbose'],
          description: 'Verbose output for diagnostics',
        ),
      ],
    ),
    FigSubcommand(
      name: 'ls',
      description: 'List networks',
      options: [
        FigOption(
          name: ['-f', '--filter'],
          description: 'Provide filter values (e.g. \'driver=bridge\')',
          args: [FigArg(name: 'filter')],
        ),
        FigOption(
          name: ['--format'],
          description: 'Pretty-print networks using a Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--no-trunc'],
          description: 'Do not truncate the output',
        ),
        FigOption(
          name: ['-q', '--quiet'],
          description: 'Only display network IDs',
        ),
      ],
    ),
    FigSubcommand(
      name: 'prune',
      description: 'Remove all unused networks',
      options: [
        FigOption(
          name: ['--filter'],
          description: 'Provide filter values (e.g. \'until=<timestamp>\')',
          args: [FigArg(name: 'filter')],
        ),
        FigOption(
          name: ['-f', '--force'],
          description: 'Do not prompt for confirmation',
        ),
      ],
    ),
    FigSubcommand(
      name: 'rm',
      description: 'Remove one or more networks',
      args: [
        FigArg(
          name: 'NETWORK',
          generators: [dockerGenerators['listDockerNetworks']!],
          isVariadic: true,
        ),
      ],
    ),
  ],
);
