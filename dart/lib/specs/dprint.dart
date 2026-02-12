// Auto-generated from TypeScript source: dprint.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dprint` CLI
final FigSpec dprintSpec = FigSpec(
  name: 'dprint',
  description: 'A pluggable and configurable code formatting platform written in Rust',
  requiresSubcommand: true,
  subcommands: [
    Subcommand(
      name: 'init',
      description: 'Initializes a configuration file in the current directory',
      icon: '⚙️',
      priority: 60
    ),
    Subcommand(
      name: 'fmt',
      description: 'Formats the source files and writes the result to the file system',
      icon: '🛠',
      priority: 76,
      options: [
        Option(
          name: '--diff',
          description: 'Outputs a check-like diff of every formatted file'
        ),
        Option(
          name: '--stdin',
          description: 'Format stdin and output the result to stdout. Provide an absolute file path to apply the inclusion and exclusion rules or an extension or file name to always format the text',
          args: [
            Arg(
            name: 'extension/file-name/file-path',
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'check',
      description: 'Checks for any files that haven\'t been formatted',
      icon: '💬',
      priority: 60
    ),
    Subcommand(
      name: 'config',
      description: 'Functionality related to the configuration file',
      icon: '⚙️',
      priority: 60,
      subcommands: [
        Subcommand(
          name: 'add',
          description: 'Adds a plugin to the configuration file',
          args: [
            Arg(
            name: 'url-or-plugin-name'
          )
          ]
        ),
        Subcommand(
          name: 'init',
          description: 'Initializes a configuration file in the current directory'
        ),
        Subcommand(
          name: 'update',
          description: 'Updates the plugins in the configuration file',
          icon: '⤴️',
          options: [
            Option(
              name: ['-y', '--yes'],
              description: 'Upgrade process plugins without prompting to confirm checksums'
            )
          ]
        )
      ],
      requiresSubcommand: true
    ),
    Subcommand(
      name: 'output-file-paths',
      description: 'Prints the resolved file paths for the plugins based on the args and configuration'
    ),
    Subcommand(
      name: 'output-resolved-config',
      description: 'Prints the resolved configuration for the plugins based on the args and configuration'
    ),
    Subcommand(
      name: 'output-format-times',
      description: 'Prints the amount of time it takes to format each file. Use this for debugging'
    ),
    Subcommand(
      name: 'clear-cache',
      description: 'Deletes the plugin cache directory'
    ),
    Subcommand(
      name: 'upgrade',
      icon: '⤴️',
      description: 'Upgrades the dprint executable',
      priority: 55
    ),
    Subcommand(
      name: 'license',
      description: 'Outputs the software license'
    )
  ],
  options: [
    Option(
      name: ['-c', '--config'],
      description: 'Path or url to JSON configuration file. Defaults to dprint.json or .dprint.json in current or ancestor directory when not provided',
      args: [
        Arg(
        name: 'config'
      )
      ],
      isPersistent: true
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Prints help information',
      isPersistent: true
    ),
    Option(
      name: '--plugins',
      description: 'List of urls or file paths of plugins to use. This overrides what is specified in the config file',
      args: [
        Arg(
        name: 'urls/files',
        template: 'filepaths'
      )
      ],
      isRepeatable: true,
      isPersistent: true
    ),
    Option(
      name: '--verbose',
      description: 'Prints additional diagnostic information',
      isPersistent: true
    )
  ]
);
