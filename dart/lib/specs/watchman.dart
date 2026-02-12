// Auto-generated from TypeScript source: watchman.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `watchman` CLI
final FigSpec watchmanSpec = FigSpec(
  name: 'watchman',
  description: 'A file watching service',
  subcommands: [
    Subcommand(
      name: 'clock',
      description: 'Returns the current clock value for a watched root',
      args: [
        Arg(
        name: 'path',
        description: 'The path to directory',
        template: 'folders'
      )
      ]
    ),
    Subcommand(
      name: 'find',
      description: 'Finds all files that match the optional list of patterns under the specified dir',
      args: [
        Arg(
        name: 'path',
        description: 'The path to directory',
        isVariadic: true,
        template: 'folders'
      )
      ]
    ),
    Subcommand(
      name: 'flush-subscriptions',
      description: 'This is designed to be used by interactive programs that have a background process or daemon maintaining a subscription to Watchman'
    ),
    Subcommand(
      name: 'get-config',
      description: 'Returns the .watchmanconfig for the root',
      subcommands: [
        Subcommand(
          name: 'path',
          description: 'The path to root'
        )
      ]
    ),
    Subcommand(
      name: 'get-sockname',
      description: 'Get socket path'
    ),
    Subcommand(
      name: 'list-capabilities',
      description: 'Returns the full list of supported capabilities offered by the watchman server'
    ),
    Subcommand(
      name: 'log',
      description: 'Generates a log line in the watchman log',
      args: [
        Arg(
        name: 'level',
        description: 'The log level',
        suggestions: [
          FigSuggestion(name: 'debug'),
          FigSuggestion(name: 'error'),
          FigSuggestion(name: 'off')
        ]
      )
      ]
    ),
    Subcommand(
      name: 'log-level',
      description: 'Changes the log level of your connection to the watchman service',
      args: [
        Arg(
        name: 'level',
        description: 'The log level',
        suggestions: [
          FigSuggestion(name: 'debug'),
          FigSuggestion(name: 'error'),
          FigSuggestion(name: 'off')
        ]
      )
      ]
    ),
    Subcommand(
      name: 'query',
      description: 'Executes a query against the specified root'
    ),
    Subcommand(
      name: 'shutdown-server',
      description: 'This causes your watchman service to exit with a normal status code'
    ),
    Subcommand(
      name: 'since',
      description: 'Finds all files that were modified since the specified clockspec that match the optional list of patterns',
      args: [
        Arg(
        name: 'path',
        description: 'The path to directory',
        template: 'folders'
      )
      ]
    ),
    Subcommand(
      name: 'state-enter',
      description: 'This causes a watch to be marked as being in a particular named state'
    ),
    Subcommand(
      name: 'state-leave',
      description: 'This causes a watch to no longer be marked as being in a particular named state'
    ),
    Subcommand(
      name: 'subscribe',
      description: 'Subscribes to changes against a specified root and requests that they be sent to the client via its connection'
    ),
    Subcommand(
      name: 'trigger',
      description: 'This will create or replace a trigger',
      args: [
        Arg(
        name: 'path',
        description: 'The path to directory',
        template: 'folders'
      )
      ]
    ),
    Subcommand(
      name: 'trigger-del',
      description: 'Deletes a named trigger from the list of registered triggers'
    ),
    Subcommand(
      name: 'trigger-list',
      description: 'Returns the set of registered triggers associated with a root directory'
    ),
    Subcommand(
      name: 'unsubscribe',
      description: 'Cancels a named subscription against the specified root'
    ),
    Subcommand(
      name: 'version',
      description: 'The version and build information for the currently running watchman service'
    ),
    Subcommand(
      name: 'watch-del',
      description: 'Removes a watch and any associated triggers',
      args: [
        Arg(
        name: 'path',
        description: 'The path to directory',
        template: 'folders'
      )
      ]
    ),
    Subcommand(
      name: 'watch-del-all',
      description: 'Removes all watches and associated triggers'
    ),
    Subcommand(
      name: 'watch-list',
      description: 'Returns a list of watched dirs'
    ),
    Subcommand(
      name: 'watch-project',
      description: 'Requests that the project containing the requested dir is watched for changes'
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for watchman'
    ),
    Option(
      name: '--inetd',
      description: 'Spawning from an inetd style supervisor'
    ),
    Option(
      name: ['-S', '--no-site-spawner'],
      description: 'Don\'t use the site or system spawner'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Show version number for watchman'
    ),
    Option(
      name: '--named-pipe-path',
      description: 'Specify alternate named pipe path',
      args: [
        Arg(
        name: 'path',
        description: 'The alternate named pipe path'
      )
      ]
    ),
    Option(
      name: '-u',
      description: 'Specify alternate unix domain socket path',
      args: [
        Arg(
        name: 'path',
        description: 'The alternate unix domain socket path'
      )
      ]
    ),
    Option(
      name: '--unix-listener-path',
      description: 'Specify alternate unix domain socket path',
      args: [
        Arg(
        name: 'path',
        description: 'The alernate unix domain socket path'
      )
      ]
    ),
    Option(
      name: '-o',
      description: 'Specify the path to logfile',
      args: [
        Arg(
        name: 'path',
        description: 'The path to logfile'
      )
      ]
    ),
    Option(
      name: '--logfile',
      description: 'Specify the path to logfile',
      args: [
        Arg(
        name: 'path',
        description: 'The path to logfile'
      )
      ]
    ),
    Option(
      name: '--log-level',
      description: 'Set the log level',
      args: [
        Arg(
        name: 'level',
        description: 'The log level',
        suggestions: [
          FigSuggestion(name: '0'),
          FigSuggestion(name: '1'),
          FigSuggestion(name: '2')
        ]
      )
      ]
    ),
    Option(
      name: '--pidfile',
      description: 'Specify path to pidfile'
    ),
    Option(
      name: ['-p', '--persistent'],
      description: 'Persist and wait for further responses'
    ),
    Option(
      name: ['-n', '--no-save-state'],
      description: 'Don\'t save state between invocations'
    ),
    Option(
      name: '--statefile',
      description: 'Specify path to file to hold watch and trigger state',
      args: [
        Arg(
        name: 'path',
        description: 'The path to file to hold watch and trigger state'
      )
      ]
    ),
    Option(
      name: ['-j', '--json-command'],
      description: 'Instead of parsing CLI arguments, take a single json object from stdin'
    ),
    Option(
      name: '--output-encoding',
      description: 'CLI output encoding',
      args: [
        Arg(
        name: 'encoding',
        description: 'The output encoding',
        suggestions: [
          FigSuggestion(name: 'json'),
          FigSuggestion(name: 'bser')
        ]
      )
      ]
    ),
    Option(
      name: '--server-encoding',
      description: 'CLI<->server encoding',
      args: [
        Arg(
        name: 'encoding',
        description: 'The server encoding',
        suggestions: [
          FigSuggestion(name: 'bser'),
          FigSuggestion(name: 'json')
        ]
      )
      ]
    ),
    Option(
      name: ['-f', '--foreground'],
      description: 'Run the service in the foreground'
    ),
    Option(
      name: '--no-pretty',
      description: 'Don\'t pretty print JSON'
    ),
    Option(
      name: '--no-spawn',
      description: 'Don\'t try to start the service if it is not available'
    ),
    Option(
      name: '--no-local',
      description: 'When no-spawn is enabled, don\'t try to handle request in client mode if service is unavailable'
    )
  ]
);
