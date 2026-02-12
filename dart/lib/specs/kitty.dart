// Auto-generated from TypeScript source: kitty.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `kitty` CLI
final FigSpec kittySpec = FigSpec(
  name: 'kitty',
  options: [
    Option(
      name: ['-T', '--title'],
      description: 'Set the OS window title',
      args: [
        Arg(
        name: 'TITLE'
      )
      ]
    ),
    Option(
      name: ['-C', '--config'],
      description: 'Specify a path to the configuration file(s) to use',
      args: [
        Arg(
        name: 'CONFIG',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-o', '--override'],
      description: 'Override individual configuration options',
      isRepeatable: true
    ),
    Option(
      name: ['-d', '--directory', '--working-directory'],
      description: 'Change to the specified directory when launching',
      args: [
        Arg(
        name: 'DIRECTORY',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--session',
      description: 'Path to a file containing the startup session',
      args: [
        Arg(
        name: 'SESSION',
        template: 'filepaths',
        suggestions: [
          FigSuggestion(
            name: '-',
            description: 'Read from stdin'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--hold',
      description: 'Remain open after child process exits'
    ),
    Option(
      name: ['-1', '--single-instance'],
      description: 'Only a single instance of kitty will run'
    ),
    Option(
      name: '--instance-group',
      description: 'Kitty will open a new window in an existing instance and quit immediately',
      dependsOn: ['-1', '--single-instance'],
      args: [
        Arg(
        name: 'INSTANCE_GROUP'
      )
      ]
    ),
    Option(
      name: '--wait-for-single-instance-window-close',
      description: 'The new window will not quit till the newly opened window is closed',
      dependsOn: ['-1', '--single-instance']
    ),
    Option(
      name: '--listen-on',
      description: 'Tell kitty to listen on the specified address for control messages',
      args: [
        Arg(
        name: 'LISTEN_ON'
      )
      ]
    ),
    Option(
      name: '--start-as',
      description: 'Control how the initial kitty window is created',
      args: [
        Arg(
        name: 'START_AS',
        suggestions: [
          FigSuggestion(name: 'normal'),
          FigSuggestion(name: 'fullscreen'),
          FigSuggestion(name: 'maximized'),
          FigSuggestion(name: 'minimized')
        ]
      )
      ]
    ),
    Option(
      name: ['-v', '--version'],
      description: 'The current kitty version'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display this help message'
    )
  ],
  subcommands: [
    Subcommand(
      name: '@',
      options: [
        Option(
          name: '--to',
          description: 'An address for the kitty instance to control',
          args: [
            Arg(
            name: 'TO'
          )
          ]
        )
      ],
      subcommands: [
        Subcommand(
          name: 'close-tab',
          description: 'Close the specified tab(s)',
          options: [
            Option(
              name: ['-m', '--match'],
              description: 'The tab to match',
              args: [
                Arg(
                name: 'MATCH'
              )
              ]
            ),
            Option(
              name: '--self',
              description: 'Close the tab of the window this command is run in, rather than the active tab'
            ),
            Option(
              name: '--target-group',
              description: 'Close the specified group of tabs',
              args: [
                Arg(
                name: 'TARGET_GROUP'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'close-window',
          description: 'Close the specified window(s)',
          options: [
            Option(
              name: ['-m', '--match'],
              description: 'The window to match',
              args: [
                Arg(
                name: 'MATCH'
              )
              ]
            ),
            Option(
              name: '--self',
              description: 'Close the window this command is run in, rather than the active window'
            )
          ]
        ),
        Subcommand(
          name: 'create-marker',
          options: [
            Option(
              name: ['-m', '--match'],
              description: 'The window to match',
              args: [
                Arg(
                name: 'MATCH'
              )
              ]
            ),
            Option(
              name: '--self',
              description: 'Close the window this command is run in, rather than the active window'
            )
          ],
          args: [
            Arg(
              name: 'MARKER'
            ),
            Arg(
              name: 'SPECIFICATION'
            )
          ]
        ),
        Subcommand(
          name: 'detach-tab',
          description: 'Detach the specified tab',
          options: [
            Option(
              name: ['-m', '--match'],
              description: 'The tab to match',
              args: [
                Arg(
                name: 'MATCH'
              )
              ]
            ),
            Option(
              name: ['-t', '--target-tab'],
              description: 'The tab to match',
              args: [
                Arg(
                name: 'TARGET_TAB'
              )
              ]
            ),
            Option(
              name: '--self',
              description: 'Detach the tab this command is run in, rather than the active tab'
            )
          ]
        ),
        Subcommand(
          name: 'detach-window',
          description: 'Detach the specified window',
          options: [
            Option(
              name: ['-m', '--match'],
              description: 'The window to match',
              args: [
                Arg(
                name: 'MATCH'
              )
              ]
            ),
            Option(
              name: ['-t', '--target-tab'],
              description: 'The tab to match',
              args: [
                Arg(
                name: 'TARGET_TAB'
              )
              ]
            ),
            Option(
              name: '--self',
              description: 'Detach the window this command is run in, rather than the active window'
            )
          ]
        ),
        Subcommand(
          name: 'disable-ligatures',
          description: 'Control ligature rendering for the specified windows/tabs',
          options: [
            Option(
              name: ['-a', '--all'],
              description: 'Disable in all windows'
            ),
            Option(
              name: ['-m', '--match'],
              description: 'The window to match',
              args: [
                Arg(
                name: 'MATCH'
              )
              ]
            ),
            Option(
              name: ['-t', '--match-tab'],
              description: 'The tab to match'
            )
          ],
          args: [
            Arg(
            name: 'STRATEGY',
            suggestions: [
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'always'),
              FigSuggestion(name: 'cursor')
            ]
          )
          ]
        ),
        Subcommand(
          name: 'env',
          description: 'Change the environment variables seen by processing in newly launched windows',
          args: [
            Arg(
            name: 'ENV',
            isVariadic: true
          )
          ]
        ),
        Subcommand(
          name: 'focus-tab',
          description: 'The active window in the specified tab will be focused',
          options: [
            Option(
              name: ['-m', '--match'],
              description: 'The tab to match',
              args: [
                Arg(
                name: 'MATCH'
              )
              ]
            ),
            Option(
              name: '--no-response',
              description: 'Don\'t wait for a response indicating the success of the action'
            )
          ]
        ),
        Subcommand(
          name: 'focus-window',
          description: 'Focus the specified window, if no window is specified, focus the window this command is run inside',
          options: [
            Option(
              name: ['-m', '--match'],
              description: 'The window to match',
              args: [
                Arg(
                name: 'MATCH'
              )
              ]
            ),
            Option(
              name: '--no-response',
              description: 'Don\'t wait for a response indicating the success of the action'
            )
          ]
        ),
        Subcommand(
          name: 'get-colors',
          description: 'Get the terminal colors for the specified window',
          options: [
            Option(
              name: ['-c', '--configured'],
              description: 'Instead of outputting the colors for the specified window, output the currently configured colors'
            ),
            Option(
              name: ['-m', '--match'],
              description: 'The window to match'
            )
          ]
        ),
        Subcommand(
          name: 'get-text'
        ),
        Subcommand(
          name: 'goto-layout'
        ),
        Subcommand(
          name: 'kitten',
          icon: '🐱'
        ),
        Subcommand(
          name: 'last-used-layout'
        ),
        Subcommand(
          name: 'launch'
        ),
        Subcommand(
          name: 'ls'
        ),
        Subcommand(
          name: 'new-window'
        ),
        Subcommand(
          name: 'remove-marker'
        ),
        Subcommand(
          name: 'resize-os-window'
        ),
        Subcommand(
          name: 'resize-window'
        ),
        Subcommand(
          name: 'scroll-window'
        ),
        Subcommand(
          name: 'select-window'
        ),
        Subcommand(
          name: 'send-text'
        ),
        Subcommand(
          name: 'set-background-image'
        ),
        Subcommand(
          name: 'set-background-opacity'
        ),
        Subcommand(
          name: 'set-colors'
        ),
        Subcommand(
          name: 'set-enabled-layouts'
        ),
        Subcommand(
          name: 'set-font-size'
        ),
        Subcommand(
          name: 'set-spacing'
        ),
        Subcommand(
          name: 'set-tab-color',
          description: 'The foreground and background colors when active and inactive can be overridden using this command',
          options: [
            Option(
              name: ['-m', '--match'],
              description: 'The tab to match',
              args: [
                Arg(
                name: 'MATCH'
              )
              ]
            ),
            Option(
              name: '--self',
              description: 'Close the window this command is run in, rather than the active window'
            )
          ]
        ),
        Subcommand(
          name: 'set-tab-title',
          description: 'Set the title for the specified tab(s)',
          options: [
            Option(
              name: ['-m', '--match'],
              description: 'The tab to match'
            )
          ]
        ),
        Subcommand(
          name: 'set-window-logo'
        ),
        Subcommand(
          name: 'set-window-title',
          description: 'Set the title of the specified window(s)',
          options: [
            Option(
              name: ['-m', '--match'],
              description: 'The window to match'
            ),
            Option(
              name: '--temporary',
              description: 'The title can be overwritten by escape sequences'
            )
          ]
        ),
        Subcommand(
          name: 'signal-child',
          description: 'Send one or more signals to the foreground process in the specified window(s)',
          options: [
            Option(
              name: ['-m', '--match'],
              description: 'The window to match'
            )
          ],
          args: [
            Arg(
            name: 'SIGNAL',
            isVariadic: true
          )
          ]
        )
      ]
    )
  ],
  args: [
    Arg(
  )
  ]
);
