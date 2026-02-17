// Auto-generated from TypeScript source: mosh.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mosh` CLI
final FigSpec moshSpec = FigSpec(
  name: 'mosh',
  description: '',
  args: [
    Arg(
    name: 'user@hostname',
    description: 'Address of remote machine to log into',
    generators: [

      Generator(
        template: 'history'
      )
    ]
  )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for mosh'
    ),
    Option(
      name: '--client',
      description: 'Mosh client on local machine (default: "mosh-client")'
    ),
    Option(
      name: '--server',
      description: 'Mosh server on remote machine (default: "mosh-server")'
    ),
    Option(
      name: '--predict',
      description: 'Local echo options',
      args: [
        Arg(
        suggestions: [

          FigSuggestion(
            name: 'adaptive',
            description: 'Local echo for slower links [default]'
          ),
          FigSuggestion(
            name: 'always',
            description: 'Use local echo even on fast links'
          ),
          FigSuggestion(
            name: 'never',
            description: 'Never use local echo'
          ),
          FigSuggestion(
            name: 'experimental',
            description: 'Aggressively echo even when incorrect'
          )
        ]
      )
      ]
    ),
    Option(
      name: '-4',
      description: 'Use IPv4 only'
    ),
    Option(
      name: '-6',
      description: 'Use IPv6 only'
    ),
    Option(
      name: '--family',
      description: 'Network Type',
      args: [
        Arg(
        suggestions: [

          FigSuggestion(
            name: 'inet',
            description: 'Use IPv4 only'
          ),
          FigSuggestion(
            name: 'ine6',
            description: 'Use IPv6 only'
          ),
          FigSuggestion(
            name: 'auto',
            description: 'Autodetect network type for single-family hosts only'
          ),
          FigSuggestion(
            name: 'all',
            description: 'Try all network types'
          ),
          FigSuggestion(
            name: 'prefer-inet4',
            description: 'Use all network types, but try IPv4 first [default]'
          ),
          FigSuggestion(
            name: 'prefer-inet6',
            description: 'Use all network types, but try IPv6 first'
          )
        ]
      )
      ]
    ),
    Option(
      name: ['--port', '-p'],
      description: 'Server-side UDP port or range, (No effect on server-side SSH port)'
    ),
    Option(
      name: '--bind-server',
      description: '{ssh|any|IP}, ask the server to reply from an IP address, (default: "ssh")'
    ),
    Option(
      name: '--ssh',
      args: [
        Arg(
        name: 'command'
      )
      ],
      description: 'Ssh command to run when setting up session, (example: "ssh -p 2222")'
    ),
    Option(
      name: '--no-ssh-pty',
      description: 'Do not allocate a pseudo tty on ssh connection'
    ),
    Option(
      name: '--no-init',
      description: 'Do not send terminal initialization string'
    ),
    Option(
      name: '--local',
      description: 'Run mosh-server locally without using ssh'
    ),
    Option(
      name: '--experimental-remote-ip',
      description: 'Select the method for discovering the remote IP address to use for mosh',
      args: [
        Arg(
        name: 'method',
        suggestions: [

          FigSuggestion(name: 'local'),
          FigSuggestion(name: 'remote'),
          FigSuggestion(name: 'proxy')
        ],
        defaultValue: 'proxy'
      )
      ]
    ),
    Option(
      name: '--version',
      description: 'Version and copyright information'
    )
  ]
);
