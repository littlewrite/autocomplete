// Auto-generated from TypeScript source: ngrok.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ngrok` CLI
final FigSpec ngrokSpec = FigSpec(
  name: 'ngrok',
  description: 'Tunnel local ports to public URLs and inspect traffic',
  subcommands: [
    Subcommand(
      name: 'help',
      description: 'Shows a list of commands or help for one command',
      args: [
        Arg(
        name: 'command',
        suggestions: [
          FigSuggestion(
            name: 'authtoken',
            description: 'Save authtoken to configuration file'
          ),
          FigSuggestion(
            name: 'credits',
            description: 'Prints author and licensing information'
          ),
          FigSuggestion(
            name: 'http',
            description: 'Start an HTTP tunnel'
          ),
          FigSuggestion(
            name: 'start',
            description: 'Start tunnels by name from the configuration file'
          ),
          FigSuggestion(
            name: 'tcp',
            description: 'Start a TCP tunnel'
          ),
          FigSuggestion(
            name: 'tls',
            description: 'Start a TLS tunnel'
          ),
          FigSuggestion(
            name: 'update',
            description: 'Update ngrok to the latest version'
          ),
          FigSuggestion(
            name: 'version',
            description: 'Print the version string'
          ),
          FigSuggestion(
            name: 'help',
            description: 'Shows a list of commands or help for one command'
          )
        ]
      )
      ]
    ),
    Subcommand(
      name: 'http',
      description: 'Start an HTTP tunnel',
      args: [
        Arg(
        name: 'host',
        suggestions: [
          FigSuggestion(
            name: '8080',
            description: 'Port'
          )
        ]
      )
      ],
      options: [
        Option(
          description: 'Enforce basic auth on tunnel endpoint, \'user:password\'',
          name: ['--auth', '-auth'],
          args: [
            Arg(
            name: 'user:password'
          )
          ]
        ),
        Option(
          description: 'Listen for http, https or both: true/false/both',
          name: ['--bind-tls', '-bind-tls'],
          args: [
            Arg(
            name: 'true/false/both',
            suggestions: [
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'both')
            ]
          )
          ]
        ),
        Option(
          description: 'Set Host header; if \'rewrite\' use local address hostname',
          name: ['--host-header', '-host-header'],
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'rewrite')
            ]
          )
          ]
        ),
        Option(
          description: 'Enable/disable http introspection',
          name: ['--introspection', '-introspection'],
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'authtoken',
      args: [
        Arg(
        name: 'authtoken'
      )
      ],
      description: 'Save authtoken to configuration file',
      options: []
    ),
    Subcommand(
      name: 'credits',
      description: 'Prints author and licensing information'
    ),
    Subcommand(
      name: 'start',
      description: 'Start tunnels by name from the configuration file',
      args: [
        Arg(
        name: 'tunnels',
        isVariadic: true,
        suggestions: [
          FigSuggestion(name: 'dev'),
          FigSuggestion(name: 'web'),
          FigSuggestion(name: 'blog')
        ]
      )
      ],
      options: [
        Option(
          name: ['--all', '-all'],
          description: 'Start all tunnels in the configuration file',
          exclusiveOn: ['--none']
        ),
        Option(
          name: ['--none', '-none'],
          description: 'Start running no tunnels',
          exclusiveOn: ['--all']
        )
      ]
    ),
    Subcommand(
      name: 'tcp',
      description: 'Start a TCP tunnel',
      args: [
        Arg(
        name: 'port',
        suggestions: [
          FigSuggestion(name: '22')
        ]
      )
      ],
      options: [
        Option(
          name: ['--remote-addr', '-remote-addr'],
          description: 'Bind remote address (requires you reserve an address)',
          args: [
            Arg(
            name: 'remote address'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'tls',
      description: 'Start a TLS tunnel',
      args: [
        Arg(
        name: 'port'
      )
      ],
      options: [
        Option(
          name: ['--client-cas', '-client-cas'],
          args: [
            Arg(
            name: 'certificate',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['--crt', '-crt'],
          args: [
            Arg(
            name: 'certificate',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['--key', '-key'],
          args: [
            Arg(
            name: 'certificate',
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update ngrok to the latest version',
      options: [
        Option(
          name: ['--channel', '-channel'],
          description: 'Update channel (stable, beta)',
          args: [
            Arg(
            name: 'channel',
            suggestions: [
              FigSuggestion(name: 'stable'),
              FigSuggestion(name: 'beta')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Print the version string'
    )
  ]
);
