// Auto-generated from TypeScript source: browser-sync.ts
// Generated at: 2026-02-16
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `browser-sync` CLI
final FigSpec browserSyncSpec = FigSpec(
    name: 'browser-sync',
    description:
        'Keep multiple browsers & devices in sync when building websites',
    options: [
      Option(name: '--version', description: 'Show version number'),
      Option(name: '--help', description: 'Show help', isPersistent: true)
    ],
    args: [
      Arg(
          name: 'site or directory',
          template: 'folders',
          isOptional: true,
          isVariadic: true)
    ],
    subcommands: [
      Subcommand(name: 'start', description: 'Start Browsersync', options: [
        Option(
            name: ['-s', '--server'],
            description: 'Run a Local server (uses your cwd as the web root)'),
        Option(
            name: '--cwd',
            description: 'Working directory',
            args: [Arg(name: 'directory', template: 'folder')]),
        Option(
            name: '--json',
            description: 'If true, certain logs will output as json only'),
        Option(
            name: ['--serveStatic', '--ss'],
            description: 'Directories to serve static files from',
            args: [Arg(name: 'directories', template: 'folder')]),
        Option(
            name: '--port',
            description: 'Specify a port to use',
            args: [Arg(name: 'por')]),
        Option(
            name: ['-p', '--proxy'], description: 'Proxy an existing server'),
        Option(
            name: '--ws',
            description: 'Proxy mode only - enable websocket proxying'),
        Option(
            name: ['-b', '--browser'],
            description: 'Choose which browser should be auto-opened',
            args: [Arg(name: 'nam')]),
        Option(name: ['-w', '--watch'], description: 'Watch files'),
        Option(
            name: '--ignore',
            description: 'Ignore patterns for file watchers',
            args: [Arg(name: 'pattern')]),
        Option(
            name: ['-f', '--files'],
            description: 'File paths to watch',
            args: [Arg(name: 'paths', template: 'filepath')]),
        Option(
            name: '--index',
            description: 'Specify which file should be used as the index page',
            args: [Arg(name: 'file', template: 'filepath')]),
        Option(
            name: '--plugins',
            description: 'Load Browsersync plugins',
            args: [Arg(name: 'plugin')]),
        Option(
            name: '--extensions',
            description: 'Specify file extension fallbacks',
            args: [Arg(name: 'extension')]),
        Option(
            name: '--startPath',
            description: 'Specify the start path for the opened browser',
            args: [Arg(name: 'start-pat')]),
        Option(
            name: '--single',
            description:
                'If true, the connect-history-api-fallback middleware will be added'),
        Option(
            name: '--https', description: 'Enable SSL for local development'),
        Option(
            name: '--directory',
            description: 'Show a directory listing for the server'),
        Option(name: '--xip', description: 'Use xip.io domain routing'),
        Option(name: '--tunnel', description: 'Use a public URL'),
        Option(
            name: '--open',
            description:
                'Choose which URL is auto-opened (local, external or tunnel), or provide a url',
            args: [
              Arg(name: 'string', suggestions: [
                FigSuggestion(name: 'local'),
                FigSuggestion(name: 'external'),
                FigSuggestion(name: 'tunnel')
              ])
            ]),
        Option(
            name: '--cors',
            description: 'Add Access Control headers to every request'),
        Option(
            name: ['-c', '--config'],
            description: 'Specify a path to a configuration file',
            args: [Arg(name: 'path', template: 'filepath')]),
        Option(
            name: '--host',
            description: 'Specify a hostname to use',
            args: [Arg(name: 'hostnam')]),
        Option(
            name: '--listen',
            description:
                'Specify a hostname bind to (this will prevent binding to all interfaces)',
            args: [Arg(name: 'hostname')]),
        Option(
            name: '--logLevel',
            description: 'Set the logger output level (silent, info or debug)',
            args: [
              Arg(name: 'level', suggestions: [
                FigSuggestion(name: 'silent'),
                FigSuggestion(name: 'info'),
                FigSuggestion(name: 'debug')
              ])
            ]),
        Option(
            name: '--reload-delay',
            description:
                'Time in milliseconds to delay the reload event following file changes',
            args: [Arg(name: 'millisecond')]),
        Option(
            name: '--reload-debounce',
            description:
                'Restrict the frequency in which browser:reload events can be emitted to connected clients',
            args: [Arg(name: 'millisecond')]),
        Option(
            name: '--ui-port',
            description: 'Specify a port for the UI to use',
            args: [Arg(name: 'por')]),
        Option(
            name: '--watchEvents',
            description: 'Specify which file events to respond to',
            args: [Arg(name: 'event')]),
        Option(
            name: '--no-notify',
            description: 'Disable the notify element in browsers'),
        Option(
            name: '--no-open', description: 'Don\'t open a new browser window'),
        Option(
            name: '--no-snippet', description: 'Disable the snippet injection'),
        Option(name: '--no-online', description: 'Force offline usage'),
        Option(name: '--no-ui', description: 'Don\'t start the user interface'),
        Option(name: '--no-ghost-mode', description: 'Disable Ghost Mode'),
        Option(
            name: '--no-inject-changes',
            description: 'Reload on every file change'),
        Option(
            name: '--no-reload-on-restart',
            description: 'Don\'t auto-reload all browsers following a restart')
      ]),
      Subcommand(
          name: 'init',
          description: 'Create a configuration file',
          options: [
            Option(
                name: '--cwd',
                description: 'Working directory',
                args: [Arg(name: 'string', template: 'folder')])
          ]),
      Subcommand(
          name: 'reload',
          description: 'Send a reload event over HTTP protocol',
          options: [
            Option(
                name: ['-f', '--files'],
                description: 'File paths to reload',
                args: [Arg(name: 'paths', template: 'filepath')]),
            Option(
                name: ['-p', '--port'],
                description: 'Target a running instance by port number',
                args: [Arg(name: 'por')]),
            Option(
                name: ['-u', '--url'],
                description:
                    'Provide the full URL to the running browsersync isntance',
                args: [Arg(name: 'ur')]),
            Option(
                name: '--cwd',
                description: 'Working directory',
                args: [Arg(name: 'directory', template: 'folder')])
          ]),
      Subcommand(
          name: 'recipe',
          description: 'Generate the files for a recipe',
          args: [
            Arg(
                name: 'recipe-name',
                generators: Generator(
                    script: [
                      'bash',
                      '-c',
                      "browser-sync recipe ls | tail -n +3 | sed -e 's/^[[:space:]]*//'",
                    ],
                    splitOn: '\n',
                    cache: FigCache(
                        strategy: 'max-age', ttl: 1000 * 60 * 60 * 24 * 7)))
          ],
          subcommands: [
            Subcommand(name: 'ls', description: 'List recipes')
          ],
          options: [
            Option(
                name: '--cwd',
                description: 'Working directory',
                args: [Arg(name: 'directory', template: 'folder')]),
            Option(
                name: ['-o', '--output'],
                description: 'Specify an output directory',
                args: [Arg(name: 'directory', template: 'folder')])
          ])
    ]);
