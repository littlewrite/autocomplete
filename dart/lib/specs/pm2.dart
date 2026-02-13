// Auto-generated from TypeScript source: pm2.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> sharedOptions = [

  Option(
    name: ['-V', '--version'],
    description: 'Outputs the version number'
  ),
  Option(
    name: '-v',
    description: 'Gets version'
  ),
  Option(
    name: ['-s', '--silent'],
    description: 'Hides all messages'
  ),
  Option(
    name: ['-m', '--mini-list'],
    description: 'Displays a compacted list without formatting'
  ),
  Option(
    name: ['-f', '--force'],
    description: 'Forces actions'
  ),
  Option(
    name: '--disable-logs',
    description: 'Do not write logs'
  ),
  Option(
    name: ['-n', '--name'],
    description: 'Sets a name for script'
  ),
  Option(
    name: ['-i', '--instances'],
    description: 'Launches [number] instances (for networked app)(load balanced)'
  ),
  Option(
    name: '--parallel',
    description: 'Number of parallel actions (for restart/reload)'
  ),
  Option(
    name: ['-l', '--log'],
    description: 'Specifies entire log file (error and out are both included)',
    args: [
      Arg(
      isOptional: true
    )
    ]
  ),
  Option(
    name: ['-o', '--output'],
    description: 'Specifies out log file'
  ),
  Option(
    name: ['-e', '--error'],
    description: 'Specifies error log file'
  ),
  Option(
    name: ['-p', '--pid'],
    description: 'Specify pid file',
    args: [
      Arg(
      name: 'pid',
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: ['-k', '--kill-timeout'],
    description: 'Delays before sending final SIGKILL signal to process',
    args: [
      Arg(
      name: 'delay'
    )
    ]
  ),
  Option(
    name: '--listen-timeout',
    description: 'Listen timeout on application reload',
    args: [
      Arg(
      name: 'delay'
    )
    ]
  ),
  Option(
    name: '--max-memory-restart',
    description: 'Specify max memory amount used to autorestart (in octet or use syntax like 100M)',
    args: [
      Arg(
      name: 'memory'
    )
    ]
  ),
  Option(
    name: '--restart-delay',
    description: 'Specify a delay between restarts (in milliseconds)',
    args: [
      Arg(
      name: 'delay'
    )
    ]
  ),
  Option(
    name: '--env',
    description: 'Specify environment to get specific env variables',
    args: [
      Arg(
      name: 'Environment Name'
    )
    ]
  ),
  Option(
    name: '--log-type',
    description: 'Specify log output style (raw by default, json optional)',
    args: [
      Arg(
      name: 'type',
      defaultValue: 'raw'
    )
    ]
  ),
  Option(
    name: ['-x', '--execute-command'],
    description: 'Execute a program using fork system'
  ),
  Option(
    name: '--max-restarts',
    description: 'Only Restart the script COUNT times',
    args: [
      Arg(
      name: 'Count',
      isOptional: true
    )
    ]
  ),
  Option(
    name: ['-u', '--user'],
    description: 'Defines user when generating startup script',
    args: [
      Arg(
      name: 'username'
    )
    ]
  ),
  Option(
    name: '--uid',
    description: 'Runs target script with <uid> rights',
    args: [
      Arg(
      name: 'uid'
    )
    ]
  ),
  Option(
    name: '--gid',
    description: 'Runs target script with <gid> rights',
    args: [
      Arg(
      name: 'gid'
    )
    ]
  ),
  Option(
    name: '--cwd',
    description: 'Runs target script as <username>'
  ),
  Option(
    name: '--hp',
    description: 'Defines home path when generating startup script',
    args: [
      Arg(
      name: 'home path',
      template: 'folders'
    )
    ]
  ),
  Option(
    name: '--wait-ip',
    description: 'Overrides systemd script to wait for full internet connectivity to launch pm2'
  ),
  Option(
    name: '--service-name',
    description: 'Defines service name when generating startup script'
  ),
  Option(
    name: ['-c', '--cron'],
    description: 'Restarts a running process based on a cron pattern',
    args: [
      Arg(
      name: 'Cron Pattern'
    )
    ]
  ),
  Option(
    name: ['-w', '--write'],
    description: 'Writes configuration in local folder'
  ),
  Option(
    name: '--interpreter',
    description: 'The interpreter pm2 should use for executing app (bash, python…)',
    args: [
      Arg(
      name: 'interpreter'
    )
    ]
  ),
  Option(
    name: '--interpreter-args',
    description: 'Interprets options (alias of –node-args)',
    args: [
      Arg(
      name: 'Arguments'
    )
    ]
  ),
  Option(
    name: '--log-date-format',
    description: 'Adds custom prefix timestamp to logs',
    args: [
      Arg(
      name: 'Date Format'
    )
    ]
  ),
  Option(
    name: '--no-daemon',
    description: 'Runs pm2 daemon in the foreground if it doesn’t exist already'
  ),
  Option(
    name: ['-a', '--update-env'],
    description: 'Updates environment on restart/reload (-a <=> apply)'
  ),
  Option(
    name: '–-source-map-support',
    description: 'Force source map support'
  ),
  Option(
    name: '–-only',
    description: 'With json declaration, allow to only act on one application'
  ),
  Option(
    name: '–-disable-source-map-support',
    description: 'Force source map support'
  ),
  Option(
    name: '–-wait-ready',
    description: 'Asks pm2 to wait for ready event from your app'
  ),
  Option(
    name: '–-merge-logs',
    description: 'Merges logs from different instances but keep error and out separated'
  ),
  Option(
    name: '–-watch',
    description: 'Watches application folder for changes (default: )',
    args: [
      Arg(
      name: 'paths',
      template: ['folders'],
      isVariadic: true
    )
    ]
  ),
  Option(
    name: '–-ignore-watch',
    description: 'Folder/files to be ignored watching',
    args: [
      Arg(
      name: 'Folder or Files',
      template: ['folders', 'filepaths'],
      isVariadic: true
    )
    ]
  ),
  Option(
    name: '–-node-args',
    description: 'Space delimited arguments to pass to node in cluster mode',
    args: [
      Arg(
      name: 'Node Args',
      description: '–node-args=`–debug=7001 –trace-deprecation`'
    )
    ]
  ),
  Option(
    name: '–-no-color',
    description: 'Skip colors'
  ),
  Option(
    name: '–-no-vizion',
    description: 'Starts an app without vizion feature (versioning control)'
  ),
  Option(
    name: '–-no-autorestart',
    description: 'Starts an app without automatic restart'
  ),
  Option(
    name: '–-no-treekill',
    description: 'Only kills the main process, not detached children'
  ),
  Option(
    name: '–-no-pmx',
    description: 'Starts an app without apm'
  ),
  Option(
    name: '–-no-automation',
    description: 'Starts an app without apm'
  ),
  Option(
    name: '–-trace',
    description: 'Enables transaction tracing with km'
  ),
  Option(
    name: '–-disable-trace',
    description: 'Disables transaction tracing with km'
  ),
  Option(
    name: '–-attach',
    description: 'Attaches logging after your start/restart/stop/reload'
  ),
  Option(
    name: '–-sort',
    description: 'Sort process according to field’s name',
    args: [
      Arg(
      name: 'field name',
      description: 'Field_name:sort'
    )
    ]
  ),
  Option(
    name: '–-v8',
    description: 'Enables v8 data collecting'
  ),
  Option(
    name: '–-event-loop-inspector',
    description: 'Enables event-loop-inspector dump in apm'
  ),
  Option(
    name: '–-deep-monitoring',
    description: 'Enables all monitoring tools (equivalent to –v8 –event-loop-inspector –trace)'
  ),
  Option(
    name: ['-h', '–-help'],
    description: 'Outputs usage information'
  )
];

/// Completion spec for `pm2` CLI
final FigSpec pm2Spec = FigSpec(
  name: 'pm2',
  description: 'Daemon process manager',
  subcommands: [

    Subcommand(
      name: 'start',
      description: 'Starts and daemonizes an app',
      options: sharedOptions,
      args: [
        Arg(
        name: 'file, json, stdin, app name, pm id, etc'
      )
      ]
    ),
    Subcommand(
      name: 'trigger',
      description: 'Deploy your json',
      args: [

        Arg(
          name: 'Proc Name'
        ),
        Arg(
          name: 'Action Name'
        ),
        Arg(
          name: 'Params',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'Deploy your json',
      args: [
        Arg(
        name: 'File or environment',
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'startOrRestart',
      description: 'Start or restart JSON file'
    ),
    Subcommand(
      name: 'startOrReload',
      description: 'Start or gracefully reload JSON file'
    ),
    Subcommand(
      name: 'pid',
      description: 'Return pid of the specified app or all',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'startOrGracefulReload',
      description: 'Start or gracefully reolad JSON file'
    ),
    Subcommand(
      name: 'stop',
      description: 'Stop a process',
      options: sharedOptions,
      args: [
        Arg(
        name: 'id, name, all, json, stdin, etc'
      )
      ]
    ),
    Subcommand(
      name: 'restart',
      description: 'Restart a process',
      options: sharedOptions,
      args: [
        Arg(
        name: 'id, name, all, json, stdin, etc'
      )
      ]
    ),
    Subcommand(
      name: 'scale',
      description: 'Scale up/down a process in cluster mode depending on the `number` param',
      args: []
    ),
    Subcommand(
      name: 'snapshot',
      description: 'Snapshot PM2 memory'
    ),
    Subcommand(
      name: 'profile',
      description: 'Profile CPU',
      args: [
        Arg(
        name: 'command'
      )
      ]
    ),
    Subcommand(
      name: 'reload',
      description: 'Reload processes (for apps using HTTP/HTTPS)',
      args: [
        Arg(
        name: 'name or all'
      )
      ]
    ),
    Subcommand(
      name: 'gracefulReload',
      description: 'Gracefully reload a process. Send a “shutdown” message to close all connections',
      args: [
        Arg(
        name: 'name or all'
      )
      ]
    ),
    Subcommand(
      name: 'id',
      description: 'Get process id by name'
    ),
    Subcommand(
      name: 'delete',
      description: 'Stops and deletes a process from pm2 process list',
      args: [
        Arg(
        name: 'name, id, script, all, json, stdin, etc'
      )
      ]
    ),
    Subcommand(
      name: 'sendSignal',
      description: 'Send a system signal to the target process',
      args: [

        Arg(
          name: 'signal'
        ),
        Arg(
          name: 'pm2_id or name'
        )
      ]
    ),
    Subcommand(
      name: 'ping',
      description: 'Ping pm2 daemon - if not it will launch up'
    ),
    Subcommand(
      name: 'updatePM2',
      description: 'Update in-memory PM2 with local PM2'
    ),
    Subcommand(
      name: 'update',
      description: '(alias) update in-memory PM2 with local PM2'
    ),
    Subcommand(
      name: ['install', 'module:install'],
      description: 'Install or update a module and run it forever',
      options: sharedOptions,
      args: [
        Arg(
        name: 'module or git://',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'module:generate',
      description: 'Generate a sample module in current folder',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: ['uninstall', 'module:uninstall'],
      description: 'Stop and uninstall a module',
      args: [
        Arg(
        name: 'module'
      )
      ]
    ),
    Subcommand(
      name: ['publish', 'module:publish'],
      description: 'Publish the module you are currently on'
    ),
    Subcommand(
      name: 'set',
      description: 'Sets the specified config',
      args: [

        Arg(
          isOptional: true
        ),
        Arg(
          name: 'value',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'multiset',
      description: 'Multiset eg `key1 val1 key2 val2`',
      args: [
        Arg(
        name: 'key value',
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'get',
      description: 'Get value for the specified key',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'conf',
      description: 'Get / set module config values',
      args: [

        Arg(
          isOptional: true
        ),
        Arg(
          name: 'value',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Get / set module config values',
      args: [

        Arg(
          name: 'value',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'unset',
      description: 'Clears the specified config key'
    ),
    Subcommand(
      name: 'report',
      description: 'Give a full pm2 report for https://github.com/Unitech/pm2/issues'
    ),
    Subcommand(
      name: ['link', 'interact'],
      description: 'Linking action to keymetrics.io',
      options: sharedOptions,
      args: [

        Arg(
          name: 'secret',
          isOptional: true
        ),
        Arg(
          name: 'public',
          isOptional: true
        ),
        Arg(
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'unlink',
      description: 'Linking action to keymetrics.io'
    ),
    Subcommand(
      name: 'unmonitor',
      description: 'Unmonitor target process'
    ),
    Subcommand(
      name: 'monitor',
      description: '<Unm>onitor target process'
    ),
    Subcommand(
      name: 'open',
      description: 'Open dashboard in browser'
    ),
    Subcommand(
      name: 'register',
      description: 'Create an account on keymetrics'
    ),
    Subcommand(
      name: 'login',
      description: 'Login to keymetrics and link current PM2'
    ),
    Subcommand(
      name: 'web',
      description: 'Launch a health API on 0.0.0.0:9615'
    ),
    Subcommand(
      name: ['dump', 'save'],
      description: 'Dump all processes for resurrecting them later'
    ),
    Subcommand(
      name: 'send',
      description: 'Send stdin to pm id',
      args: [

        Arg(
          name: 'pm id'
        ),
        Arg(
          name: 'line'
        )
      ]
    ),
    Subcommand(
      name: 'attach',
      description: 'Attach stdin/stdout to application identified by pm id',
      args: [

        Arg(
          name: 'pm id'
        ),
        Arg(
          name: 'command',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'resurrect',
      description: 'Resurrect previously dumped processes'
    ),
    Subcommand(
      name: 'unstartup',
      description: 'Disable and clear auto startup'
    ),
    Subcommand(
      name: 'startup',
      description: 'Setup script for pm2 at boot'
    ),
    Subcommand(
      name: 'logrotate',
      description: 'Copy default logrotate configuration'
    ),
    Subcommand(
      name: ['ecosystem', 'init'],
      description: 'Generate a process conf file',
      args: [
        Arg(
        name: 'mode',
        isOptional: true,
        suggestions: [

          FigSuggestion(name: 'null'),
          FigSuggestion(name: 'simple')
        ]
      )
      ]
    ),
    Subcommand(
      name: 'reset',
      description: 'Reset counters for process',
      args: [
        Arg(
        name: 'name, id, or all'
      )
      ]
    ),
    Subcommand(
      name: 'describe',
      description: 'Describe all parameters of a process id',
      args: [
        Arg(
        name: 'id'
      )
      ]
    ),
    Subcommand(
      name: ['desc', 'info', 'show'],
      description: '(alias) Describe all parameters of a process id',
      args: [
        Arg(
        name: 'id'
      )
      ]
    ),
    Subcommand(
      name: ['list', 'ls'],
      description: 'List all processes'
    ),
    Subcommand(
      name: ['l', 'ps', 'status'],
      description: '(alias) list all processes'
    ),
    Subcommand(
      name: 'jlist',
      description: 'List all processes in JSON format'
    ),
    Subcommand(
      name: 'prettylist',
      description: 'Print json in a prettified JSON'
    ),
    Subcommand(
      name: 'monit',
      description: 'Launch termcaps monitoring'
    ),
    Subcommand(
      name: 'imonit',
      description: 'Launch legacy termcaps monitoring'
    ),
    Subcommand(
      name: ['dashboard', 'dash'],
      description: 'Launch dashboard with monitoring and logs'
    ),
    Subcommand(
      name: 'flush',
      description: 'Flush logs'
    ),
    Subcommand(
      name: 'reloadLogs',
      description: 'Reload all logs'
    ),
    Subcommand(
      name: 'logs',
      description: 'Stream logs logs file',
      options: sharedOptions,
      args: [
        Arg(
        name: 'id or name'
      )
      ]
    ),
    Subcommand(
      name: 'kill',
      description: 'Kill daemon'
    ),
    Subcommand(
      name: 'pull',
      description: 'Updates repository for a given app',
      args: [

        Arg(
          name: 'commit id',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'forward',
      description: 'Updates repository to the next commit for a given app'
    ),
    Subcommand(
      name: 'backward',
      description: 'Downgrades repository to the previous commit for a given app'
    ),
    Subcommand(
      name: 'gc',
      description: 'Force PM2 to trigger garbage collection'
    ),
    Subcommand(
      name: 'deepUpdate',
      description: 'Performs a deep update of PM2'
    ),
    Subcommand(
      name: ['serve', 'expose'],
      description: 'Serves a directory over http via port',
      args: [

        Arg(
          name: 'path',
          isOptional: true
        ),
        Arg(
          name: 'port',
          isOptional: true
        )
      ]
    )
  ],
  options: sharedOptions
);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (generators)
// const generators: Record<string, Fig.Generator> = {
//   jsonFileGenerator: filepaths({ extensions: ["json"] }),
// };
// TS_GENERATOR_BLOCK_END

