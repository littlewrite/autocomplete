// Auto-generated from TypeScript source: minectl.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `minectl` CLI
final FigSpec minectlSpec = FigSpec(
  name: 'minectl',
  description: 'Create Minecraft Server on different cloud provider',
  subcommands: [

    Subcommand(
      name: 'completion',
      description: 'Generate the autocompletion script for the specified shell',
      subcommands: [

        Subcommand(
          name: 'bash',
          description: 'Generate the autocompletion script for bash',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'fish',
          description: 'Generate the autocompletion script for fish',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'powershell',
          description: 'Generate the autocompletion script for powershell',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'zsh',
          description: 'Generate the autocompletion script for zsh',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create an Minecraft Server',
      options: [

        Option(
          name: ['--filename', '-f'],
          description: 'Location of the manifest file',
          args: [
            Arg(
            name: 'filename',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: ['--wait', '-w'],
          description: 'Wait for Minecraft Server is started'
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete an Minecraft Server',
      options: [

        Option(
          name: ['--filename', '-f'],
          description: 'Location of the manifest file',
          args: [
            Arg(
            name: 'filename',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'Contains the server id',
          args: [
            Arg(
            name: 'i'
          )
          ]
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Automatically delete the server'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List all Minecraft Server',
      options: [

        Option(
          name: ['--provider', '-p'],
          description: 'The cloud provider - civo|scaleway|do|hetzner|akamai|ovh|equinix|gce|vultr|azure|oci|ionos|aws|vexxhost|multipass|exoscale',
          args: [
            Arg(
            name: 'provider',
            suggestions: [

              FigSuggestion(name: 'civo'),
              FigSuggestion(name: 'scaleway'),
              FigSuggestion(name: 'do'),
              FigSuggestion(name: 'hetzner'),
              FigSuggestion(name: 'linode'),
              FigSuggestion(name: 'ovh'),
              FigSuggestion(name: 'equinix'),
              FigSuggestion(name: 'gce'),
              FigSuggestion(name: 'vultr'),
              FigSuggestion(name: 'azure'),
              FigSuggestion(name: 'oci'),
              FigSuggestion(name: 'ionos'),
              FigSuggestion(name: 'aws'),
              FigSuggestion(name: 'vexxhost'),
              FigSuggestion(name: 'multipass'),
              FigSuggestion(name: 'exoscale')
            ]
          )
          ]
        ),
        Option(
          name: ['--region', '-r'],
          description: 'The region (gce: zone) for your cloud provider - civo|gce',
          args: [
            Arg(
            name: 'regio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'plugins',
      description: 'Manage your plugins for a specific server',
      options: [

        Option(
          name: ['--destination', '-d'],
          description: 'Plugin destination folder',
          args: [
            Arg(
            name: 'destination',
            template: ['folders']
          )
          ]
        ),
        Option(
          name: ['--filename', '-f'],
          description: 'Location of the manifest file',
          args: [
            Arg(
            name: 'filename',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'Contains the server id',
          args: [
            Arg(
            name: 'i'
          )
          ]
        ),
        Option(
          name: ['--plugin', '-p'],
          description: 'Location of the plugin',
          args: [
            Arg(
            name: 'plugin',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: ['--ssh-key', '-k'],
          description: 'Specify a specific path for the SSH key',
          args: [
            Arg(
            name: 'ssh-ke'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'rcon',
      description: 'RCON client to your Minecraft server',
      options: [

        Option(
          name: ['--filename', '-f'],
          description: 'Location of the manifest file',
          args: [
            Arg(
            name: 'filename',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'Contains the server id',
          args: [
            Arg(
            name: 'i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update an Minecraft Server',
      options: [

        Option(
          name: ['--filename', '-f'],
          description: 'Location of the manifest file',
          args: [
            Arg(
            name: 'filename',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'Contains the server id',
          args: [
            Arg(
            name: 'i'
          )
          ]
        ),
        Option(
          name: ['--ssh-key', '-k'],
          description: 'Specify a specific path for the SSH key',
          args: [
            Arg(
            name: 'ssh-ke'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Display the clients version information'
    ),
    Subcommand(
      name: 'wizard',
      description: 'Calls the minectl wizard to create interactively a minectl 🗺 config',
      options: [

        Option(
          name: ['--output', '-o'],
          description: 'Output folder for the configuration file for minectl 🗺 (default: ~/.minectl)',
          args: [
            Arg(
            name: 'output',
            template: ['folders']
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [

        Subcommand(
          name: 'completion',
          description: 'Generate the autocompletion script for the specified shell',
          subcommands: [

            Subcommand(
              name: 'bash',
              description: 'Generate the autocompletion script for bash'
            ),
            Subcommand(
              name: 'fish',
              description: 'Generate the autocompletion script for fish'
            ),
            Subcommand(
              name: 'powershell',
              description: 'Generate the autocompletion script for powershell'
            ),
            Subcommand(
              name: 'zsh',
              description: 'Generate the autocompletion script for zsh'
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create an Minecraft Server'
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an Minecraft Server'
        ),
        Subcommand(
          name: 'list',
          description: 'List all Minecraft Server'
        ),
        Subcommand(
          name: 'plugins',
          description: 'Manage your plugins for a specific server'
        ),
        Subcommand(
          name: 'rcon',
          description: 'RCON client to your Minecraft server'
        ),
        Subcommand(
          name: 'update',
          description: 'Update an Minecraft Server'
        ),
        Subcommand(
          name: 'version',
          description: 'Display the clients version information'
        ),
        Subcommand(
          name: 'wizard',
          description: 'Calls the minectl wizard to create interactively a minectl 🗺 config'
        )
      ]
    )
  ],
  options: [

    Option(
      name: '--headless',
      description: 'Set this value to if mincetl is called by a CI system. Enables logging and disables human-readable output rendering (default: false)',
      isPersistent: true
    ),
    Option(
      name: '--log-encoding',
      description: 'Set the log encoding: console|json (default: console)',
      isPersistent: true,
      args: [
        Arg(
        name: 'log-encoding',
        defaultValue: 'console',
        suggestions: [

          FigSuggestion(name: 'console'),
          FigSuggestion(name: 'json')
        ]
      )
      ]
    ),
    Option(
      name: '--verbose',
      description: 'Enable verbose logging: debug|info|warn|error|dpanic|panic|fatal',
      isPersistent: true,
      args: [
        Arg(
        name: 'verbose',
        suggestions: [

          FigSuggestion(name: 'debug'),
          FigSuggestion(name: 'info'),
          FigSuggestion(name: 'warn'),
          FigSuggestion(name: 'error'),
          FigSuggestion(name: 'dpanic'),
          FigSuggestion(name: 'panic'),
          FigSuggestion(name: 'fatal')
        ]
      )
      ]
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Display help',
      isPersistent: true
    )
  ]
);
