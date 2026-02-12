// Auto-generated from TypeScript source: hb-service.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `hb-service` CLI
final FigSpec hbServiceSpec = FigSpec(
  name: 'hb-service',
  description: 'The hb-service command is provided by homebridge-config-ui-x',
  subcommands: [
    Subcommand(
      name: 'install',
      description: 'Install homebridge as a service'
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Remove the homebridge service'
    ),
    Subcommand(
      name: 'start',
      description: 'Start the homebridge service'
    ),
    Subcommand(
      name: 'stop',
      description: 'Stop the homebridge service'
    ),
    Subcommand(
      name: 'restart',
      description: 'Restart the homebridge service'
    ),
    Subcommand(
      name: 'rebuild',
      description: 'Rebuild UI',
      options: [
        Option(
          name: '--all',
          description: 'Rebuild all npm modules (use after updating Node.js)'
        )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Run homebridge daemon'
    ),
    Subcommand(
      name: 'logs',
      description: 'Tails the homebridge service logs'
    ),
    Subcommand(
      name: 'update-node',
      description: 'Update Node.js',
      args: [
        Arg(
        name: 'version',
        isOptional: true
      )
      ]
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Display help for command'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Output the version number'
    ),
    Option(
      name: ['--service-name', '-S'],
      description: 'The name of the homebridge service to install or control',
      args: [
        Arg(
        name: 'service name'
      )
      ],
      isPersistent: true
    ),
    Option(
      name: '--port',
      description: 'The port to set to the Homebridge UI when installing as a service',
      args: [
        Arg(
        name: 'port'
      )
      ],
      isPersistent: true
    ),
    Option(
      name: '--user',
      description: 'The user account the Homebridge service will be installed as (Linux, macOS only)',
      args: [
        Arg(
        name: 'user'
      )
      ],
      isPersistent: true
    ),
    Option(
      name: ['--plugin-path', '-P'],
      args: [
        Arg(
        name: 'path'
      )
      ],
      isPersistent: true
    ),
    Option(
      name: ['--user-storage-path', '-U'],
      args: [
        Arg(
        name: 'path'
      )
      ],
      isPersistent: true
    ),
    Option(
      name: ['--no-timestamp', '-T'],
      isPersistent: true
    ),
    Option(
      name: '--gid',
      args: [
        Arg(
        name: 'number'
      )
      ],
      isPersistent: true
    ),
    Option(
      name: '--uid',
      args: [
        Arg(
        name: 'number'
      )
      ],
      isPersistent: true
    ),
    Option(
      name: '--docker',
      isPersistent: true
    ),
    Option(
      name: '--allow-root',
      isPersistent: true
    ),
    Option(
      name: '--stdout',
      isPersistent: true
    ),
    Option(
      name: '--strict-plugin-resolution',
      isPersistent: true
    )
  ]
);
