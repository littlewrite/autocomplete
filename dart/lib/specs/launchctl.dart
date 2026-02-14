// AI-generated from TypeScript source: src/launchctl.ts
import 'package:autocomplete/src/spec.dart';

final FigArg serviceOrDomain = FigArg(
  name: 'service',
  description: 'Service or domain target',
  template: 'filepaths',
);

final FigArg servicePath = FigArg(
  name: 'service-path',
  isVariadic: true,
  description: 'Service path(s)',
  template: 'filepaths',
);

final FigArg serviceTarget = FigArg(
  name: 'service',
  description: 'Service or domain target',
);

final List<FigOption> loadUnloadOptions = [
  FigOption(
    name: ['-w'],
    description: 'Enable if disabled',
  ),
  FigOption(
    name: ['-F'],
    description: 'Force load',
  ),
  FigOption(
    name: ['-S'],
    description: 'Session',
    args: [FigArg(name: 'session')],
  ),
  FigOption(
    name: ['-D'],
    description: 'Load files from specified domain',
    args: [FigArg(name: 'domain')],
  ),
];

final List<FigArg> limitArgs = [
  FigArg(
    name: '[both]',
    description: 'Specify a limit for both soft and hard',
  ),
  FigArg(
    isOptional: true,
    name: '[soft | hard]',
    description: 'Specify a soft/hard limit pair',
  ),
];

final FigGenerator listGenerator = FigGenerator(
  script: ['launchctl', 'list'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .skip(1)
        .map((line) {
          final parts = line.split(RegExp(r'\s+'));
          if (parts.length > 2) {
            return FigSuggestion(name: parts[2]);
          }
          return null;
        })
        .whereType<FigSuggestion>()
        .toList();
  },
);

final FigArg labelArg = FigArg(
  name: 'label',
  generators: [listGenerator],
);

final FigSpec launchctlSpec = FigSpec(
  name: 'launchctl',
  description: 'Interfaces with launchd',
  subcommands: [
    FigSubcommand(
      name: 'bootstrap',
      description: 'Bootstraps a domain or a service into a domain',
      args: [serviceOrDomain, servicePath],
    ),
    FigSubcommand(
      name: 'bootout',
      description: 'Tears down a domain or removes a service from a domain',
      args: [serviceOrDomain, servicePath],
    ),
    FigSubcommand(
      name: 'enable',
      description: 'Enables an existing service',
      args: [serviceTarget],
    ),
    FigSubcommand(
      name: 'disable',
      description: 'Disables an existing service',
      args: [serviceTarget],
    ),
    FigSubcommand(
      name: 'kickstart',
      description: 'Forces an existing service to start',
      options: [
        FigOption(
          name: ['-k'],
          description: 'Kill instance before restarting',
        ),
        FigOption(
          name: ['-p'],
          description: 'Print PID',
        ),
      ],
      args: [serviceTarget],
    ),
    FigSubcommand(
      name: 'attach',
      description: "Attach the system's debugger to a service",
      options: [
        FigOption(
          name: ['-k'],
          description: 'Kill instance',
        ),
        FigOption(
          name: ['-s'],
          description: 'Force the service to start',
        ),
        FigOption(
          name: ['-x'],
          description: 'Attach xpcproxy',
        ),
      ],
      args: [serviceTarget],
    ),
    FigSubcommand(
      name: 'debug',
      description: 'Configures the next invocation of a service for debugging',
      options: [
        FigOption(
          name: ['--program'],
          description: 'Use program path as executable',
          args: [FigArg(name: 'program-path')],
        ),
        FigOption(
          name: ['--guard-malloc'],
          description: 'Turn on libgmalloc',
        ),
        FigOption(
          name: ['--malloc-stack-logging'],
          description: 'Turn on malloc(3) stack logging',
        ),
        FigOption(
          name: ['--malloc-nano-allocator'],
          description: 'Turn on malloc(3) nano allocator',
        ),
        FigOption(
          name: ['--debug-libraries'],
          description: 'Set the DYLD_IMAGE_SUFFIX',
        ),
        FigOption(
          name: ['--introspection-libraries'],
          description: 'Add introspection libraries to the DYLD_IMAGE_PATH',
        ),
        FigOption(
          name: ['--NSZombie'],
          description: 'Enables NSZombie',
        ),
        FigOption(
          name: ['--32'],
          description: 'Runs service on appropriate 32-bit architecture',
        ),
        FigOption(
          name: ['--stdin'],
          description: 'Sets the stdin path',
          args: [
            FigArg(
              name: 'stdin-path',
              template: 'filepaths',
            )
          ],
        ),
        FigOption(
          name: ['--stdout'],
          description: 'Sets the stdout path',
          args: [
            FigArg(
              name: 'stdout-path',
              template: 'filepaths',
            )
          ],
        ),
        FigOption(
          name: ['--stderr'],
          description: 'Sets the stderr path',
          args: [
            FigArg(
              name: 'stderr-path',
              template: 'filepaths',
            )
          ],
        ),
        FigOption(
          name: ['--environment'],
          description: 'Sets environment variables',
          args: [
            FigArg(
              name: 'environment-variables',
              isVariadic: true,
            )
          ],
        ),
      ],
      args: [
        FigArg(
          name: 'argv',
          description: 'Variable args: argv0 argv1',
          isVariadic: true,
        )
      ],
    ),
    FigSubcommand(
      name: 'kill',
      description: 'Sends a signal to the service instance',
      args: [
        FigArg(
          name: 'signal',
          description: 'Specify signal-name or signal-number',
        ),
        serviceTarget,
      ],
    ),
    FigSubcommand(
      name: 'blame',
      description: 'Prints the reason a service is running',
      args: [serviceTarget],
    ),
    FigSubcommand(
      name: 'print',
      description: 'Prints a description of a domain or service',
      args: [serviceOrDomain],
    ),
    FigSubcommand(
      name: 'print-cache',
      description: 'Prints information about the service cache',
    ),
    FigSubcommand(
      name: 'print-disabled',
      description: 'Prints which services are disabled',
      args: [FigArg(name: 'domain-target')],
    ),
    FigSubcommand(
      name: 'plist',
      description:
          'Prints a property list embedded in a binary (targets the Info.plist by default)',
      args: [
        FigArg(
          name: 'segment',
          description: 'Segment or section',
        ),
        FigArg(
          name: 'Mach-O',
          isOptional: true,
          template: 'filepaths',
        ),
      ],
    ),
    FigSubcommand(
      name: 'procinfo',
      description: 'Prints port information about a process',
      args: [FigArg(name: 'pid')],
    ),
    FigSubcommand(
      name: 'hostinfo',
      description: 'Prints port information about the host',
    ),
    FigSubcommand(
      name: 'resolveport',
      description:
          'Resolves a port name from a process to an endpoint in launchd',
      args: [
        FigArg(name: 'owner-pid'),
        FigArg(name: 'port-name'),
      ],
    ),
    FigSubcommand(
      name: 'limit',
      description: "Reads or modifies launchd's resource limits",
      options: [
        FigOption(name: ['cpu'], args: limitArgs),
        FigOption(name: ['filesize'], args: limitArgs),
        FigOption(name: ['data'], args: limitArgs),
        FigOption(name: ['stack'], args: limitArgs),
        FigOption(name: ['core'], args: limitArgs),
        FigOption(name: ['rss'], args: limitArgs),
        FigOption(name: ['memlock'], args: limitArgs),
        FigOption(name: ['maxproc'], args: limitArgs),
        FigOption(name: ['maxfiles'], args: limitArgs),
      ],
    ),
    FigSubcommand(
      name: 'runstats',
      description: 'Prints performance statistics for a service',
      args: [serviceTarget],
    ),
    FigSubcommand(
      name: 'examine',
      description:
          'Runs the specified analysis tool against launchd in a non-re-entrant manner',
      args: [
        FigArg(name: 'tool'),
        FigArg(
          isVariadic: true,
          name: '[args | @PID]',
        ),
      ],
    ),
    FigSubcommand(
      name: 'config',
      description:
          'Modifies persistent configuration parameters for launchd domains',
      args: [
        FigArg(
          name: '[system | user]',
          suggestions: ['system'],
        ),
        FigArg(
          name: 'param',
          description: 'A key for a key/value pair',
        ),
        FigArg(
          name: 'value',
          description: 'A value for a key/value pair',
        ),
      ],
    ),
    FigSubcommand(
      name: 'dumpstate',
      description: 'Dumps launchd state to stdout',
    ),
    FigSubcommand(
      name: 'dumpjpcategory',
      description: 'Dumps the jetsam properties category for all services',
    ),
    FigSubcommand(
      name: 'reboot',
      description: 'Initiates a system reboot of the specified type',
      options: [
        FigOption(name: ['system']),
        FigOption(name: ['userspace']),
        FigOption(name: ['halt']),
        FigOption(name: ['logout']),
        FigOption(name: ['apps']),
      ],
    ),
    FigSubcommand(
      name: 'load',
      description:
          'Recommended alternatives: bootstrap | enable. Bootstraps a service or directory of services',
      options: loadUnloadOptions,
      args: [
        FigArg(
          isVariadic: true,
          name: 'path',
          template: 'filepaths',
        )
      ],
    ),
    FigSubcommand(
      name: 'unload',
      description:
          'Recommended alternatives: bootout | disable. Unloads a service or directory of services',
      options: loadUnloadOptions,
      args: [
        FigArg(
          isVariadic: true,
          name: 'path',
          template: 'filepaths',
        )
      ],
    ),
    FigSubcommand(
      name: 'remove',
      description: 'Unloads the specified service name',
      args: [labelArg],
    ),
    FigSubcommand(
      name: 'list',
      description: 'Lists information about services',
      args: [
        FigArg(
          isOptional: true,
          name: 'label',
          generators: [listGenerator],
        )
      ],
    ),
    FigSubcommand(
      name: 'start',
      description: 'Starts the specified service',
      args: [labelArg],
    ),
    FigSubcommand(
      name: 'stop',
      description: 'Stops the specified service if it is running',
      args: [labelArg],
    ),
    FigSubcommand(
      name: 'setenv',
      description:
          'Sets the specified environment variables for all services within the domain',
      args: [
        FigArg(name: 'key'),
        FigArg(name: 'value'),
      ],
    ),
    FigSubcommand(
      name: 'unsetenv',
      description:
          'Unsets the specified environment variables for all services within the domain',
      args: [FigArg(name: 'key')],
    ),
    FigSubcommand(
      name: 'getenv',
      description:
          'Gets the value of an environment variable from within launchd',
      args: [FigArg(name: 'key')],
    ),
    FigSubcommand(
      name: 'bsexec',
      description: "Execute a program in another process' bootstrap context",
      args: [
        FigArg(name: 'PID'),
        FigArg(name: 'command'),
        FigArg(
          name: 'args',
          isOptional: true,
          isVariadic: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'asuser',
      description: 'Execute a program in the bootstrap context of a given user',
      args: [
        FigArg(name: 'UID'),
        FigArg(name: 'command'),
        FigArg(
          name: 'args',
          isOptional: true,
          isVariadic: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'submit',
      description: 'Submit a basic job from the command line',
      options: [
        FigOption(
          name: ['-p'],
          description: 'Program to execute',
          args: [FigArg(name: 'executable')],
        ),
        FigOption(
          name: ['-o'],
          description: 'Std out path',
          args: [
            FigArg(
              name: 'stdout-path',
              template: 'filepaths',
            )
          ],
        ),
        FigOption(
          name: ['-e'],
          description: 'Std err path',
          args: [
            FigArg(
              name: 'stderr-path',
              template: 'filepaths',
            )
          ],
        ),
      ],
      args: [
        FigArg(
          name: '-l',
          description: 'Label flag',
        ),
        FigArg(
          name: 'label',
          description: 'Unique label to assign to launchd',
          generators: [listGenerator],
        ),
        FigArg(
          name: 'command',
          description: 'Command to run',
        ),
        FigArg(
          name: 'arg',
          isVariadic: true,
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'managerpid',
      description: 'Prints the PID of the launchd controlling the session',
    ),
    FigSubcommand(
      name: 'manageruid',
      description: 'Prints the UID of the current launchd session',
    ),
    FigSubcommand(
      name: 'managername',
      description: 'Prints the name of the current launchd session',
    ),
    FigSubcommand(
      name: 'error',
      description: 'Prints a description of an error',
      args: [
        FigArg(
          name: 'type',
          description: 'Error domain type',
          suggestions: ['posix', 'mach', 'bootstrap'],
        ),
        FigArg(
          name: 'code',
          description: 'Numeric code',
        ),
      ],
    ),
    FigSubcommand(
      name: 'variant',
      description: 'Prints the launchd variant',
    ),
    FigSubcommand(
      name: 'version',
      description: 'Prints the launchd version',
    ),
    FigSubcommand(
      name: 'help',
      description: 'Prints the usage for a given subcommand',
    ),
  ],
);
