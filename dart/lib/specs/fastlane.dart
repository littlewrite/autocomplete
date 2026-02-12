// Auto-generated from TypeScript source: fastlane.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `fastlane` CLI
final FigSpec fastlaneSpec = FigSpec(
  name: 'fastlane',
  description: 'Fastlane is an open source platform aimed at simplifying Android and iOS deployment',
  subcommands: [
    Subcommand(
      name: 'init',
      description: 'Helps you with your initial fastlane setup',
      subcommands: [
        Subcommand(
          name: 'swift',
          description: 'Fastlane configuration written in Swift (Beta). Swift setup is still in beta'
        )
      ],
      options: [
        Option(
          name: ['-u', '--user'],
          description: 'Only iOS projects Your Apple ID',
          args: [
            Arg(
            name: 'appleID',
            description: 'Your Apple ID'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'action',
      description: 'Shows more information for a specific command',
      args: [
        Arg(
        name: 'tool_name'
      )
      ]
    ),
    Subcommand(
      name: 'actions',
      description: 'Lists all available fastlane actions'
    ),
    Subcommand(
      name: 'add_plugin',
      description: 'Add a new plugin to your fastlane setup',
      args: [
        Arg(
        name: 'plugin_name'
      )
      ]
    ),
    Subcommand(
      name: 'docs',
      description: 'Generate a markdown based documentation based on the Fastfile',
      options: [
        Option(
          name: ['-f', '--force'],
          description: 'Overwrite the existing README.md in the ./fastlane folder'
        )
      ]
    ),
    Subcommand(
      name: 'enable_auto_complete',
      description: 'Enable tab auto completion',
      options: [
        Option(
          name: ['-c', '--custom'],
          description: 'Add custom command(s) for which tab auto complete should be enabled too',
          args: [
            Arg(
            name: '<command1>...<commandN>'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'env',
      description: 'Print your fastlane environment, use this when you submit an issue on GitHub'
    ),
    Subcommand(
      name: 'help',
      description: 'Display global or [command] help documentation'
    ),
    Subcommand(
      name: 'install_plugins',
      description: 'Install all plugins for this project'
    ),
    Subcommand(
      name: 'lanes',
      description: 'Lists all available lanes and shows their description'
    ),
    Subcommand(
      name: 'list',
      description: 'Lists all available lanes without description',
      options: [
        Option(
          name: ['-j', '--json'],
          description: 'Output the lanes in JSON instead of text'
        )
      ]
    ),
    Subcommand(
      name: 'new_action',
      description: 'Create a new custom action for fastlane',
      options: [
        Option(
          name: '--name',
          description: 'Name of your new action',
          args: [
            Arg(
            name: 'action_name'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'new_plugin',
      description: 'Create a new plugin that can be used with fastlane',
      args: [
        Arg(
        name: 'plugin_name',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'run',
      description: 'Run a fastlane one-off action without a full lane',
      args: [
        Arg(
        name: 'action'
      )
      ]
    ),
    Subcommand(
      name: 'search_plugins',
      description: 'Search for plugins, search query is optional',
      args: [
        Arg(
        name: 'search_query',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'socket_server',
      description: 'Starts local socket server and enables only a single local connection',
      options: [
        Option(
          name: ['-s', '--stay_alive'],
          description: 'Keeps socket server up even after error or disconnects, requires CTRL-C to kill'
        ),
        Option(
          name: ['-c', '--connection_timeout'],
          description: 'Sets connection established timeout',
          args: [
            Arg(
            name: 'seconds',
            description: 'Connection timeout in seconds'
          )
          ]
        ),
        Option(
          name: ['-p', '--port'],
          description: 'Sets the port on localhost for the socket connection',
          args: [
            Arg(
            name: 'port',
            description: 'The port on localhost'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'trigger',
      description: 'Run a specific lane. Pass the lane name and optionally the platform first',
      options: [
        Option(
          name: '--disable_runner_upgrades',
          description: 'Prevents fastlane from attempting to update FastlaneRunner swift project'
        ),
        Option(
          name: '--swift_server_port',
          description: 'Prevents fastlane from attempting to update FastlaneRunner swift project',
          args: [
            Arg(
            name: 'port',
            description: 'Set specific port to communicate between fastlane and FastlaneRunner'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'lane',
        description: 'Specific lane to trigger'
      )
      ]
    ),
    Subcommand(
      name: 'update_fastlane',
      description: 'Update fastlane to the latest release'
    ),
    Subcommand(
      name: 'update_plugins',
      description: 'Update all plugin dependencies'
    )
  ],
  options: [
    Option(
      name: '--platform',
      description: 'Only show actions available on the given platform',
      isPersistent: true,
      priority: 49,
      args: [
        Arg(
        name: 'platform',
        description: 'One of android, ios or mac',
        suggestions: [
          FigSuggestion(name: 'ios'),
          FigSuggestion(name: 'android'),
          FigSuggestion(name: 'mac')
        ]
      )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Show help for fastlane',
      isPersistent: true,
      priority: 48
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Show version information for fastlane'
    ),
    Option(
      name: '--verbose',
      description: 'Show version information for fastlane',
      isPersistent: true,
      priority: 48
    ),
    Option(
      name: '--capture_output',
      description: 'Captures the output of the current run, and generates a markdown issue template'
    ),
    Option(
      name: '--troubleshoot',
      description: 'Enables extended verbose mode. Use with caution, as this even includes ALL sensitive data. Cannot be used on CI'
    ),
    Option(
      name: '--env',
      description: 'Add environment(s) to use with `dotenv`'
    )
  ]
);
