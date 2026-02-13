// Auto-generated from TypeScript source: config.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `config` CLI
final FigSpec configSpec = FigSpec(
  name: 'config',
  description: 'Manage Azure CLI configuration.\n\n\t\tAvailable since Azure CLI 2.10.0',
  subcommands: [

    Subcommand(
      name: 'get',
      description: 'Get a configuration',
      options: [

        Option(
          name: '--local',
          description: 'Include local configuration. Scan from the working directory up to the root drive, then the global configuration and return the first occurrence'
        )
      ],
      args: [
        Arg(
        name: '<KEY>',
        description: 'The configuration to get. If not provided, all sections and configurations will be listed. If section is provided, all configurations under the specified section will be listed. If <section>.<key> is provided, only the corresponding configuration is shown',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'set',
      description: 'Set a configuration',
      options: [

        Option(
          name: '--local',
          description: 'Set as a local configuration in the working directory'
        )
      ],
      args: [
        Arg(
        name: '<KEY_VALUE>',
        description: 'Space-separated configurations in the form of .=',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'unset',
      description: 'Unset a configuration',
      options: [

        Option(
          name: '--local',
          description: 'Include local configuration. Scan from the working directory up to the root drive, then the global configuration and unset the first occurrence'
        )
      ],
      args: [
        Arg(
        name: '<KEY>',
        description: 'The configuration to unset, in the form of',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'param-persist',
      description: 'Manage parameter persistence',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete parameter persistence data',
          options: [

            Option(
              name: '--all',
              description: 'Clear all parameter persistence data. Either positional name argument or --all can be specified'
            ),
            Option(
              name: '--purge',
              description: 'Delete parameter persistence file from working directory. Only available when --all is specified'
            ),
            Option(
              name: '--recursive',
              description: 'Indicate this is recursive delete of parameter persistence. Only available when --all is specified'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation. Only available when --all is specified'
            )
          ],
          args: [
            Arg(
            name: '<NAME>',
            description: 'Space-separated list of parameter persistence names. Either positional name argument or --all can be specified',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'off',
          description: 'Turn off parameter persistence'
        ),
        Subcommand(
          name: 'on',
          description: 'Turn on parameter persistence'
        ),
        Subcommand(
          name: 'show',
          description: 'Show parameter persistence data',
          args: [
            Arg(
            name: '<NAME>',
            description: 'Space-separated list of parameter persistence names',
            isOptional: true
          )
          ]
        )
      ]
    )
  ]
);
