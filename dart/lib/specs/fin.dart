// AI-generated from TypeScript source: fin.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

/// 数据库生成器
final FigGenerator databases = FigGenerator(
  script: ['fin', 'db', 'list'],
  postProcess: (String output, [List<String>? tokens]) {
    return output
        .split('\n')
        .where((db) => db.trim().isNotEmpty)
        .map((db) => FigSuggestion(
              name: db.trim(),
              description: 'Database',
            ))
        .toList();
  },
);

/// 主机生成器
final FigGenerator hosts = FigGenerator(
  script: ['fin', 'hosts'],
  postProcess: (String output, [List<String>? tokens]) {
    return output
        .split('\n')
        .where((host) => host.isNotEmpty && !host.startsWith('#'))
        .map((host) => FigSuggestion(
              name: host,
              description: 'Host',
            ))
        .toList();
  },
);

/// 别名生成器
final FigGenerator aliasGenerator = FigGenerator(
  script: ['fin', 'alias', 'list'],
  postProcess: (String output, [List<String>? tokens]) {
    final lines = output.split('\n');

    // 跳过第一行（标题行）
    if (lines.length <= 1) return <FigSuggestion>[];

    return lines
        .skip(1) // 跳过第一行
        .where((line) => line.trim().isNotEmpty)
        .map((alias) {
      final name = alias.split(' ')[0];
      return FigSuggestion(
        name: name,
        description: 'Alias',
      );
    }).toList();
  },
);

/// 服务生成器
final FigGenerator serviceGenerator = FigGenerator(
  script: ['fin', 'docker', 'ps', '--format', '{{.Names}}'],
  splitOn: '\n',
  postProcess: (String output, [List<String>? tokens]) {
    // splitOn 会自动分割，但也可以添加额外的后处理
    return output
        .split('\n')
        .where((service) => service.trim().isNotEmpty)
        .map((service) => FigSuggestion(
              name: service.trim(),
              description: 'Service',
              icon: '🐋', // Docker 图标
            ))
        .toList();
  },
);

final FigGenerator databasesEnhanced = FigGenerator(
  script: ['fin', 'db', 'list'],
  cache: FigCache(ttl: 30000), // 缓存 30 秒
  postProcess: (String output, [List<String>? tokens]) {
    try {
      return output
          .split('\n')
          .where((db) => db.trim().isNotEmpty)
          .map((db) => FigSuggestion(
                name: db.trim(),
                description: 'Database',
                icon: '🗄️', // 数据库图标
                priority: 50,
              ))
          .toList();
    } catch (e) {
      print('Error processing database list: $e');
      return <FigSuggestion>[];
    }
  },
);

/// 增强的主机生成器
final FigGenerator hostsEnhanced = FigGenerator(
  script: ['fin', 'hosts'],
  postProcess: (String output, [List<String>? tokens]) {
    final suggestions = <FigSuggestion>[];

    for (final line in output.split('\n')) {
      final trimmed = line.trim();
      if (trimmed.isEmpty) continue;
      if (trimmed.startsWith('#')) continue;

      suggestions.add(FigSuggestion(
        name: trimmed,
        description: 'Host',
        icon: '🌐', // 网络图标
      ));
    }

    return suggestions;
  },
);

/// 增强的别名生成器（处理空格更好的版本）
final FigGenerator aliasGeneratorEnhanced = FigGenerator(
  script: ['fin', 'alias', 'list'],
  postProcess: (String output, [List<String>? tokens]) {
    final lines = output.split('\n');
    final suggestions = <FigSuggestion>[];

    // 跳过第一行（标题）
    for (int i = 1; i < lines.length; i++) {
      final line = lines[i].trim();
      if (line.isEmpty) continue;

      // 更好的空格处理：使用正则表达式分割
      final parts = line.split(RegExp(r'\s+'));
      if (parts.isNotEmpty) {
        suggestions.add(FigSuggestion(
          name: parts[0],
          description: 'Alias',
          icon: '🏷️', // 标签图标
        ));
      }
    }

    return suggestions;
  },
);

/// Completion spec for `fin` CLI
final FigSpec finSpec = FigSpec(
  name: 'fin',
  description: 'Docksal command line utility',
  subcommands: [
    Subcommand(name: 'help', description: 'Shows help'),
    Subcommand(
        name: 'addon',
        description:
            'Addons management commands: install, remove (fin help addon)',
        subcommands: [
          Subcommand(name: 'install', description: 'Install addon', args: [
            Arg(
                name: 'Name',
                description:
                    'See available addons in the Addons Repository https://github.com/docksal/addons')
          ]),
          Subcommand(
              name: 'remove',
              description: 'Remove addon',
              args: [Arg(name: 'Name')])
        ]),
    Subcommand(
        name: 'alias',
        description:
            'Manage aliases that allow fin @alias execution (fin help alias). Create/update alias with <alias_name> that links to <path>',
        args: [
          Arg(name: 'path'),
          Arg(name: 'alias_name')
        ],
        subcommands: [
          Subcommand(name: 'list', description: 'Show aliases list'),
          Subcommand(
              name: 'remove',
              description: 'Remove alias',
              args: [Arg(name: 'alias_name', generators: aliasGenerator)])
        ]),
    Subcommand(
        name: 'db',
        description: 'Manage databases (fin help db)',
        subcommands: [
          Subcommand(
              name: 'import',
              description:
                  'Truncate the database and import from SQL dump file or stdin',
              args: [
                Arg(name: 'file', template: 'filepaths')
              ],
              options: [
                Option(
                    name: '--progress',
                    description: 'Show import progess (requires pv)'),
                Option(
                    name: '--no-truncate',
                    description: 'Do no truncate database before import')
              ]),
          Subcommand(
              name: 'dump',
              description: 'Dump a database into an SQL dump file or stdout',
              args: [Arg(name: 'file', template: 'filepaths')]),
          Subcommand(
              name: ['list', 'ls'],
              description: 'Show list of existing databases'),
          Subcommand(
              name: 'cli',
              description:
                  'Open command line interface to the DB server (and execute query if provided)',
              args: [Arg(name: 'query', isOptional: true)]),
          Subcommand(
              name: 'create',
              description: 'Create a database',
              args: [Arg(name: 'name')]),
          Subcommand(
              name: 'drop',
              description: 'Delete a database',
              args: [Arg(name: 'name', generators: databases)]),
          Subcommand(
              name: 'truncate',
              description: 'Truncate a database (defaults to the `default`)',
              args: [Arg(name: 'name', isOptional: true)])
        ],
        options: [
          Option(
              name: '--db',
              description:
                  'Use another database (default is the one set with \'MYSQL_DATABASE\')',
              args: [Arg(name: 'database')]),
          Option(
              name: '--db-user',
              description: 'Use another mysql username (default is \'root\')',
              args: [Arg(name: 'user')]),
          Option(
              name: '--db-password',
              description:
                  'Use another database password (default is the one set with \'MYSQL_ROOT_PASSWORD\', see fin config)',
              args: [Arg(name: 'password')]),
          Option(
              name: '--db-charset',
              description:
                  'Override charset when creating a database (default is utf8)',
              args: [Arg(name: 'charset')]),
          Option(
              name: '--db-collation',
              description:
                  'Override collation when creating a database (default is utf8_general_ci)',
              args: [Arg(name: 'collation')])
        ]),
    Subcommand(
        name: 'hosts',
        description: 'Hosts file commands: add, remove, list (fin help hosts)',
        subcommands: [
          Subcommand(
              name: 'add',
              description:
                  'Add hostname to hosts file. If none provided uses VIRTUAL_HOST',
              args: [Arg(name: 'hostname')]),
          Subcommand(
              name: 'remove',
              description:
                  'Remove lines containing hostname from hosts file. If none provided uses VIRTUAL_HOST',
              args: [Arg(name: 'hostname', generators: hosts)]),
          Subcommand(name: 'list', description: 'Output hosts file')
        ]),
    Subcommand(
        name: 'project',
        description: 'Manage project(s) (fin help project)',
        subcommands: [
          Subcommand(
              name: 'start',
              description: 'Start project services (alias: fin start)',
              priority: 65),
          Subcommand(
              name: 'up',
              description:
                  'Configuration re-read and start project services (alias: fin up)'),
          Subcommand(
              name: 'stop',
              description:
                  'Stop all or specified project services (alias: fin stop)',
              priority: 60,
              options: [
                Option(
                    name: ['--all', '-a'],
                    description: 'Stop all services on all Docksal projects')
              ],
              args: [
                Arg(
                    name: 'service',
                    generators: serviceGenerator,
                    isOptional: true)
              ]),
          Subcommand(
              name: 'status',
              description: 'List project services (alias: fin ps)'),
          Subcommand(
              name: 'restart',
              description: 'Restart project services (alias: fin restart)',
              priority: 75),
          Subcommand(
              name: 'reset',
              description:
                  'Recreate all or specified project services, their containers and volumes',
              priority: 70,
              args: [Arg(name: 'service', generators: serviceGenerator)]),
          Subcommand(
              name: ['remove', 'rm'],
              description:
                  'Remove all project services, networks and all their volumes, or specified services only',
              options: [
                Option(
                    name: ['--force', '-f'],
                    description:
                        'Do not ask for confirmation when deleting all project services')
              ],
              args: [Arg(name: 'service', generators: serviceGenerator)]),
          Subcommand(
              name: 'list',
              description: 'List running Docksal projects (alias: fin pl)',
              options: [
                Option(
                    name: ['--all', '-a'],
                    description: 'List all Docksal projects (stopped as well)')
              ]),
          Subcommand(
              name: 'create',
              description:
                  'Create a new project with a pre-configured boilerplate: Drupal, Wordpress, Magento, Laravel, Backdrop, Hugo, Gatsby, and others',
              options: [
                Option(
                    name: '--name',
                    description: 'Provide project name upfront',
                    args: [Arg(name: 'name')]),
                Option(
                    name: '--choice',
                    description: 'Provide software choice number upfront',
                    args: [Arg(name: '#')]),
                Option(
                    name: '--repo',
                    description:
                        'Clone from a custom repo: name (--choice is set to \'0\' automatically)',
                    args: [Arg(name: 'name')]),
                Option(
                    name: '--branch',
                    description:
                        'Clone from a custom repo: branch name (optional)',
                    args: [Arg(name: 'name')]),
                Option(name: ['--yes', '-y'], description: 'Avoid confirmation')
              ]),
          Subcommand(name: 'config', description: 'Show project configuration'),
          Subcommand(
              name: 'build',
              description:
                  'Build or rebuild services (alias for \'docker-compose build\')')
        ]),
    Subcommand(
        name: 'ssh-key',
        description: 'Manage SSH keys (fin help ssh-key)',
        subcommands: [
          Subcommand(
              name: 'add',
              description:
                  'Add a private SSH key from \$HOME/.ssh by file name. Adds all default keys (id_rsa/id_dsa/id_ecdsa/id_ed25519) if no file name is given',
              args: [
                Arg(
                    name: 'key-name',
                    isOptional: true,
                    generators: Generator(script: [
                      'bash',
                      '-c',
                      "\\command ls \$HOME/.ssh | \\command grep --color=never -v 'pub'",
                    ], splitOn: '\n'))
              ],
              options: [
                Option(
                    name: '--quiet',
                    description: 'Suppress key already loaded notifications')
              ]),
          Subcommand(
              name: 'ls',
              description: 'List SSH keys loaded in the docksal-ssh-agent'),
          Subcommand(
              name: 'rm',
              description: 'Remove all keys from the docksal-ssh-agent'),
          Subcommand(
              name: 'new',
              description: 'Generate a new SSH key pair',
              args: [Arg(name: 'key-name')])
        ]),
    Subcommand(
        name: 'system',
        description: 'Manage Docksal state (fin help system)',
        subcommands: [
          Subcommand(name: 'reset', description: 'Reset Docksal'),
          Subcommand(name: 'start', description: 'Start Docksal'),
          Subcommand(name: 'stop', description: 'Stop Docksal'),
          Subcommand(name: 'status', description: 'Check Docksal status')
        ]),
    Subcommand(
        name: 'vm',
        description: 'Manage Docksal VM (fin help vm)',
        subcommands: [
          Subcommand(
              name: 'start',
              description: 'Start the machine (create if needed)'),
          Subcommand(name: 'stop', description: 'Stop the machine'),
          Subcommand(name: 'kill', description: 'Forcibly stop the machine'),
          Subcommand(name: 'restart', description: 'Restart the machine'),
          Subcommand(name: 'status', description: 'Get the status'),
          Subcommand(
              name: 'ssh',
              description: 'Log into ssh or run a command via ssh',
              args: [Arg(name: 'command')]),
          Subcommand(
              name: 'remove',
              description: 'Remove Docksal machine and cleanup after it'),
          Subcommand(name: 'ip', description: 'Show the machine IP address'),
          Subcommand(name: 'ls', description: 'List all docker machines'),
          Subcommand(
              name: 'env',
              description:
                  'Display the commands to set up the shell for direct use of Docker client'),
          Subcommand(
              name: 'mount',
              description:
                  'Try remounting host filesystem (NFS on macOS, SMB on Windows)'),
          Subcommand(name: 'ram', description: 'Show memory size', args: [
            Arg(
                name: 'megabyte',
                description:
                    'Set memory size. Default is 1024 (requires vm restart)',
                isOptional: true)
          ]),
          Subcommand(name: 'hdd', description: 'Show disk size and usage'),
          Subcommand(name: 'stats', description: 'Show CPU and network usage'),
          Subcommand(
              name: 'regenerate-certs',
              description: 'Regenerate TLS certificates and restart the VM')
        ]),
    Subcommand(
        name: 'bash',
        description: 'Open shell into service\'s container. Defaults to cli',
        args: [Arg(name: 'service', generators: serviceGenerator)]),
    Subcommand(
        name: 'config',
        description: 'Show or change configuration (fin help config)',
        subcommands: [
          Subcommand(
              name: 'show',
              description: 'Display configuration for the current project',
              options: [
                Option(
                    name: '--show-secrets',
                    description:
                        'Do not truncate value of SECRET_* environment vars')
              ]),
          Subcommand(
              name: 'env',
              description: 'Display only environment variables section'),
          Subcommand(
              name: 'yml',
              description:
                  'Display static YML project config suitable for export (NOTE: SECRET_* values will not be hidden)'),
          Subcommand(
              name: 'generate',
              description:
                  'Generate empty Docksal configuration for the project',
              options: [
                Option(
                    name: '--stack',
                    description:
                        'Set non-default DOCKSAL_STACK during config generate',
                    args: [Arg(name: 'stack')]),
                Option(
                    name: '--docroot',
                    description:
                        'Set non-default DOCROOT during config generate',
                    args: [Arg(name: 'directory')])
              ]),
          Subcommand(
              name: 'set',
              description:
                  'Set value(s) for the variable(s) in project ENV file',
              options: [
                Option(
                    name: '--global', description: 'Set for global ENV file'),
                Option(
                    name: '--env',
                    description: 'Set in environment specific project ENV file',
                    args: [Arg(name: 'name', template: 'filepaths')])
              ],
              args: [
                Arg(name: 'VAR=VAL', isVariadic: true)
              ]),
          Subcommand(
              name: ['remove', 'rm'],
              description: 'Remove variable(s) from project ENV file',
              options: [
                Option(
                    name: '--global',
                    description: 'Remove from global ENV file'),
                Option(
                    name: '--env',
                    description:
                        'Remove from environment specific project ENV file',
                    args: [Arg(name: 'name')])
              ],
              args: [Arg(name: 'VAR', isVariadic: true)]),
          Subcommand(
              name: 'get',
              description:
                  'Get the value of the single variable from project ENV file',
              options: [
                Option(
                    name: '--global',
                    description: 'Get value from global ENV file'),
                Option(
                    name: '--env',
                    description:
                        'Get value from environment specific project ENV file',
                    args: [Arg(name: 'name', template: 'filepaths')])
              ],
              args: [
                Arg(name: 'VAR')
              ])
        ]),
    Subcommand(
        name: 'exec',
        description: 'Execute a command or a script in cli',
        args: [Arg(name: 'command|file')]),
    Subcommand(
        name: 'exec-url',
        description:
            'Download script from URL and run it on host (URL should be public)',
        args: [Arg(name: 'url')]),
    Subcommand(
        name: 'init',
        description:
            'Initialize a project (override it with your own automation, see fin help init)'),
    Subcommand(
        name: 'image',
        description:
            'Image management commands: registry, save, load (fin help image)',
        subcommands: [
          Subcommand(
              name: 'registry',
              description: 'Show all Docksal images on Docker Hub',
              args: [
                Arg(
                    name: 'image name',
                    description: 'Show all tags for a certain image',
                    isOptional: true)
              ]),
          Subcommand(
              name: 'save',
              description: 'Save docker images into a tar archive',
              options: [
                Option(
                    name: '--system',
                    description: 'Save Docksal system images',
                    exclusiveOn: ['--project', '--all']),
                Option(
                    name: '--project',
                    description: 'Save current project\'s images',
                    exclusiveOn: ['--system', '--all']),
                Option(
                    name: '--all',
                    description: 'Save all images available on the host',
                    exclusiveOn: ['--system', '--project'])
              ]),
          Subcommand(
              name: 'load',
              description: 'Load docker images from a tar archive',
              args: [Arg(name: 'file', template: 'filepaths')])
        ]),
    Subcommand(
        name: 'logs',
        description:
            'Show service logs (e.g., Apache logs, MySQL logs) and Unison logs (fin help logs)',
        options: [
          Option(name: ['-f', '--follow'], description: 'Follow log output'),
          Option(name: '--no-color', description: 'Produce monochrome output'),
          Option(
              name: '--no-log-prefix',
              description: 'Don\'t print prefix in logs'),
          Option(
              name: '--since',
              description:
                  'Show logs since timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)',
              args: [Arg(name: 'string')]),
          Option(
              name: '--tail',
              description:
                  'Number of lines to show from the end of the logs for each container. (default "all")',
              args: [Arg(name: 'string')]),
          Option(name: ['-t', '--timestamps'], description: 'Show timestamps'),
          Option(
              name: '--until',
              description:
                  'Show logs before a timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)',
              args: [Arg(name: 'string')])
        ],
        args: [
          Arg(name: 'service', generators: serviceGenerator)
        ]),
    Subcommand(
        name: ['run-cli', 'rc'],
        description:
            'Run a command in a standalone cli container in the current directory (fin help run-cli)',
        options: [
          Option(
              name: '--clean',
              description:
                  'Run command with a non-persistent \$HOME directory'),
          Option(
              name: '--clenup',
              description:
                  'Clean the persistent \$HOME directory and run command'),
          Option(name: '--debug', description: 'Print container debug output'),
          Option(
              name: '--image',
              description: 'Override default container image',
              args: [Arg(name: 'IMAGE')]),
          Option(
              name: '-e',
              description: 'Pass environment variable(s) to the container',
              args: [Arg(name: 'VAR=VALUE')]),
          Option(
              name: '-T',
              description:
                  'Disable pseudo-tty allocation (useful to get clean stdout)')
        ],
        args: [Arg(name: 'command')]),
    Subcommand(
        name: 'share',
        description:
            'Create temporary public url for current project using ngrok',
        options: [
          Option(
              name: '--host',
              description:
                  'Override a hostname for ngrok to route to (default is \$VIRTUAL_HOST)',
              args: [Arg(name: 'host')])
        ]),
    Subcommand(
        name: 'share-v2',
        description:
            'Create a temporary public URL for the project using Cloudflare Tunnel',
        subcommands: [
          Subcommand(
              name: 'start', description: 'Start tunnel and print public URL'),
          Subcommand(name: 'stop', description: 'Stop tunnel'),
          Subcommand(
              name: 'status',
              description: 'Prints tunnel status and public URL (if Active)'),
          Subcommand(name: 'url', description: 'Prints tunnel public URL'),
          Subcommand(name: 'logs', description: 'Prints tunnel container logs')
        ]),
    Subcommand(
        name: 'vhosts',
        description:
            'List all virtual *.docksal hosts registered in Docksal proxy'),
    Subcommand(
        name: ['docker', 'd'],
        description: 'Run Docker commands directly',
        loadSpec: 'docker'),
    Subcommand(
        name: ['docker-compose', 'dc'],
        description: 'Run Docker Compose commands directly',
        loadSpec: 'docker-compose'),
    Subcommand(
        name: ['docker-machine', 'dm'],
        description: 'Run Docker Machine commands directly',
        args: [Arg(name: 'command')]),
    Subcommand(
        name: 'composer',
        description: 'Run Composer commands',
        args: [Arg(name: 'command')]),
    Subcommand(
        name: 'drush',
        description: 'Drush command (requires Drupal)',
        args: [Arg(name: 'command')]),
    Subcommand(
        name: 'drupal',
        description: 'Drupal Console command (requires Drupal 8)',
        args: [Arg(name: 'command')]),
    Subcommand(
        name: 'platform',
        description: 'Platform.sh\'s CLI (requires docksal/cli 2.3+)',
        args: [Arg(name: 'command')]),
    Subcommand(
        name: 'terminus',
        description: 'Pantheon\'s Terminus (requires docksal/cli 2.1+)',
        args: [Arg(name: 'command')]),
    Subcommand(
        name: 'wp',
        description: 'WordPress CLI command (requires WordPress)',
        args: [Arg(name: 'command')]),
    Subcommand(
        name: 'cleanup',
        description:
            'Remove all unused Docker images, unused Docksal volumes and containers',
        options: [
          Option(name: '--images', description: 'Docker images cleanup Wizard'),
          Option(
              name: '--hard',
              description:
                  'Remove ALL stopped containers even unrelated to Docksal (potentially destructive operation)')
        ]),
    Subcommand(
        name: 'diagnose',
        description:
            'Show diagnostic information for troubleshooting and bug reporting'),
    Subcommand(name: 'sysinfo', description: 'Show system information'),
    Subcommand(name: 'update', description: 'Update Docksal', options: [
      Option(
          name: 'DOCKSAL_VERSION',
          description: 'Update Docksal to the latest development version',
          args: [Arg(name: 'develop')])
    ]),
    Subcommand(
        name: ['version', '--version', 'v', '-v'],
        description: 'Print fin version. [v, -v] prints short version')
  ],
  generateSpec:
      (List<String> tokens, ExecuteCommandFunction executeShellCommand) async {
    final newSubcommands = <Subcommand>[];
    try {
      final result = await executeShellCommand(const ExecuteCommandInput(
        command: 'bash',
        args: ['-c', 'ls -1 ~/.docksal/commands/'],
      ));
      final stdout = result.stdout;
      for (final command in stdout.split('\n')) {
        if (command.trim().isNotEmpty) {
          newSubcommands.add(Subcommand(
            name: command.trim(),
            priority: 55,
          ));
        }
      }
    } catch (_) {}
    return FigSpec(
      name: 'fin',
      subcommands: newSubcommands,
    );
  },
);
