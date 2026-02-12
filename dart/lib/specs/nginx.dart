// Auto-generated from TypeScript source: nginx.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `nginx` CLI
final FigSpec nginxSpec = FigSpec(
  name: 'nginx',
  description: 'Nginx (pronounced ``engine x\'\') is an HTTP and reverse proxy server, a mail proxy server, and a generic TCP/UDP proxy server.  It is known for its high performance, stability, rich feature set, simple configuration, and low resource consumption',
  args: [
    Arg(
    isVariadic: true
  )
  ],
  options: [
    Option(
      name: '-c',
      description: 'Use an alternative configuration file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-e',
      description: 'Use an alternative error log file.  Special value stderr indicates that the standard error output should be used',
      args: [
        Arg(
        name: 'file',
        suggestions: [
          FigSuggestion(name: 'stderr')
        ]
      )
      ]
    ),
    Option(
      name: '-g',
      description: 'Set global configuration directives',
      args: [
        Arg(
        name: 'directives',
        description: 'For all directives visit https://nginx.org/en/docs/dirindex.html'
      )
      ]
    ),
    Option(
      name: '-p',
      description: 'Set the prefix path.  The default value is %%PREFIX%%',
      args: [
        Arg(
        name: 'prefix'
      )
      ]
    ),
    Option(
      name: '-q',
      description: 'Suppress non-error messages during configuration testing'
    ),
    Option(
      name: '-T',
      description: 'Same as -t, but additionally dump configuration files to standard output'
    ),
    Option(
      name: '-t',
      description: 'Do not run, just test the configuration file.  nginx checks the configuration file syntax and then tries to open files referenced in the configuration file'
    ),
    Option(
      name: '-V',
      description: 'Print the nginx version, compiler version, and configure script parameters'
    ),
    Option(
      name: '-v',
      description: 'Print the nginx version'
    ),
    Option(
      name: ['-?', '-h'],
      description: 'Print help'
    ),
    Option(
      name: '-s',
      description: 'Send a signal to the master process.  The argument signal can be one of: stop, quit, reopen, reload',
      args: [
        Arg(
        name: 'signal',
        suggestions: [
          FigSuggestion(
            name: 'stop',
            description: 'Sends SIGTERM'
          ),
          FigSuggestion(
            name: 'quit',
            description: 'Sends SIGQUIT'
          ),
          FigSuggestion(
            name: 'reopen',
            description: 'Sends SIGUSR1'
          ),
          FigSuggestion(
            name: 'reload',
            description: 'Sends SIGHUP'
          )
        ]
      )
      ]
    )
  ]
);
