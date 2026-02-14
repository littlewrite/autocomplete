// AI-generated from TypeScript source: multipass.ts
import 'package:autocomplete/src/spec.dart';
import 'dart:convert';

final Map<String, FigOption> sharedOpts = {
  'help': FigOption(
    name: ['-h', '--help'],
    description: 'Displays help on commandline options',
    isPersistent: true,
  ),
  'helpAll': FigOption(
    name: '--help-all',
    description: 'Displays help including Qt specific options',
    isPersistent: true,
  ),
  'verbose': FigOption(
    name: ['-v', '--verbose'],
    description:
        "Increase logging verbosity. Repeat the 'v' in the short option for more detail. Maximum verbosity is obtained with 4 (or more) v's, i.e. -vvvv",
    isPersistent: true,
  ),
  'format': FigOption(
    name: '--format',
    description:
        'Output list in the requested format. Valid formats are: table (default), json, csv and yaml',
    args: FigArg(
      name: 'format',
      suggestions: [
        FigSuggestion(name: 'table'),
        FigSuggestion(name: 'json'),
        FigSuggestion(name: 'csv'),
        FigSuggestion(name: 'yaml'),
      ],
      defaultValue: 'table',
    ),
  ),
  'timeout': FigOption(
    name: '--timeout',
    description:
        'Maximum time, in seconds, to wait for the command to complete. Note that some background operations may continue beyond that. By default, instance startup and initialization is limited to 5 minutes each',
    args: FigArg(
      name: 'timeout',
      defaultValue: '300',
    ),
  ),
};

List<FigSuggestion> _processInstanceList(String out,
    {String? requiredState, bool excludeDeleted = false}) {
  try {
    final Map<String, dynamic> json = jsonDecode(out);
    final List list = json['list'];
    return list
        .where((item) {
          final state = item['state'];
          if (requiredState != null) return state == requiredState;
          if (excludeDeleted && state == 'Deleted') return false;
          return true;
        })
        .map((item) => FigSuggestion(
              name: item['name'],
              description: item['release'],
            ))
        .toList();
  } catch (e) {
    return [];
  }
}

final Map<String, FigGenerator> multipassGenerators = {
  'allAvailableImages': FigGenerator(
    script: ['multipass', 'find', '--format=json'],
    postProcess: (String out, [List<String>? tokens]) {
      try {
        final Map<String, dynamic> json = jsonDecode(out);
        final Map<String, dynamic> images = json['images'];
        return images.keys.map((key) {
          final img = images[key];
          return FigSuggestion(
            name: key,
            description: '${img['os']} ${img['release']}',
          );
        }).toList();
      } catch (e) {
        return [];
      }
    },
  ),
  'allAvailableInstances': FigGenerator(
    script: ['multipass', 'list', '--format=json'],
    postProcess: (String out, [List<String>? tokens]) =>
        _processInstanceList(out, excludeDeleted: true),
  ),
  'allRunningInstances': FigGenerator(
    script: ['multipass', 'list', '--format=json'],
    postProcess: (String out, [List<String>? tokens]) =>
        _processInstanceList(out, requiredState: 'Running'),
  ),
  'allStoppedInstances': FigGenerator(
    script: ['multipass', 'list', '--format=json'],
    postProcess: (String out, [List<String>? tokens]) =>
        _processInstanceList(out, requiredState: 'Stopped'),
  ),
  'allDeletedInstances': FigGenerator(
    script: ['multipass', 'list', '--format=json'],
    postProcess: (String out, [List<String>? tokens]) =>
        _processInstanceList(out, requiredState: 'Deleted'),
  ),
};

final FigSpec multipassSpec = FigSpec(
  name: 'multipass',
  description: 'Create, control and connect to Ubuntu instances',
  subcommands: [
    FigSubcommand(
      name: 'alias',
      description: 'Create an alias',
      args: [
        FigArg(
          name: 'options',
          isOptional: true,
        ),
        FigArg(
          name: 'definition',
          description: 'Alias definition in the form <instance>:<command>',
        ),
        FigArg(
          name: 'name',
          description:
              'Name given to the alias being defined, defaults to <command>',
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'aliases',
      description: 'List available aliases',
      options: [sharedOpts['format']!],
    ),
    FigSubcommand(
      name: 'delete',
      description: 'Delete instances',
      options: [
        FigOption(
          name: '--all',
          description: 'Delete all instances',
        ),
        FigOption(
          name: ['-p', '--purge'],
          description: 'Purge instances immediately',
        ),
      ],
      args: FigArg(
        name: 'name',
        description: 'Name of instances to delete',
        isVariadic: true,
        generators: [multipassGenerators['allAvailableInstances']!],
      ),
    ),
    FigSubcommand(
      name: 'exec',
      description: 'Run a command on an instance',
      args: [
        FigArg(
          name: 'name',
          description: 'Name of the instance to run the command on',
          generators: [multipassGenerators['allAvailableInstances']!],
        ),
        FigArg(
          name: 'command',
          description: 'Command to execute on the instance',
        ),
      ],
    ),
    FigSubcommand(
      name: 'find',
      description: 'Display available images to create instances from',
      options: [
        sharedOpts['format']!,
        FigOption(
          name: '--show-unsupported',
          description: 'Show unsupported cloud images as well',
        ),
      ],
      args: FigArg(
        name: 'string',
        description:
            "An optional value to search for in [<remote:>]<string> format, where <remote> can be either 'release' or 'daily'. If <remote> is omitted, it will search 'release' first, and if no matches are found, it will then search 'daily'. <string> can be a partial image hash or an Ubuntu release version, codename or alias.",
        isOptional: true,
      ),
    ),
    FigSubcommand(
      name: 'get',
      description: 'Get a configuration setting',
      options: [
        FigOption(
          name: '--raw',
          description:
              'Output in raw format. For now, this affects only the representation of empty values (i.e. "" instead of "<empty>")',
        ),
      ],
      args: FigArg(
        name: 'key',
        description:
            'Path to the setting whose configured value should be obtained',
        suggestions: [
          FigSuggestion(name: 'client.gui.autostart'),
          FigSuggestion(name: 'client.gui.hotkey'),
          FigSuggestion(name: 'client.primary-name'),
          FigSuggestion(name: 'local.bridged-network'),
          FigSuggestion(name: 'local.driver'),
          FigSuggestion(name: 'local.privileged-mounts'),
        ],
      ),
    ),
    FigSubcommand(
      name: 'help',
      description: 'Display help about a command',
      args: FigArg(
        name: 'command',
        description: 'Name of command to display help for',
        isOptional: true,
      ),
    ),
    FigSubcommand(
      name: 'info',
      description: 'Display information about instances',
      options: [
        sharedOpts['format']!,
        FigOption(
          name: '--all',
          description: 'Display info for all instances',
        ),
      ],
      args: FigArg(
        name: 'name',
        description: 'Names of instances to display information about',
        isVariadic: true,
        generators: [multipassGenerators['allAvailableInstances']!],
      ),
    ),
    FigSubcommand(
      name: 'launch',
      description: 'Create and start an Ubuntu instance',
      options: [
        sharedOpts['timeout']!,
        FigOption(
          name: ['-c', '--cpus'],
          description: 'Number of CPUs to allocate. Minimum: 1, default: 1',
          args: FigArg(
            name: 'cpus',
            defaultValue: '1',
          ),
        ),
        FigOption(
          name: ['-d', '--disk'],
          description:
              'Disk space to allocate. Positive integers, in bytes, or with K, M, G suffix Minimum: 512M, default: 5G.',
          args: FigArg(
            name: 'disk',
            defaultValue: '5G',
          ),
        ),
        FigOption(
          name: ['-m', '--mem'],
          description:
              'Amount of memory to allocate. Positive integers, in bytes, or with K, M, G suffix Minimum: 128M, default: 1G.',
          args: FigArg(
            name: 'mem',
            defaultValue: '1G',
          ),
        ),
        FigOption(
          name: ['-n', '--name'],
          description:
              "Name for the instance. If it is 'primary' (the configured primary instance name), the user's home directory is mounted inside the newly launched instance, in 'Home'",
          args: FigArg(
            name: 'name',
            defaultValue: 'primary',
          ),
        ),
        FigOption(
          name: '--cloud-init',
          description:
              "Path to a user-data cloud-init configuration, or '-' for stdin",
          args: FigArg(
            name: 'file',
          ),
        ),
        FigOption(
          name: '--network',
          description:
              'Add a network interface to the instance, where <spec> is in the "key=value,key=value" format',
          args: FigArg(
            name: 'spec',
          ),
        ),
        FigOption(
          name: '--bridged',
          description: 'Adds one `--network bridged` network',
        ),
      ],
      args: FigArg(
        name: 'image',
        description:
            'Optional image to launch. If omitted, then the default Ubuntu LTS will be used',
        isOptional: true,
        generators: [multipassGenerators['allAvailableImages']!],
      ),
    ),
    FigSubcommand(
      name: 'list',
      description: 'List all available instances',
      options: [sharedOpts['format']!],
    ),
    FigSubcommand(
      name: 'mount',
      description: 'Mount a local directory in the instance',
      options: [
        FigOption(
          name: ['-g', '--gid-map'],
          description:
              'A mapping of group IDs for use in the mount. File and folder ownership will be mapped from <host> to <instance> inside the instance. Can be used multiple times',
          args: FigArg(
            name: 'host:instance',
          ),
        ),
        FigOption(
          name: ['-u', '--uid-map'],
          description:
              'A mapping of user IDs for use in the mount. File and folder ownership will be mapped from <host> to <instance> inside the instance. Can be used multiple times',
          args: FigArg(
            name: 'host:instance',
          ),
        ),
      ],
      args: [
        FigArg(
          name: 'source',
          description: 'Path to the local directory to mount',
          template: 'folders',
        ),
        FigArg(
          name: 'target',
          description:
              "Target mount points, in <name>[:<path>] format, where <name> is an instance name, and optional <path> is the mount point. If omitted, the mount point will be the same as the source's absolute path",
          isVariadic: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'networks',
      description: 'List all available networks interfaces',
      options: [sharedOpts['format']!],
    ),
    FigSubcommand(
      name: 'purge',
      description: 'Purge all deleted instances permanently',
    ),
    FigSubcommand(
      name: 'recover',
      description: 'Recover deleted instances',
      options: [
        FigOption(
          name: '--all',
          description: 'Recover all deleted instances',
        ),
      ],
      args: FigArg(
        name: 'name',
        description: 'Names of instances to recover',
        isVariadic: true,
        generators: [multipassGenerators['allDeletedInstances']!],
      ),
    ),
    FigSubcommand(
      name: 'restart',
      description: 'Restart instances',
      options: [
        sharedOpts['timeout']!,
        FigOption(
          name: '--all',
          description: 'Restart all instances',
        ),
      ],
      args: FigArg(
        name: 'name',
        description:
            "Names of instances to restart. If omitted, and without the --all option, 'primary' will be assumed",
        isOptional: true,
        isVariadic: true,
        generators: [multipassGenerators['allAvailableInstances']!],
      ),
    ),
    FigSubcommand(
      name: 'set',
      description: 'Set a configuration setting',
      args: FigArg(
        name: 'key=value',
        description:
            'A key-value pair. The key specifies a path to the setting to configure. The value is its intended value',
        suggestions: [
          FigSuggestion(name: 'client.gui.autostart='),
          FigSuggestion(name: 'client.gui.hotkey='),
          FigSuggestion(name: 'client.primary-name='),
          FigSuggestion(name: 'local.bridged-network='),
          FigSuggestion(name: 'local.driver='),
          FigSuggestion(name: 'local.privileged-mounts='),
        ],
      ),
    ),
    FigSubcommand(
      name: 'shell',
      description: 'Open a shell on a running instance',
      options: [sharedOpts['timeout']!],
      args: FigArg(
        name: 'name',
        description:
            "Name of the instance to open a shell on. If omitted, 'primary' (the configured primary instance name) will be assumed. If the instance is not running, an attempt is made to start it (see `start` for more info)",
        isOptional: true,
        isVariadic: true,
        generators: [multipassGenerators['allAvailableInstances']!],
      ),
    ),
    FigSubcommand(
      name: 'start',
      description: 'Start instances',
      options: [
        sharedOpts['timeout']!,
        FigOption(
          name: '--all',
          description: 'Start all instances',
        ),
      ],
      args: FigArg(
        name: 'name',
        description:
            "Names of instances to start. If omitted, and without the --all option, 'primary' (the configured primary instance name) will be assumed. If 'primary' does not exist but is included in a successful start command either implicitly or explicitly), it is launched automatically (see`launch` for more info).",
        isOptional: true,
        isVariadic: true,
        generators: [multipassGenerators['allStoppedInstances']!],
      ),
    ),
    FigSubcommand(
      name: 'stop',
      description: 'Stop running instances',
      options: [
        FigOption(
          name: '--all',
          description: 'Stop all instances',
        ),
        FigOption(
          name: ['-t', '--time'],
          description:
              'Time from now, in minutes, to delay shutdown of the instance',
          args: FigArg(
            name: 'time',
          ),
        ),
        FigOption(
          name: ['-c', '--cancel'],
          description: 'Cancel a pending delayed shutdown',
        ),
      ],
      args: FigArg(
        name: 'name',
        description:
            "Names of instances to stop. If omitted, and without the --all option, 'primary' will be assumed.",
        isOptional: true,
        isVariadic: true,
        generators: [multipassGenerators['allRunningInstances']!],
      ),
    ),
    FigSubcommand(
      name: 'suspend',
      description: 'Suspend running instances',
      options: [
        FigOption(
          name: '--all',
          description: 'Suspend all instances',
        ),
      ],
      args: FigArg(
        name: 'name',
        description:
            "Names of instances to suspend. If omitted, and without the --all option, 'primary' will be assumed.",
        isOptional: true,
        isVariadic: true,
        generators: [multipassGenerators['allRunningInstances']!],
      ),
    ),
    FigSubcommand(
      name: 'transfer',
      description: 'Transfer files between the host and instances',
      args: [
        FigArg(
          name: 'source',
          description:
              "One or more paths to transfer, prefixed with <name:> for paths inside the instance, or '-' for stdin",
          template: 'filepaths',
          isVariadic: true,
        ),
        FigArg(
          name: 'destination',
          description:
              "The destination path, prefixed with <name:> for paths inside the instance, or '-' for stdout",
          template: 'filepaths',
        ),
      ],
    ),
    FigSubcommand(
      name: 'umount',
      description: 'Unmount a directory from an instance',
      args: FigArg(
        name: 'mount',
        description:
            "Mount points, in <name>[:<path>] format, where <name> are instance names, and optional <path> are mount points. If omitted, all mounts will be removed from the named instances.",
        isVariadic: true,
      ),
    ),
    FigSubcommand(
      name: 'unalias',
      description: 'Remove an alias',
      args: FigArg(
        name: 'name',
        description: 'The name of the alias to remove',
      ),
    ),
    FigSubcommand(
      name: 'version',
      description: 'Show version details',
      options: [sharedOpts['format']!],
    ),
  ],
  options: [
    sharedOpts['help']!,
    sharedOpts['helpAll']!,
    sharedOpts['verbose']!,
  ],
);
