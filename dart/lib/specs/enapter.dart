// Auto-generated from TypeScript source: enapter.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `enapter` CLI
final FigSpec enapterSpec = FigSpec(
  name: 'enapter',
  description: 'Cross-platform device management command-line tool for Enapter Energy Management System Toolkit',
  subcommands: [
    Subcommand(
      name: 'devices',
      description: 'Device information and management commands',
      subcommands: [
        Subcommand(
          name: 'upload',
          description: 'Upload blueprint to a device',
          options: [
            Option(
              name: '--hardware-id',
              description: 'Hardware ID (UCM ID) of the device; can be obtained in cloud.enapter.com',
              args: [
                Arg(
                name: 'ID'
              )
              ]
            ),
            Option(
              name: '--blueprint-dir',
              description: 'Directory which contains blueprint file',
              args: [
                Arg(
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Time to wait for blueprint uploading (default: 30s)',
              args: [
                Arg(
                name: 'timeout',
                isOptional: true
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Show help'
            )
          ]
        ),
        Subcommand(
          name: 'logs',
          description: 'Stream logs from a device',
          options: [
            Option(
              name: '--hardware-id',
              description: 'Hardware ID (UCM ID) of the device; can be obtained in cloud.enapter.com',
              args: [
                Arg(
                name: 'ID'
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Show help'
            )
          ]
        ),
        Subcommand(
          name: 'upload-logs',
          description: 'Show blueprint uploading logs',
          options: [
            Option(
              name: '--hardware-id',
              description: 'Hardware ID (UCM ID) of the device; can be obtained in cloud.enapter.com',
              args: [
                Arg(
                name: 'ID'
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Show help'
            )
          ]
        ),
        Subcommand(
          name: 'execute',
          description: 'Execute command on device',
          options: [
            Option(
              name: '--hardware-id',
              description: 'Hardware ID (UCM ID) of the device; can be obtained in cloud.enapter.com',
              args: [
                Arg(
                name: 'ID'
              )
              ]
            ),
            Option(
              name: '--command',
              description: 'Command name',
              args: [
                Arg(
                name: 'command'
              )
              ]
            ),
            Option(
              name: '--arguments',
              description: 'Command arguments as JSON object',
              args: [
                Arg(
                name: 'arguments'
              )
              ]
            ),
            Option(
              name: '--show-progress',
              description: 'Enable in-progress responses streaming (default: false)'
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Show help'
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Help'
        )
      ]
    ),
    Subcommand(
      name: 'rules',
      description: 'Rules information and management commands',
      subcommands: [
        Subcommand(
          name: 'update',
          description: 'Update rule',
          options: [
            Option(
              name: '--rule-id',
              description: 'Rule ID; can be obtained in cloud.enapter.com',
              args: [
                Arg(
                name: 'ID'
              )
              ]
            ),
            Option(
              name: '--rule-path',
              description: 'Path to file with rule Lua code',
              args: [
                Arg(
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--execution-interval',
              description: 'Rule execution interval in milliseconds (default: chosen by the server)',
              args: [
                Arg(
                name: 'interval',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--stdlib-version',
              description: 'Version of standard library used by the rule (default: chosen by the server)',
              args: [
                Arg(
                name: 'version',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Time to wait for rule update (default: 30s)',
              args: [
                Arg(
                name: 'timeout',
                isOptional: true
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Show help'
            )
          ]
        ),
        Subcommand(
          name: 'logs',
          description: 'Stream logs from a rule',
          options: [
            Option(
              name: '--rule-id',
              description: 'Rule ID; can be obtained in cloud.enapter.com',
              args: [
                Arg(
                name: 'ID'
              )
              ]
            ),
            Option(
              name: ['--help', '-h'],
              description: 'Show help'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Shows a list of commands or help for one command',
      args: [
        Arg(
        name: 'command'
      )
      ]
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Show version'
    )
  ]
);
