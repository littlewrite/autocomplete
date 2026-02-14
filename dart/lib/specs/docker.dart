import 'package:autocomplete/src/spec.dart';
import 'docker/config.dart';
import 'docker/container.dart';
import 'docker/context.dart';
import 'docker/generators.dart';
import 'docker/image.dart';
import 'docker/network.dart';
import 'docker/node.dart';
import 'docker/service.dart';
import 'docker/shared_commands.dart';
import 'docker/stack.dart';
import 'docker/swarm.dart';
import 'docker/system.dart';
import 'docker/trust.dart';
import 'docker/volume.dart';

final completionSpec = FigSpec(
  name: 'docker',
  description: 'A self-sufficient runtime for containers',
  subcommands: [
    sharedCommands['attach']!,
    sharedCommands['build']!,
    FigSubcommand(
      name: 'builder',
      description: 'Manage builds',
      subcommands: [
        sharedCommands['build']!,
        FigSubcommand(
          name: 'prune',
          description: 'Remove build cache',
          options: [
            FigOption(
              name: ['-a', '--all'],
              description:
                  'Remove all unused build cache, not just dangling ones',
            ),
            FigOption(
              name: ['--filter'],
              description: 'Provide filter values (e.g. "until=24h")',
              args: [FigArg(name: 'filter')],
            ),
            FigOption(
              name: ['-f', '--force'],
              description: 'Do not prompt for confirmation',
            ),
            FigOption(
              name: ['--keep-storage'],
              description: 'Amount of disk space to keep for cache',
              args: [FigArg(name: 'bytes')],
            ),
          ],
        ),
      ],
    ),
    sharedCommands['commit']!,
    FigSubcommand(
      name: 'compose',
      description: 'Define and run multi-container applications with Docker',
      loadSpec: 'docker-compose',
    ),
    configSubcommand,
    containerSubcommand,
    contextSubcommand,
    sharedCommands['cp']!,
    sharedCommands['create']!,
    sharedCommands['diff']!,
    sharedCommands['events']!,
    sharedCommands['exec']!,
    sharedCommands['export']!,
    sharedCommands['history']!,
    imageSubcommand,
    sharedCommands['images']!,
    sharedCommands['import']!,
    sharedCommands['info']!,
    FigSubcommand(
      name: 'inspect',
      description: 'Return low-level information on Docker objects',
      args: [
        FigArg(
          name: 'Name or ID',
          generators: [
            dockerGenerators['inspectContainers']!,
            dockerGenerators['inspectImages']!,
            dockerGenerators['inspectVolumes']!,
          ],
        ),
      ],
      options: [
        FigOption(
          name: ['-f', '--format'],
          description: 'Format the output using the given Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['-s', '--size'],
          description: 'Display total file sizes if the type is container',
        ),
        FigOption(
          name: ['--type'],
          description: 'Return JSON for specified type',
          args: [FigArg(name: 'string')],
        ),
      ],
    ),
    sharedCommands['kill']!,
    sharedCommands['load']!,
    FigSubcommand(
      name: 'login',
      description: 'Log in to a Docker registry',
      args: [FigArg(name: 'server')],
      options: [
        FigOption(
          name: ['-p', '--password'],
          description: 'Password',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--password-stdin'],
          description: 'Take the password from stdin',
        ),
        FigOption(
          name: ['-u', '--username'],
          description: 'Username',
          args: [FigArg(name: 'string')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'logout',
      description: 'Log out from a Docker registry',
      args: [FigArg(name: 'server')],
    ),
    sharedCommands['logs']!,
    networkSubcommand,
    nodeSubcommand,
    sharedCommands['pause']!,
    sharedCommands['port']!,
    sharedCommands['ps']!,
    sharedCommands['pull']!,
    sharedCommands['push']!,
    sharedCommands['rename']!,
    sharedCommands['restart']!,
    sharedCommands['rm']!,
    sharedCommands['rmi']!,
    sharedCommands['run']!,
    sharedCommands['save']!,
    FigSubcommand(
      name: 'search',
      description: 'Search the Docker Hub for images',
      args: [
        FigArg(
          name: 'TERM',
          description: 'Search term',
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
          description: 'Pretty-print search using a Go template',
          args: [FigArg(name: 'string')],
        ),
        FigOption(
          name: ['--limit'],
          description: 'Max number of search results (default 25)',
          args: [FigArg(name: 'int')],
        ),
        FigOption(
          name: ['--no-trunc'],
          description: "Don't truncate output",
        ),
      ],
    ),
    serviceSubcommand,
    sharedCommands['sbom']!,
    stackSubcommand,
    sharedCommands['start']!,
    sharedCommands['stats']!,
    sharedCommands['stop']!,
    swarmSubcommand,
    systemSubcommand,
    sharedCommands['tag']!,
    sharedCommands['top']!,
    trustSubcommand,
    sharedCommands['unpause']!,
    sharedCommands['update']!,
    FigSubcommand(
      name: 'version',
      description: 'Show the Docker version information',
      options: [
        FigOption(
          name: ['-f', '--format'],
          description:
              'Format the output. Values: [pretty | json]. (Default: pretty)',
          args: [
            FigArg(
              name: 'string',
              suggestions: [
                FigSuggestion(name: 'pretty'),
                FigSuggestion(name: 'json'),
              ],
            ),
          ],
        ),
        FigOption(
          name: ['--kubeconfig'],
          description: 'Kubernetes config file',
          args: [FigArg(name: 'string')],
        ),
      ],
    ),
    volumeSubcommand,
    sharedCommands['wait']!,
  ],
);
