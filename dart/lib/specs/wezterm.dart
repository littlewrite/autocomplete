// Auto-generated from TypeScript source: wezterm.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `wezterm` CLI
final FigSpec weztermSpec = FigSpec(
  name: 'wezterm',
  description: 'Wez\'s Terminal Emulator',
  subcommands: [

    Subcommand(
      name: 'start',
      description: 'Start the GUI, optionally running an alternative program',
      options: [

        Option(
          name: '--cwd',
          description: 'Specify the current working directory for the initially spawned program',
          args: [
            Arg(
            name: 'cwd',
            isOptional: true,
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--class',
          description: 'Override the default windowing system class. The default is "org.wezfurlong.wezterm". Under X11 and Windows this changes the window class. Under Wayland this changes the app_id. This changes the class for all windows spawned by this instance of wezterm, including error, update and ssh authentication dialogs',
          args: [
            Arg(
            name: 'class',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--workspace',
          description: 'Override the default workspace with the provided name. The default is "default"',
          args: [
            Arg(
            name: 'workspace',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--position',
          description: 'Override the position for the initial window launched by this process',
          args: [
            Arg(
            name: 'position',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--no-auto-connect',
          description: 'If true, do not connect to domains marked as connect_automatically in your wezterm configuration file'
        ),
        Option(
          name: '--always-new-process',
          description: 'If enabled, don\'t try to ask an existing wezterm GUI instance to start the command.  Instead, always start the GUI in this invocation of wezterm so that you can wait for the command to complete by waiting for this wezterm process to finish'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [
        Arg(
        name: 'prog',
        isVariadic: true,
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'ssh',
      description: 'Establish an ssh session',
      options: [

        Option(
          name: ['-o', '--ssh-option'],
          description: 'Override specific SSH configuration options. `wezterm ssh` is able to parse some (but not all!) options from your `~/.ssh/config` and `/etc/ssh/ssh_config` files. This command line switch allows you to override or otherwise specify ssh_config style options',
          isRepeatable: true,
          args: [
            Arg(
            name: 'name=value',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--class',
          description: 'Override the default windowing system class. The default is "org.wezfurlong.wezterm". Under X11 and Windows this changes the window class. Under Wayland this changes the app_id. This changes the class for all windows spawned by this instance of wezterm, including error, update and ssh authentication dialogs',
          args: [
            Arg(
            name: 'class',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--position',
          description: 'Override the position for the initial window launched by this process',
          args: [
            Arg(
            name: 'position',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '-v',
          description: 'Enable verbose ssh protocol tracing. The trace information is printed to the stderr stream of the process'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: 'user-at-host-and-port'
        ),
        Arg(
          name: 'prog',
          isVariadic: true,
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'serial',
      description: 'Open a serial port',
      options: [

        Option(
          name: '--baud',
          description: 'Set the baud rate.  The default is 9600 baud',
          args: [
            Arg(
            name: 'baud',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--class',
          description: 'Override the default windowing system class. The default is "org.wezfurlong.wezterm". Under X11 and Windows this changes the window class. Under Wayland this changes the app_id. This changes the class for all windows spawned by this instance of wezterm, including error, update and ssh authentication dialogs',
          args: [
            Arg(
            name: 'class',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--position',
          description: 'Override the position for the initial window launched by this process',
          args: [
            Arg(
            name: 'position',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [
        Arg(
        name: 'port'
      )
      ]
    ),
    Subcommand(
      name: 'connect',
      description: 'Connect to wezterm multiplexer',
      options: [

        Option(
          name: '--class',
          description: 'Override the default windowing system class. The default is "org.wezfurlong.wezterm". Under X11 and Windows this changes the window class. Under Wayland this changes the app_id. This changes the class for all windows spawned by this instance of wezterm, including error, update and ssh authentication dialogs',
          args: [
            Arg(
            name: 'class',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--workspace',
          description: 'Override the default workspace with the provided name. The default is "default"',
          args: [
            Arg(
            name: 'workspace',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--position',
          description: 'Override the position for the initial window launched by this process',
          args: [
            Arg(
            name: 'position',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: 'domain-name'
        ),
        Arg(
          name: 'prog',
          isVariadic: true,
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'ls-fonts',
      description: 'Display information about fonts',
      options: [

        Option(
          name: '--text',
          description: 'Explain which fonts are used to render the supplied text string',
          exclusiveOn: ['--list-system'],
          args: [
            Arg(
            name: 'text',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--list-system',
          description: 'Whether to list all fonts available to the system'
        ),
        Option(
          name: '--rasterize-ascii',
          description: 'Show rasterized glyphs for the text in --text using ascii blocks'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ]
    ),
    Subcommand(
      name: 'show-keys',
      description: 'Show key assignments',
      options: [

        Option(
          name: '--key-table',
          description: 'In lua mode, show only the named key table',
          args: [
            Arg(
            name: 'key-table',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--lua',
          description: 'Show the keys as lua config statements'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ]
    ),
    Subcommand(
      name: 'cli',
      description: 'Interact with experimental mux server',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List windows, tabs and panes',
          options: [

            Option(
              name: '--format',
              description: 'Controls the output format. "table" and "json" are possible formats',
              args: [
                Arg(
                name: 'format',
                isOptional: true
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ]
        ),
        Subcommand(
          name: 'list-clients',
          description: 'List clients',
          options: [

            Option(
              name: '--format',
              description: 'Controls the output format. "table" and "json" are possible formats',
              args: [
                Arg(
                name: 'format',
                isOptional: true
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ]
        ),
        Subcommand(
          name: 'proxy',
          description: 'Start rpc proxy pipe',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ]
        ),
        Subcommand(
          name: 'tlscreds',
          description: 'Obtain tls credentials',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ]
        ),
        Subcommand(
          name: 'move-pane-to-new-tab',
          description: 'Move a pane into a new tab',
          options: [

            Option(
              name: '--pane-id',
              description: 'Specify the pane that should be moved. The default is to use the current pane based on the environment variable WEZTERM_PANE',
              args: [
                Arg(
                name: 'pane-id',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--window-id',
              description: 'Specify the window into which the new tab will be created. If omitted, the window associated with the current pane is used',
              args: [
                Arg(
                name: 'window-id',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--workspace',
              description: 'If creating a new window, override the default workspace name with the provided name.  The default name is "default"',
              args: [
                Arg(
                name: 'workspace',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--new-window',
              description: 'Create tab in a new window, rather than the window currently containing the pane',
              exclusiveOn: ['--window-id']
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ]
        ),
        Subcommand(
          name: 'split-pane',
          description: 'Split the current pane. Outputs the pane-id for the newly created pane on success',
          options: [

            Option(
              name: '--pane-id',
              description: 'Specify the pane that should be split. The default is to use the current pane based on the environment variable WEZTERM_PANE',
              args: [
                Arg(
                name: 'pane-id',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--cells',
              description: 'The number of cells that the new split should have. If omitted, 50% of the available space is used',
              args: [
                Arg(
                name: 'cells',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--percent',
              description: 'Specify the number of cells that the new split should have, expressed as a percentage of the available space',
              exclusiveOn: ['--cells'],
              args: [
                Arg(
                name: 'percent',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--cwd',
              description: 'Specify the current working directory for the initially spawned program',
              args: [
                Arg(
                name: 'cwd',
                isOptional: true,
                template: 'folders'
              )
              ]
            ),
            Option(
              name: '--move-pane-id',
              description: 'Instead of spawning a new command, move the specified pane into the newly created split',
              exclusiveOn: ['--cwd'],
              args: [
                Arg(
                name: 'move-pane-id',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--horizontal',
              description: 'Equivalent to `--right`. If neither this nor any other direction is specified, the default is equivalent to `--bottom`',
              exclusiveOn: ['--left', '--right', '--top', '--bottom']
            ),
            Option(
              name: '--left',
              description: 'Split horizontally, with the new pane on the left',
              exclusiveOn: ['--right', '--top', '--bottom']
            ),
            Option(
              name: '--right',
              description: 'Split horizontally, with the new pane on the right',
              exclusiveOn: ['--left', '--top', '--bottom']
            ),
            Option(
              name: '--top',
              description: 'Split vertically, with the new pane on the top',
              exclusiveOn: ['--left', '--right', '--bottom']
            ),
            Option(
              name: '--bottom',
              description: 'Split vertically, with the new pane on the bottom',
              exclusiveOn: ['--left', '--right', '--top']
            ),
            Option(
              name: '--top-level',
              description: 'Rather than splitting the active pane, split the entire window'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ],
          args: [
            Arg(
            name: 'prog',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'spawn',
          description: 'Spawn a command into a new window or tab. Outputs the pane-id for the newly created pane on success',
          options: [

            Option(
              name: '--pane-id',
              description: 'Specify the current pane. The default is to use the current pane based on the environment variable WEZTERM_PANE. The pane is used to determine the current domain and window',
              args: [
                Arg(
                name: 'pane-id',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--domain-name',
              args: [
                Arg(
                name: 'domain-name',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--window-id',
              description: 'Specify the window into which to spawn a tab. If omitted, the window associated with the current pane is used. Cannot be used with `--workspace` or `--new-window`',
              exclusiveOn: ['--workspace', '--new-window'],
              args: [
                Arg(
                name: 'window-id',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--cwd',
              description: 'Specify the current working directory for the initially spawned program',
              args: [
                Arg(
                name: 'cwd',
                isOptional: true,
                template: 'folders'
              )
              ]
            ),
            Option(
              name: '--workspace',
              description: 'When creating a new window, override the default workspace name with the provided name.  The default name is "default"',
              dependsOn: ['--new-window'],
              args: [
                Arg(
                name: 'workspace',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--new-window',
              description: 'Spawn into a new window, rather than a new tab'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ],
          args: [
            Arg(
            name: 'prog',
            isVariadic: true,
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'send-text',
          description: 'Send text to a pane as though it were pasted. If bracketed paste mode is enabled in the pane, then the text will be sent as a bracketed paste',
          options: [

            Option(
              name: '--pane-id',
              description: 'Specify the target pane. The default is to use the current pane based on the environment variable WEZTERM_PANE',
              args: [
                Arg(
                name: 'pane-id',
                isOptional: true
              )
              ]
            ),
            Option(
              name: '--no-paste',
              description: 'Send the text directly, rather than as a bracketed paste'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ],
          args: [
            Arg(
            name: 'text',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Print this message or the help of the given subcommand(s)',
          args: [
            Arg(
            name: 'subcommand',
            isOptional: true
          )
          ]
        )
      ],
      options: [

        Option(
          name: '--class',
          description: 'When connecting to a gui instance, if you started the gui with `--class SOMETHING`, you should also pass that same value here in order for the client to find the correct gui instance',
          args: [
            Arg(
            name: 'class',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--no-auto-start',
          description: 'Don\'t automatically start the server'
        ),
        Option(
          name: '--prefer-mux',
          description: 'Prefer connecting to a background mux server. The default is to prefer connecting to a running wezterm gui instance'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ]
    ),
    Subcommand(
      name: 'imgcat',
      description: 'Output an image to the terminal',
      options: [

        Option(
          name: '--width',
          description: 'Specify the display width; defaults to "auto" which automatically selects an appropriate size.  You may also use an integer value `N` to specify the number of cells, or `Npx` to specify the number of pixels, or `N%` to size relative to the terminal width',
          args: [
            Arg(
            name: 'width',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--height',
          description: 'Specify the display height; defaults to "auto" which automatically selects an appropriate size.  You may also use an integer value `N` to specify the number of cells, or `Npx` to specify the number of pixels, or `N%` to size relative to the terminal height',
          args: [
            Arg(
            name: 'height',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--no-preserve-aspect-ratio',
          description: 'Do not respect the aspect ratio.  The default is to respect the aspect ratio'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [
        Arg(
        name: 'file-name',
        isOptional: true,
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'set-working-directory',
      description: 'Advise the terminal of the current working directory by emitting an OSC 7 escape sequence',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [

        Arg(
          name: 'cwd',
          isOptional: true,
          template: 'folders'
        ),
        Arg(
          name: 'host',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'record',
      description: 'Record a terminal session as an asciicast',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [
        Arg(
        name: 'prog',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'replay',
      description: 'Replay an asciicast terminal session',
      options: [

        Option(
          name: '--explain',
          description: 'Explain what is being sent/received'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ],
      args: [
        Arg(
        name: 'cast-file'
      )
      ]
    ),
    Subcommand(
      name: 'shell-completion',
      description: 'Generate shell completion information',
      options: [

        Option(
          name: '--shell',
          description: 'Which shell to generate for',
          args: [
            Arg(
            name: 'shell',
            suggestions: [

              FigSuggestion(name: 'bash'),
              FigSuggestion(name: 'elvish'),
              FigSuggestion(name: 'fish'),
              FigSuggestion(name: 'power-shell'),
              FigSuggestion(name: 'zsh'),
              FigSuggestion(name: 'fig')
            ]
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Print this message or the help of the given subcommand(s)',
      args: [
        Arg(
        name: 'subcommand',
        isOptional: true
      )
      ]
    )
  ],
  options: [

    Option(
      name: '--config-file',
      description: 'Specify the configuration file to use, overrides the normal configuration file resolution',
      exclusiveOn: ['-n'],
      args: [
        Arg(
        name: 'config-file',
        isOptional: true,
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--config',
      description: 'Override specific configuration values',
      isRepeatable: true,
      args: [
        Arg(
        name: 'name=value',
        isVariadic: true,
        isOptional: true
      )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print help information'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Print version information'
    ),
    Option(
      name: '-n',
      description: 'Skip loading wezterm.lua'
    )
  ]
);
