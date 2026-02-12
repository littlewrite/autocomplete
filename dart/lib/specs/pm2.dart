// Auto-generated from TypeScript source: pm2.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pm2` CLI
final FigSpec pm2Spec = FigSpec(
  name: 'pm2',
  description: 'Daemon process manager',
  subcommands: [
    Subcommand(
      name: 'start',
      description: 'Starts and daemonizes an app',
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
      args: [
        Arg(
        name: 'id, name, all, json, stdin, etc'
      )
      ]
    ),
    Subcommand(
      name: 'restart',
      description: 'Restart a process',
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
  ]
);
