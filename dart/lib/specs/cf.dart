// AI-generated from TypeScript source: cf.ts

import 'package:autocomplete/src/spec.dart';

/// 通用的后处理函数工厂
List<FigSuggestion> Function(String) postProcessCfList(
  String description,
  int leadingLines,
) {
  return (String out) {
    return out
        .trim() // output can have a trailing newline, prevents empty suggestion
        .split('\n')
        .skip(leadingLines)
        .where((line) => line.isNotEmpty)
        .map((name) =>
            FigSuggestion(name: name.trim(), description: description))
        .toList();
  };
}

/// 生成应用名称的生成器
final FigGenerator generateAppNames = FigGenerator(
  script: ['bash', '-c', 'cf apps | cut -d " " -f1'],
  postProcess: (String out, [List<String>? tokens]) =>
      postProcessCfList('App name', 4)(out),
);

/// 生成组织列表的生成器
final FigGenerator generateOrgs = FigGenerator(
  script: ['cf', 'orgs'],
  postProcess: (String out, [List<String>? tokens]) =>
      postProcessCfList('Org', 3)(out),
);

/// 生成空间列表的生成器
final FigGenerator generateSpaces = FigGenerator(
  script: ['cf', 'spaces'],
  postProcess: (String out, [List<String>? tokens]) =>
      postProcessCfList('Space', 3)(out),
);

/// 生成服务列表的生成器
final FigGenerator generateServices = FigGenerator(
  script: ['bash', '-c', 'cf services | cut -d " " -f1'],
  postProcess: (String out, [List<String>? tokens]) =>
      postProcessCfList('Service', 4)(out),
);

/// Completion spec for `cf` CLI
final FigSpec cfSpec =
    FigSpec(name: 'cf', description: 'Cloudfoundry cli', subcommands: [
  Subcommand(
      name: ['app', 'a'],
      description: 'Display health and status for app',
      args: [
        Arg(
            name: 'APP_NAME',
            description: 'The app you want to get health and status for',
            generators: generateAppNames)
      ],
      options: [
        Option(
            name: '--guid',
            description:
                'Retrieve and display the given app\'s guid.  All other health and status output for the app is suppressed')
      ]),
  Subcommand(
      name: 'ssh',
      description: 'Display health and status for app',
      args: [
        Arg(
            name: 'APP_NAME',
            description: 'The app you want to ssh into',
            generators: generateAppNames)
      ],
      options: [
        Option(name: '-v', description: 'Verbose output')
      ]),
  Subcommand(
      name: 'env',
      description: 'Show all env variables for an app',
      args: [
        Arg(
            name: 'APP_NAME',
            description: 'The app you want to get env vars for',
            generators: generateAppNames)
      ]),
  Subcommand(name: 'orgs', description: 'List all orgs'),
  Subcommand(
      name: ['version', '-v', '--version'],
      description: 'Print the version of cf'),
  Subcommand(name: 'login', description: 'Log user in', options: [
    Option(
        name: '-a',
        description: 'API endpoint (e.g. https://api.example.com)',
        args: [Arg(name: 'API endpoint')]),
    Option(
        name: '-o',
        description: 'Org',
        args: [Arg(name: 'Org', generators: generateOrgs)]),
    Option(
        name: '-s',
        description: 'Space',
        args: [Arg(name: 'Space', generators: generateSpaces)]),
    Option(name: '-p', description: 'Password', args: [Arg(name: 'Password')]),
    Option(name: '-u', description: 'Username', args: [Arg(name: 'Username')])
  ]),
  Subcommand(name: 'logout', description: 'Log user out'),
  Subcommand(name: 'password', description: 'Change user password'),
  Subcommand(
      name: 'target',
      description: 'Set or view the targeted org or space',
      options: [
        Option(
            name: '-o',
            description: 'Org',
            args: [Arg(name: 'Org', generators: generateOrgs)]),
        Option(
            name: '-s',
            description: 'Space',
            args: [Arg(name: 'Space', generators: generateSpaces)])
      ]),
  Subcommand(name: 'api', description: 'Set or view target api url', args: [
    Arg(name: 'url', description: 'API endpoint', isOptional: true)
  ], options: [
    Option(
        name: '--skip-ssl-validation',
        description: 'Skip verification of the API endpoint. Not recommended!'),
    Option(name: '--unset', description: 'Remove all api endpoint targeting')
  ]),
  Subcommand(
      name: 'auth',
      description: 'Auth user non-interactively',
      args: [Arg(name: 'username'), Arg(name: 'password')]),
  Subcommand(name: 'apps', description: 'List all apps in the target space'),
  Subcommand(
      name: 'push',
      description: 'Push a new app or sync changes to an existing app',
      options: [
        Option(
            name: '-b',
            description: 'Custom buildpack by name or git url',
            args: [Arg(name: 'Buildpack')]),
        Option(
            name: '-c',
            description:
                'Startup command, set to null to reset to default start command',
            args: [Arg(name: 'Command', isOptional: true)]),
        Option(name: '-d', description: 'Domain', args: [Arg(name: 'Domain')]),
        Option(
            name: ['-o', '--docker-image'],
            description: 'Docker image',
            args: [Arg(name: 'Docker image')]),
        Option(
            name: '-f',
            description: 'Path to manifest',
            args: [Arg(name: 'Path to manifest')]),
        Option(
            name: ['-n', '--host-name'],
            description: 'Hostname',
            args: [Arg(name: 'Hostname')]),
        Option(
            name: '-i',
            description: 'Number of instances',
            args: [Arg(name: 'Number of instances')]),
        Option(
            name: '-k',
            description: 'Disk limit',
            args: [Arg(name: 'Disk limit')]),
        Option(
            name: '-m',
            description: 'Memory limit',
            args: [Arg(name: 'Memory limit')])
      ]),
  Subcommand(
      name: 'scale',
      description:
          'Change or view the instance count, disk space limit, and memory limit for an app',
      options: [
        Option(name: '-f', description: 'Force restart of app without prompt'),
        Option(
            name: '-i',
            description: 'Number of instances',
            args: [Arg(name: 'Number of instances')]),
        Option(
            name: '-k',
            description: 'Disk limit',
            args: [Arg(name: 'Disk limit')]),
        Option(
            name: '-m',
            description: 'Memory limit',
            args: [Arg(name: 'Memory limit')])
      ]),
  Subcommand(name: 'delete', description: 'Delete an app', args: [
    Arg(
        name: 'APP_NAME',
        description: 'The app you want to get health and status for',
        generators: generateAppNames)
  ], options: [
    Option(
        name: '-f',
        description: 'Force deletion without confirmation',
        isDangerous: true),
    Option(name: '-r', description: 'Also delete any mapped routes')
  ]),
  Subcommand(name: 'rename', description: 'Rename an app', args: [
    Arg(name: 'APP_NAME', generators: generateAppNames),
    Arg(name: 'new app name')
  ]),
  Subcommand(
      name: 'start',
      description: 'Start an app',
      args: [Arg(name: 'APP_NAME', generators: generateAppNames)]),
  Subcommand(
      name: 'stop',
      description: 'Stop an app',
      args: [Arg(name: 'APP_NAME', generators: generateAppNames)]),
  Subcommand(
      name: 'restart',
      description:
          'Stop all instances of the app, then start them again. This may cause downtime',
      args: [Arg(name: 'APP_NAME', generators: generateAppNames)]),
  Subcommand(
      name: 'restage',
      description:
          'Recreate the app\'s executable artifact using the latest pushed app files and the latest environment (variables, service bindings, buildpack, stack, etc.)',
      args: [Arg(name: 'APP_NAME', generators: generateAppNames)]),
  Subcommand(
      name: 'restart-app-instance',
      description:
          'Terminate the running application Instance at the given index and instantiate a new instance of the application with the same index',
      args: [
        Arg(name: 'APP_NAME', generators: generateAppNames),
        Arg(name: 'index')
      ]),
  Subcommand(
      name: 'run-task',
      description: 'Run a one-off task on an app',
      args: [
        Arg(name: 'APP_NAME', generators: generateAppNames),
        Arg(name: 'command')
      ],
      options: [
        Option(
            name: '-k',
            description: 'Disk limit',
            args: [Arg(name: 'Disk limit')]),
        Option(
            name: '-m',
            description: 'Memory limit',
            args: [Arg(name: 'Memory limit')]),
        Option(
            name: '--name',
            description: 'Name for task',
            args: [Arg(name: 'Name for task')])
      ]),
  Subcommand(
      name: 'tasks',
      description: 'List tasks of an app',
      args: [Arg(name: 'APP_NAME', generators: generateAppNames)]),
  Subcommand(
      name: 'terminate-task',
      description: 'Terminate a running task of an app',
      args: [
        Arg(name: 'APP_NAME', generators: generateAppNames),
        Arg(name: 'task id')
      ]),
  Subcommand(
      name: 'events',
      description: 'Show recent app events',
      args: [Arg(name: 'APP_NAME', generators: generateAppNames)]),
  Subcommand(
      name: 'files',
      description:
          'Print out a list of files in a directory or the contents of a specific file of an app running on the DEA backend',
      args: [
        Arg(name: 'APP_NAME', generators: generateAppNames),
        Arg(name: 'path', isOptional: true)
      ],
      options: [
        Option(
            name: '-i', description: 'Instance', args: [Arg(name: 'instance')])
      ]),
  Subcommand(
      name: 'logs',
      description: 'Trail or show recent logs for an app',
      args: [
        Arg(name: 'APP_NAME', generators: generateAppNames)
      ],
      options: [
        Option(
            name: '--recent',
            description: 'Dump recent logs instead of tailing')
      ]),
  Subcommand(
      name: 'set-env',
      description: 'Set an environment variable for an app',
      args: [
        Arg(name: 'APP_NAME', generators: generateAppNames),
        Arg(name: 'env var name'),
        Arg(name: 'env var value')
      ]),
  Subcommand(
      name: 'unset-env',
      description: 'Remove an environment variable',
      args: [
        Arg(name: 'APP_NAME', generators: generateAppNames),
        Arg(name: 'env var name')
      ]),
  Subcommand(
      name: 'stacks',
      description:
          'List all stacks (a stack is a pre-built file system, including an operating system, that can run apps)'),
  Subcommand(
      name: 'copy-source',
      description:
          'Copies the source code of an application to another existing application (and restarts that application)',
      args: [
        Arg(name: 'source app'),
        Arg(name: 'target app')
      ],
      options: [
        Option(
            name: '-s',
            description: 'Space that contains the target application',
            args: [Arg(name: 'space', generators: generateSpaces)]),
        Option(
            name: '-o',
            description: 'Org that contains the target application',
            args: [Arg(name: 'org', generators: generateOrgs)]),
        Option(
            name: '--no-restart',
            description:
                'Override restart of the application in target environment after copy-source completes')
      ]),
  Subcommand(
      name: 'create-app-manifest',
      description:
          'Create an app manifest for an app that has been pushed successfully',
      args: [
        Arg(name: 'APP_NAME', generators: generateAppNames)
      ],
      options: [
        Option(
            name: '-p',
            description: 'Path for file creation',
            args: [Arg(name: 'path')])
      ]),
  Subcommand(
      name: 'get-health-check',
      description: 'Show the type of health check performed on an app',
      args: [Arg(name: 'APP_NAME', generators: generateAppNames)]),
  Subcommand(
      name: 'set-health-check',
      description: 'Change type of health check performed on an app',
      args: [
        Arg(name: 'APP_NAME', generators: generateAppNames),
        Arg(name: 'type of health check', description: 'Process, port or http')
      ]),
  Subcommand(
      name: 'enable-ssh',
      description: 'Enable ssh for the application',
      args: [Arg(name: 'APP_NAME', generators: generateAppNames)]),
  Subcommand(
      name: 'disable-ssh',
      description: 'Disable ssh for the application',
      args: [Arg(name: 'APP_NAME', generators: generateAppNames)]),
  Subcommand(
      name: 'ssh-enabled',
      description:
          'Reports whether SSH is enabled on an application container instance',
      args: [Arg(name: 'APP_NAME', generators: generateAppNames)]),
  Subcommand(
      name: 'marketplace',
      description: 'List available offerings in the marketplace',
      options: [
        Option(
            name: '-s',
            description: 'Show plan details for a particular service offering',
            args: [Arg(name: 'service')])
      ]),
  Subcommand(
      name: ['services', 's'],
      description: 'List all service instances in the target space'),
  Subcommand(
      name: 'create-service',
      description: 'Create a service instance',
      args: [
        Arg(name: 'service'),
        Arg(name: 'plan'),
        Arg(name: 'service instance')
      ],
      options: [
        Option(
            name: '-c',
            description:
                'Valid JSON object containing service-specific configuration parameters, provided either in-line or in a file',
            args: [Arg(name: 'JSON object')]),
        Option(
            name: '-t',
            description: 'User provided tags',
            args: [Arg(name: 'tags')])
      ]),
  Subcommand(
      name: 'update-service',
      description: 'Update a service instance',
      args: [
        Arg(name: 'service', generators: generateServices)
      ],
      options: [
        Option(
            name: '-c',
            description:
                'Valid JSON object containing service-specific configuration parameters, provided either in-line or in a file',
            args: [Arg(name: 'JSON object')]),
        Option(
            name: '-p',
            description: 'Change service plan for a service instance',
            args: [Arg(name: 'new plan')]),
        Option(
            name: '-t',
            description: 'User provided tags',
            args: [Arg(name: 'tags')])
      ]),
  Subcommand(
      name: 'delete-service',
      description: 'Delete a service instance',
      args: [
        Arg(name: 'service instance', generators: generateServices)
      ],
      options: [
        Option(name: '-f', description: 'Force deletion without confirmation')
      ]),
  Subcommand(
      name: 'rename-service',
      description: 'Rename a service instance',
      args: [
        Arg(name: 'service instance', generators: generateServices),
        Arg(name: 'new service instance')
      ]),
  Subcommand(
      name: 'create-service-key',
      description: 'Create key for a service instance',
      args: [
        Arg(name: 'service instance', generators: generateServices),
        Arg(name: 'service key')
      ],
      options: [
        Option(
            name: '-c',
            description:
                'Valid JSON object containing service-specific configuration parameters, provided either in-line or in a file',
            args: [Arg(name: 'JSON object')])
      ]),
  Subcommand(
      name: 'service-keys',
      description: 'List keys for a service instance',
      args: [Arg(name: 'service instance', generators: generateServices)]),
  Subcommand(name: 'service-key', description: 'Show service key info', args: [
    Arg(name: 'service instance', generators: generateServices),
    Arg(name: 'service key')
  ]),
  Subcommand(
      name: 'delete-service-key',
      description: 'Delete a service key',
      args: [
        Arg(name: 'service instance', generators: generateServices),
        Arg(name: 'service key')
      ],
      options: [
        Option(name: '-f', description: 'Force deletion without confirmation')
      ]),
  Subcommand(
      name: 'bind-service',
      description: 'Bind a service instance to an app',
      args: [
        Arg(name: 'APP_NAME', generators: generateAppNames),
        Arg(name: 'service instance', generators: generateServices)
      ],
      options: [
        Option(
            name: '-c',
            description:
                'Valid JSON object containing service-specific configuration parameters, provided either in-line or in a file',
            args: [Arg(name: 'JSON object')])
      ]),
  Subcommand(
      name: 'unbind-service',
      description: 'Unbind a service instance from an app',
      args: [
        Arg(name: 'APP_NAME', generators: generateAppNames),
        Arg(name: 'service instance', generators: generateServices)
      ]),
  Subcommand(
      name: 'bind-route-service',
      description: 'Bind a service instance to an HTTP route',
      args: [
        Arg(name: 'domain'),
        Arg(name: 'service instance', generators: generateServices)
      ],
      options: [
        Option(
            name: '-c',
            description:
                'Valid JSON object containing service-specific configuration parameters, provided either in-line or in a file',
            args: [Arg(name: 'JSON object')]),
        Option(
            name: ['-n', '--hostname'],
            description:
                'Hostname used in combination with DOMAIN to specify the route to bind',
            args: [Arg(name: 'hostname')]),
        Option(
            name: '--path',
            description:
                'Path used in combination with HOSTNAME and DOMAIN to specify the route to bind',
            args: [Arg(name: 'path')])
      ]),
  Subcommand(
      name: 'unbind-route-service',
      description: 'Unbind a service instance from an HTTP route',
      args: [
        Arg(name: 'domain'),
        Arg(name: 'service instance', generators: generateServices)
      ],
      options: [
        Option(name: '-f', description: 'Force unbinding without confirmation'),
        Option(
            name: ['-n', '--hostname'],
            description:
                'Hostname used in combination with DOMAIN to specify the route to bind',
            args: [Arg(name: 'hostname')]),
        Option(
            name: '--path',
            description:
                'Path used in combination with HOSTNAME and DOMAIN to specify the route to bind',
            args: [Arg(name: 'path')])
      ]),
  Subcommand(
      name: 'create-user-provided-service',
      description: 'Make a user-provided service instance available to CF apps',
      args: [
        Arg(name: 'service instance')
      ],
      options: [
        Option(
            name: '-p',
            description:
                'Credentials, provided inline or in a file, to be exposed in the VCAP_SERVICES environment variable for bound applications',
            args: [Arg(name: 'credentials')]),
        Option(
            name: '-l',
            description:
                'URL to which logs for bound applications will be streamed',
            args: [Arg(name: 'sys log drain url')]),
        Option(
            name: '-r',
            description:
                'URL to which requests for bound routes will be forwarded. Scheme for this URL must be https',
            args: [Arg(name: 'serice url')])
      ]),
  Subcommand(
      name: 'update-user-provided-service',
      description: 'Update user-provided service instance',
      args: [
        Arg(name: 'service instance')
      ],
      options: [
        Option(
            name: '-p',
            description:
                'Credentials, provided inline or in a file, to be exposed in the VCAP_SERVICES environment variable for bound applications',
            args: [Arg(name: 'credentials')]),
        Option(
            name: '-l',
            description:
                'URL to which logs for bound applications will be streamed',
            args: [Arg(name: 'sys log drain url')]),
        Option(
            name: '-r',
            description:
                'URL to which requests for bound routes will be forwarded. Scheme for this URL must be https',
            args: [Arg(name: 'serice url')])
      ]),
  Subcommand(name: 'org', description: 'Show org info', args: [
    Arg(name: 'org', generators: generateOrgs)
  ], options: [
    Option(
        name: '--guid',
        description:
            'Retrieve and display the given org\'s guid.  All other output for the org is suppressed')
  ]),
  Subcommand(name: 'create-org', description: 'Create an org', args: [
    Arg(name: 'org')
  ], options: [
    Option(
        name: '-p',
        description:
            'Quota to assign to the newly created org (excluding this option results in assignment of default quota)',
        args: [Arg(name: 'quota')])
  ]),
  Subcommand(name: 'delete-org', description: 'Delete an org', args: [
    Arg(name: 'org', generators: generateOrgs)
  ], options: [
    Option(name: '-f', description: 'Force deletion without confirmation')
  ]),
  Subcommand(
      name: 'rename-org',
      description: 'Rename an org',
      args: [Arg(name: 'org', generators: generateOrgs), Arg(name: 'new org')]),
  Subcommand(name: 'spaces', description: 'List all spaces in an org'),
  Subcommand(name: 'space', description: 'Show space info', args: [
    Arg(name: 'space', generators: generateSpaces)
  ], options: [
    Option(
        name: '--guid',
        description:
            'Retrieve and display the given org\'s guid.  All other output for the org is suppressed'),
    Option(
        name: '--security-group-rules',
        description:
            'Retrieve the rules for all the security groups associated with the space\'s guid.  All other output for the org is suppressed')
  ]),
  Subcommand(name: 'create-space', description: 'Create a space', args: [
    Arg(name: 'space')
  ], options: [
    Option(
        name: '-o',
        description: 'Org',
        args: [Arg(name: 'org', generators: generateOrgs)]),
    Option(
        name: '-p',
        description: 'Quota to assign to the newly created space',
        args: [Arg(name: 'quota')])
  ]),
  Subcommand(name: 'delete-space', description: 'Delete a space', args: [
    Arg(name: 'space', generators: generateSpaces)
  ], options: [
    Option(
        name: '-o',
        description: 'Delete space within specified org',
        args: [Arg(name: 'org', generators: generateOrgs)]),
    Option(name: '-f', description: 'Force deletion without confirmation')
  ]),
  Subcommand(name: 'rename-space', description: 'Rename a space', args: [
    Arg(name: 'space', generators: generateSpaces),
    Arg(name: 'new space')
  ]),
  Subcommand(
      name: 'allow-space-ssh',
      description: 'Allow SSH access for the space',
      args: [Arg(name: 'space', generators: generateSpaces)]),
  Subcommand(
      name: 'disallow-space-ssh',
      description: 'Disallow SSH access for the space',
      args: [Arg(name: 'space', generators: generateSpaces)]),
  Subcommand(
      name: 'space-ssh-allowed',
      description: 'Reports whether SSH is allowed in a space',
      args: [Arg(name: 'space', generators: generateSpaces)]),
  Subcommand(name: 'domains', description: 'List domains in the target org'),
  Subcommand(
      name: 'create-domain',
      description: 'Create a domain in an org for later use',
      args: [Arg(name: 'org', generators: generateOrgs), Arg(name: 'domain')]),
  Subcommand(name: 'delete-domain', description: 'Delete a domain', args: [
    Arg(name: 'space', generators: generateSpaces)
  ], options: [
    Option(name: '-f', description: 'Force deletion without confirmation')
  ]),
  Subcommand(
      name: 'create-shared-domain',
      description: 'Create a domain that can be used by all orgs (admin-only)',
      args: [
        Arg(name: 'domain')
      ],
      options: [
        Option(
            name: '--router-group',
            description:
                'Routes for this domain will be configured only on the specified router group')
      ]),
  Subcommand(
      name: 'delete-shared-domain',
      description: 'Delete a shared domain',
      args: [
        Arg(name: 'domain')
      ],
      options: [
        Option(name: '-f', description: 'Force deletion without confirmation')
      ]),
  Subcommand(name: 'router-groups', description: 'List router groups'),
  Subcommand(
      name: 'routes',
      description:
          'List all routes in the current space or the current organization',
      options: [
        Option(
            name: '--orglevel',
            description:
                'List all the routes for all spaces of current organization')
      ]),
  Subcommand(
      name: 'create-route',
      description: 'Create a url route in a space for later use',
      args: [
        Arg(name: 'space', generators: generateSpaces),
        Arg(name: 'domain')
      ],
      options: [
        Option(
            name: ['--hostname', '-n'],
            description:
                'Hostname for the HTTP route (required for shared domains)',
            args: [Arg(name: 'hostname')]),
        Option(
            name: '--path',
            description: 'Path for the HTTP route',
            args: [Arg(name: 'path')]),
        Option(
            name: '--port',
            description: 'Port for the TCP route',
            args: [Arg(name: 'port')]),
        Option(
            name: '--random-port',
            description: 'Create a random port for the TCP route')
      ]),
  Subcommand(
      name: 'check-route',
      description:
          'Perform a simple check to determine whether a route currently exists or not',
      args: [
        Arg(name: 'host'),
        Arg(name: 'domain')
      ],
      options: [
        Option(
            name: '--path',
            description: 'Path for the route',
            args: [Arg(name: 'path')])
      ]),
  Subcommand(
      name: 'map-route',
      description: 'Add a url route to an app',
      args: [
        Arg(name: 'APP_NAME', generators: generateAppNames),
        Arg(name: 'domain')
      ],
      options: [
        Option(
            name: ['--hostname', '-n'],
            description:
                'Hostname for the HTTP route (required for shared domains)',
            args: [Arg(name: 'hostname')]),
        Option(
            name: '--path',
            description: 'Path for the HTTP route',
            args: [Arg(name: 'path')]),
        Option(
            name: '--port',
            description: 'Port for the TCP route',
            args: [Arg(name: 'port')]),
        Option(
            name: '--random-port',
            description: 'Create a random port for the TCP route')
      ]),
  Subcommand(
      name: 'unmap-route',
      description: 'Remove a url route from an app',
      args: [
        Arg(name: 'APP_NAME', generators: generateAppNames),
        Arg(name: 'domain')
      ],
      options: [
        Option(
            name: ['--hostname', '-n'],
            description: 'Hostname used to identify the HTTP route',
            args: [Arg(name: 'hostname')]),
        Option(
            name: '--path',
            description: 'Path used to identify the HTTP route',
            args: [Arg(name: 'path')]),
        Option(
            name: '--port',
            description: 'Port used to identify the TCP route',
            args: [Arg(name: 'port')])
      ]),
  Subcommand(name: 'delete-route', description: 'Delete a route', args: [
    Arg(name: 'domain')
  ], options: [
    Option(
        name: ['--hostname', '-n'],
        description: 'Hostname used to identify the HTTP route',
        args: [Arg(name: 'hostname')]),
    Option(
        name: '--path',
        description: 'Path used to identify the HTTP route',
        args: [Arg(name: 'path')]),
    Option(
        name: '--port',
        description: 'Port used to identify the TCP route',
        args: [Arg(name: 'port')]),
    Option(name: '-f', description: 'Force deletion without confirmation')
  ]),
  Subcommand(
      name: 'delete-orphaned-routes',
      description:
          'Delete all orphaned routes (i.e. those that are not mapped to an app)',
      options: [
        Option(name: '-f', description: 'Force deletion without confirmation')
      ]),
  Subcommand(name: 'create-user', description: 'Create a new user', args: [
    Arg(name: 'username'),
    Arg(name: 'password')
  ], options: [
    Option(
        name: '--origin',
        description:
            'Origin for mapping a user account to a user in an external identity provider',
        args: [Arg(name: 'provider')])
  ]),
  Subcommand(name: 'delete-user', description: 'Delete a user', args: [
    Arg(name: 'username')
  ], options: [
    Option(name: '-f', description: 'Force deletion without confirmation')
  ]),
  Subcommand(
      name: 'org-users',
      description: 'Show org users by role',
      args: [Arg(name: 'org', generators: generateOrgs)],
      options: [Option(name: '-a', description: 'List all users in the org')]),
  Subcommand(
      name: 'set-org-role',
      description: 'Assign an org role to a user',
      args: [
        Arg(name: 'username'),
        Arg(name: 'org', generators: generateOrgs),
        Arg(name: 'role')
      ]),
  Subcommand(
      name: 'unset-org-role',
      description: 'Remove an org role from a user',
      args: [
        Arg(name: 'username'),
        Arg(name: 'org', generators: generateOrgs),
        Arg(name: 'role')
      ]),
  Subcommand(name: 'space-users', description: 'Show space users by role'),
  Subcommand(
      name: 'set-space-role',
      description: 'Assign a space role to a user',
      args: [
        Arg(name: 'username'),
        Arg(name: 'org', generators: generateOrgs),
        Arg(name: 'space', generators: generateSpaces),
        Arg(name: 'role')
      ]),
  Subcommand(
      name: 'unset-space-role',
      description: 'Remove a space role from a user',
      args: [
        Arg(name: 'username'),
        Arg(name: 'org', generators: generateOrgs),
        Arg(name: 'space', generators: generateSpaces),
        Arg(name: 'role')
      ]),
  Subcommand(name: 'quotas', description: 'List available usage quotas'),
  Subcommand(
      name: 'quota',
      description: 'Show quota info',
      args: [Arg(name: 'quota')]),
  Subcommand(
      name: 'set-quota',
      description: 'Assign a quota to an org',
      args: [Arg(name: 'org', generators: generateOrgs), Arg(name: 'quota')]),
  Subcommand(
      name: 'create-quota',
      description: 'Define a new resource quota',
      args: [
        Arg(name: 'quota')
      ],
      options: [
        Option(
            name: '-a',
            description: 'Total number of application instances',
            args: [Arg(name: 'number of application instances')]),
        Option(
            name: '-i',
            description:
                'Maximum amount of memory an application instance can have',
            args: [Arg(name: 'instance memory')]),
        Option(
            name: '-m',
            description: 'Total amount of memory a space can have',
            args: [Arg(name: 'total memory')]),
        Option(
            name: '--reserved-route-ports',
            description:
                'Maximum number of routes that may be created with reserved ports (Default: 0)',
            args: [Arg(name: 'reserved route ports')]),
        Option(
            name: '-s',
            description: 'Total number of service instances',
            args: [Arg(name: 'service instances')]),
        Option(
            name: '-r',
            description: 'Total number of routes',
            args: [Arg(name: 'routes')]),
        Option(
            name: '--allow-paid-service-plans',
            description: 'Can provision instances of paid service plans')
      ]),
  Subcommand(name: 'delete-quota', description: 'Delete a quota', args: [
    Arg(name: 'quota')
  ], options: [
    Option(name: '-f', description: 'Force deletion without confirmation')
  ]),
  Subcommand(
      name: 'update-quota',
      description: 'Update an existing resource quota',
      args: [
        Arg(name: 'quota')
      ],
      options: [
        Option(
            name: '-a',
            description: 'Total number of application instances',
            args: [Arg(name: 'number of application instances')]),
        Option(
            name: '-i',
            description:
                'Maximum amount of memory an application instance can have',
            args: [Arg(name: 'instance memory')]),
        Option(
            name: '-m',
            description: 'Total amount of memory a space can have',
            args: [Arg(name: 'total memory')]),
        Option(
            name: '--reserved-route-ports',
            description:
                'Maximum number of routes that may be created with reserved ports (Default: 0)',
            args: [Arg(name: 'reserved route ports')]),
        Option(
            name: '-s',
            description: 'Total number of service instances',
            args: [Arg(name: 'service instances')]),
        Option(
            name: '-r',
            description: 'Total number of routes',
            args: [Arg(name: 'routes')]),
        Option(name: '-n', description: 'New name', args: [Arg(name: 'name')]),
        Option(
            name: '--allow-paid-service-plans',
            description: 'Can provision instances of paid service plans',
            exclusiveOn: ['--disallow-paid-service-plans']),
        Option(
            name: '--disallow-paid-service-plans',
            description: 'Cannot provision instances of paid service plans',
            exclusiveOn: ['--allow-paid-service-plans'])
      ]),
  Subcommand(
      name: 'space-quotas',
      description: 'List available space resource quotas'),
  Subcommand(
      name: 'space-quota',
      description: 'Show space quota info',
      args: [Arg(name: 'space quota')]),
  Subcommand(
      name: 'create-space-quota',
      description: 'Define a new space resource quota',
      args: [
        Arg(name: 'quota')
      ],
      options: [
        Option(
            name: '-a',
            description: 'Total number of application instances',
            args: [Arg(name: 'number of application instances')]),
        Option(
            name: '-i',
            description:
                'Maximum amount of memory an application instance can have',
            args: [Arg(name: 'instance memory')]),
        Option(
            name: '-m',
            description: 'Total amount of memory a space can have',
            args: [Arg(name: 'total memory')]),
        Option(
            name: '--reserved-route-ports',
            description:
                'Maximum number of routes that may be created with reserved ports (Default: 0)',
            args: [Arg(name: 'reserved route ports')]),
        Option(
            name: '-s',
            description: 'Total number of service instances',
            args: [Arg(name: 'service instances')]),
        Option(
            name: '-r',
            description: 'Total number of routes',
            args: [Arg(name: 'routes')]),
        Option(
            name: '--allow-paid-service-plans',
            description: 'Can provision instances of paid service plans')
      ]),
  Subcommand(
      name: 'update-space-quota',
      description: 'Update an existing space quota',
      args: [
        Arg(name: 'space quota')
      ],
      options: [
        Option(
            name: '-a',
            description: 'Total number of application instances',
            args: [Arg(name: 'number of application instances')]),
        Option(
            name: '-i',
            description:
                'Maximum amount of memory an application instance can have',
            args: [Arg(name: 'instance memory')]),
        Option(
            name: '-m',
            description: 'Total amount of memory a space can have',
            args: [Arg(name: 'total memory')]),
        Option(
            name: '--reserved-route-ports',
            description:
                'Maximum number of routes that may be created with reserved ports (Default: 0)',
            args: [Arg(name: 'reserved route ports')]),
        Option(
            name: '-s',
            description: 'Total number of service instances',
            args: [Arg(name: 'service instances')]),
        Option(
            name: '-r',
            description: 'Total number of routes',
            args: [Arg(name: 'routes')]),
        Option(name: '-n', description: 'New name', args: [Arg(name: 'name')]),
        Option(
            name: '--allow-paid-service-plans',
            description: 'Can provision instances of paid service plans',
            exclusiveOn: ['--disallow-paid-service-plans']),
        Option(
            name: '--disallow-paid-service-plans',
            description: 'Cannot provision instances of paid service plans',
            exclusiveOn: ['--allow-paid-service-plans'])
      ]),
  Subcommand(
      name: 'delete-space-quota',
      description:
          'Delete a space quota definition and unassign the space quota from all spaces',
      args: [
        Arg(name: 'space quota')
      ],
      options: [
        Option(name: '-f', description: 'Force deletion without confirmation')
      ]),
  Subcommand(
      name: 'set-space-quota',
      description: 'Assign a space quota definition to a space',
      args: [
        Arg(name: 'space', generators: generateSpaces),
        Arg(name: 'quota')
      ]),
  Subcommand(
      name: 'unset-space-quota',
      description: 'Unassign a quota from a space',
      args: [
        Arg(name: 'space', generators: generateSpaces),
        Arg(name: 'quota')
      ]),
  Subcommand(
      name: 'curl',
      description: 'Executes a request to the targeted API endpoint',
      args: [
        Arg(name: 'path', description: 'Path to curl')
      ],
      options: [
        Option(
            name: '-H',
            description:
                'Custom headers to include in the request, flag can be specified multiple times',
            args: [Arg(name: 'headers')]),
        Option(
            name: '-X',
            description: 'HTTP method (GET,POST,PUT,DELETE,etc)',
            args: [Arg(name: 'HTTP method')]),
        Option(
            name: '-d',
            description:
                'HTTP data to include in the request body, or \'@\' followed by a file name to read the data from',
            args: [Arg(name: 'data')]),
        Option(
            name: '--output',
            description: 'Write curl body to FILE instead of stdout',
            args: [Arg(name: 'path to file')]),
        Option(
            name: '-i', description: 'Include response headers in the output')
      ]),
  Subcommand(
      name: 'oauth-token',
      description:
          'Retrieve and display the OAuth token for the current session'),
  Subcommand(
      name: 'ssh-code', description: 'Get a one time password for ssh clients'),
  Subcommand(
      name: 'add-plugin-repo',
      description: 'Add a new plugin repository',
      args: [Arg(name: 'repo name'), Arg(name: 'url')]),
  Subcommand(
      name: 'remove-plugin-repo',
      description: 'Remove a plugin repository',
      args: [Arg(name: 'repo name')]),
  Subcommand(
      name: 'list-plugin-repos',
      description: 'List all the added plugin repositories'),
  Subcommand(
      name: 'repo-plugins',
      description:
          'List all available plugins in specified repository or in all added repositories',
      options: [
        Option(
            name: '-r',
            description: 'Name of a registered repository',
            args: [Arg(name: 'repo')])
      ]),
  Subcommand(
      name: 'plugins',
      description: 'List all available plugin commands',
      options: [
        Option(
            name: '--checksum',
            description:
                'Compute and show the sha1 value of the plugin binary file')
      ]),
  Subcommand(name: 'install-plugin', description: 'Install CLI plugin', args: [
    Arg(name: 'path', description: 'Local path to plugin'),
    Arg(name: 'url', description: 'URL for plugin')
  ], options: [
    Option(
        name: '-r',
        description:
            'Name of a registered repository where the specified plugin is located',
        args: [Arg(name: 'repo name'), Arg(name: 'plugin name')]),
    Option(
        name: '-f', description: 'Force install of plugin without confirmation')
  ]),
  Subcommand(
      name: 'uninstall-plugin',
      description: 'Uninstall the plugin defined in command argument',
      args: [Arg(name: 'plugin name')])
], options: [
  Option(
      name: ['--help', '-h'],
      description: 'Show help for Cloud Foundry command line tool'),
  Option(name: '-v', description: 'Print API request diagnostics to stdout')
]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (generateAppNames)
// const generateAppNames: Fig.Generator = {
//   script: ["bash", "-c", `cf apps | cut -d " " -f1`],
//   postProcess: postProcessCfList("App name", 4),
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (generateOrgs)
// const generateOrgs: Fig.Generator = {
//   script: ["cf", "orgs"],
//   postProcess: postProcessCfList("Org", 3),
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (generateSpaces)
// const generateSpaces: Fig.Generator = {
//   script: ["cf", "spaces"],
//   postProcess: postProcessCfList("Space", 3),
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (generateServices)
// const generateServices: Fig.Generator = {
//   script: ["bash", "-c", `cf services | cut -d " " -f1 `],
//   postProcess: postProcessCfList("Service", 4),
// };
// TS_GENERATOR_BLOCK_END
