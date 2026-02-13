// Auto-generated from TypeScript source: rojo.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `rojo` CLI
final FigSpec rojoSpec = FigSpec(
  name: 'rojo',
  description: 'Enables professional-grade development tools for Roblox developers',
  subcommands: [

    Subcommand(
      name: 'help',
      description: 'Print this message or the help of the given subcommand(s)',
      args: [
        Arg(
        name: 'SUBCOMMAND',
        template: 'help'
      )
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Generates a model or place file from the Rojo project',
      options: [

        Option(
          name: ['--output', '-o'],
          description: 'Where to output the result. Should end in .rbxm, .rbxl, .rbxmx, or .rbxlx',
          args: [
            Arg(
            name: 'OUTPUT',
            description: 'Where to output the result. Should end in .rbxm, .rbxl, .rbxmx, or .rbxlx'
          )
          ]
        ),
        Option(
          name: '--watch',
          description: 'Whether to automatically rebuild when any input files change'
        )
      ],
      args: [
        Arg(
        name: 'PROJECT',
        description: 'Path to the project to serve. Defaults to the current directory [default: ]'
      )
      ]
    ),
    Subcommand(
      name: 'doc',
      description: 'Open Rojo\'s documentation in your browser'
    ),
    Subcommand(
      name: 'fmt-project',
      description: 'Reformat a Rojo project using the standard JSON formatting rules',
      args: [
        Arg(
        name: 'PROJECT',
        description: 'Path to the project to format. Defaults to the current directory [default: ]'
      )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Initializes a new Rojo project',
      options: [

        Option(
          name: '--kind',
          description: 'The kind of project to create, \'place\' or \'model\'. Defaults to place',
          args: [
            Arg(
            name: 'KIND',
            description: 'The kind of project to create, \'place\' or \'model\'. Defaults to place',
            suggestions: [

              FigSuggestion(name: 'place'),
              FigSuggestion(name: 'model')
            ]
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'PATH',
        description: 'Path to the place to create the project. Defaults to the current directory [default: ]'
      )
      ]
    ),
    Subcommand(
      name: 'plugin',
      description: 'Install Rojo\'s plugin'
    ),
    Subcommand(
      name: 'serve',
      description: 'Expose a Rojo project to the Rojo Studio plugin',
      options: [

        Option(
          name: 'address',
          description: 'The IP address to listen on. Defaults to `127.0.0.1`',
          args: [
            Arg(
            name: 'ADDRESS',
            description: 'The IP address to listen on. Defaults to `127.0.0.1`'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'sourcemap',
      description: 'Generates a sourcemap file from the Rojo project',
      options: [

        Option(
          name: '--include-non-scripts',
          description: 'If non-script files should be included or not. Defaults to false'
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Where to output the sourcemap. Omit this to use stdout instead of writing to a file. Should end in .json',
          args: [
            Arg(
            name: 'OUTPUT',
            description: 'Where to output the sourcemap. Omit this to use stdout instead of writing to a file. Should end in .json'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'PROJECT',
        description: 'Path to the project to use for the sourcemap. Defaults to the current directory [default: ]'
      )
      ]
    ),
    Subcommand(
      name: 'upload',
      description: 'Builds the project and uploads it to Roblox',
      options: [

        Option(
          name: '--api-key',
          description: 'API key obtained from create.roblox.com/credentials. Rojo will use the Open Cloud API when this is provided. Only supports uploading to a place',
          args: [
            Arg(
            name: 'API_KEY',
            description: 'API key obtained from create.roblox.com/credentials. Rojo will use the Open Cloud API when this is provided. Only supports uploading to a place'
          )
          ]
        ),
        Option(
          name: '--asset_id',
          description: 'Asset ID to upload to',
          args: [
            Arg(
            name: 'ASSET_ID',
            description: 'Asset ID to upload to'
          )
          ]
        ),
        Option(
          name: '--cookie',
          description: 'Authenication cookie to use. If not specified, Rojo will attempt to find one from the system automatically',
          args: [
            Arg(
            name: 'COOKIE',
            description: 'Authenication cookie to use. If not specified, Rojo will attempt to find one from the system automatically'
          )
          ]
        ),
        Option(
          name: '--universe_id',
          description: 'The Universe ID of the given place. Required when using the Open Cloud API',
          args: [
            Arg(
            name: 'UNIVERSE_ID',
            description: 'The Universe ID of the given place. Required when using the Open Cloud API'
          )
          ]
        )
      ],
      args: [
        Arg(
      )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Print help information',
      isPersistent: true
    ),
    Option(
      name: '--color',
      description: 'Set color behavior. Valid values are auto, always, and never [default: auto]',
      isPersistent: true,
      args: [
        Arg(
        name: 'COLOR',
        suggestions: [

          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'always'),
          FigSuggestion(name: 'never')
        ],
        defaultValue: 'auto'
      )
      ]
    ),
    Option(
      name: ['--verbose', '-v'],
      description: 'Sets verbosity level. Can be specified multiple times',
      isRepeatable: 4,
      isPersistent: true
    ),
    Option(
      name: ['--version', '-V'],
      description: 'Print version information'
    )
  ]
);
