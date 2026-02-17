// AI-generated from TypeScript source: micro.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

/// 布尔参数（默认值为 false）
final FigArg boolArgDefaultFalse = FigArg(
  name: 'bool',
  description: 'True/false',
  defaultValue: 'false',
  suggestions: ['true', 'false'],
);

/// 布尔参数（默认值为 true）
final FigArg boolArgDefaultTrue = FigArg(
  name: 'bool',
  description: 'True/false',
  defaultValue: 'true',
  suggestions: ['true', 'false'],
);

/// Completion spec for `micro` CLI
final FigSpec microSpec = FigSpec(
    name: 'micro',
    description: 'A modern and intuitive terminal-based text editor',
    subcommands: [
      Subcommand(name: '--plugin', description: 'Manage plugins', options: [
        Option(
            name: 'remove',
            description: 'Remove plugin(s)',
            args: [Arg(name: 'plugin', isVariadic: true)]),
        Option(
            name: 'update',
            description:
                'Update plugin(s) (if no argument is given, updates all plugins)',
            args: [Arg(name: 'plugin', isVariadic: true)]),
        Option(
            name: 'search',
            description: 'Search for a plugin',
            args: [Arg(name: 'plugin')]),
        Option(name: 'list', description: 'List installed plugins'),
        Option(name: 'available', description: 'List available plugins')
      ])
    ],
    options: [
      Option(
          name: '--clean', description: 'Cleans the configuration directory'),
      Option(
          name: '--config-dir',
          description:
              'Specify a custom location for the configuration directory',
          args: [Arg(name: 'dir')]),
      Option(name: '--options', description: 'Show all option help'),
      Option(name: '--debug', description: 'Enable debug mode'),
      Option(
          name: '--version',
          description: 'Show the version number and information'),
      Option(
          name: '--autoindent',
          description:
              'When creating a new line, use the same indentation as the previous line',
          args: boolArgDefaultTrue),
      Option(
          name: '--autosave',
          description:
              'Automatically save the buffer every <n> seconds. If set to 0, no autosaving is performed',
          args: [
            Arg(
                name: 'n',
                description: 'Seconds',
                defaultValue: '0',
                suggestions: [
                  FigSuggestion(name: '0'),
                  FigSuggestion(name: '60'),
                  FigSuggestion(name: '120'),
                  FigSuggestion(name: '300'),
                  FigSuggestion(name: '600'),
                  FigSuggestion(name: '1800')
                ])
          ]),
      Option(
          name: '--autosu',
          description:
              'Automatically attempt to use super user privileges to save without asking',
          args: boolArgDefaultFalse),
      Option(
          name: '--backup',
          description: 'Automatically keep backups of all open buffers',
          args: boolArgDefaultTrue),
      Option(
          name: '--backupdir',
          description: 'The directory to place backups in',
          args: [
            Arg(
                name: 'dir',
                defaultValue: '~/.config/micro.backups',
                template: 'folders',
                suggestions: [FigSuggestion(name: '~/.config/micro.backups')])
          ]),
      Option(
          name: '--basename',
          description:
              'In the infobar and tabbar, show only the basename of the file being edited rather than the full path',
          args: boolArgDefaultFalse),
      Option(
          name: '--clipboard',
          description: 'Apecifies how the system clipboard should be accessed',
          args: [
            Arg(name: 'type', defaultValue: 'external', suggestions: [
              FigSuggestion(
                  name: 'external',
                  description:
                      'Accesses clipboard via an external tool, such as xclip/xsel or wl-clipboard on Linux, pbcopy/pbpaste on MacOS, and system calls on Windows'),
              FigSuggestion(
                  name: 'terminal',
                  description:
                      'Accesses the clipboard via your terminal emulator'),
              FigSuggestion(
                  name: 'internal', description: 'Uses an internal clipboard')
            ])
          ]),
      Option(
          name: '--colorcolumn',
          description:
              'Display a color at the specified column if not set to 0',
          args: [
            Arg(name: 'value', defaultValue: '0', suggestions: [
              FigSuggestion(name: '0'),
              FigSuggestion(name: '1')
            ])
          ]),
      Option(
          name: '--colorscheme',
          description:
              'Loads the colorscheme stored in \$(configDir)/colorschemes/<scheme>.micro',
          args: [
            Arg(
                name: 'scheme',
                defaultValue: 'default',
                suggestions: [FigSuggestion(name: 'default')])
          ]),
      Option(
          name: '--cursorline',
          description:
              'Highlight the line that the cursor is on in a different color',
          args: boolArgDefaultTrue),
      Option(
          name: '--diffgutter',
          description: 'Display diff indicators before lines',
          args: boolArgDefaultFalse),
      Option(
          name: '--divchars',
          description:
              'Specifies the divider characters used for the dividing line between vertical/horizontal splits (the first character is for vertical dividers, and the second is for horizontal dividers)',
          args: [
            Arg(
                name: 'chars',
                defaultValue: '|-',
                suggestions: [FigSuggestion(name: '|-')])
          ]),
      Option(
          name: '--divreverse',
          description: 'Reverse colors specified by the colorscheme',
          args: boolArgDefaultFalse),
      Option(
          name: '--encoding',
          description: 'The encoding to open and save files with',
          args: [
            Arg(
                name: 'encoding',
                defaultValue: 'utf-8',
                suggestions: [FigSuggestion(name: 'utf-8')])
          ]),
      Option(
          name: '--eofnewline',
          description:
              'Automatically add a newline to the end of the file if one does not exist',
          args: boolArgDefaultTrue),
      Option(
          name: '--fastdirty',
          description:
              'Use \'fast dirty\' algorithm to determine if a buffer is modified or not',
          args: boolArgDefaultFalse),
      Option(
          name: '--fileformat',
          description: 'Type of line endings to be used for the file',
          args: [
            Arg(name: 'format', defaultValue: 'unix', suggestions: [
              FigSuggestion(name: 'unix'),
              FigSuggestion(name: 'dos')
            ])
          ]),
      Option(
          name: '--filetype',
          description: 'File type for the current buffer',
          args: [
            Arg(name: 'type', defaultValue: 'unknown', suggestions: [
              FigSuggestion(
                  name: 'unknown',
                  description:
                      'Automatically overridden depending on type of file opened'),
              FigSuggestion(
                  name: 'off', description: 'Disable file type detection')
            ])
          ]),
      Option(
          name: '--ignorecase',
          description: 'Perform case-insensitive searches',
          args: boolArgDefaultTrue),
      Option(
          name: '--incsearch',
          description: 'Enable incremental search in "Find" prompt',
          args: boolArgDefaultTrue),
      Option(
          name: '--indentchar',
          description: 'Sets the indentation character',
          args: [
            Arg(name: 'character', defaultValue: ' ', suggestions: [
              FigSuggestion(name: ' ', displayName: 'space'),
              FigSuggestion(name: '\\t', displayName: 'tab')
            ])
          ]),
      Option(
          name: '--infobar',
          description:
              'Enables the line at the bottom of the editor where messages are printed',
          args: boolArgDefaultTrue),
      Option(
          name: '--keepautoindent',
          description:
              'Remove trailing whitespace from a line with no insertions when moving to the next line',
          args: boolArgDefaultFalse),
      Option(
          name: '--keymenu',
          description:
              'Display the nano-style key menu at the bottom of the screen',
          args: boolArgDefaultFalse),
      Option(
          name: '--matchbrace',
          description:
              'Underline matching braces for \'()\', \'{}\', \'[]\' when the cursor is on a brace character',
          args: boolArgDefaultTrue),
      Option(
          name: '--mkparents',
          description:
              'Allow parent directories to be created automatically when opening a file on a path that doesn\'t exist',
          args: boolArgDefaultFalse),
      Option(
          name: '--mouse',
          description: 'Enable mouse support',
          args: boolArgDefaultTrue),
      Option(
          name: '--paste',
          description:
              'Treat characters sent from the terminal in a single chunk as a paste event rather than a series of manual key presses',
          args: boolArgDefaultFalse),
      Option(
          name: '--parsecursor',
          description:
              'Parse filenames such as file.txt:10:5 as requesting to open file.txt with the cursor at line 10 and column 5',
          args: boolArgDefaultFalse),
      Option(
          name: '--permbackup',
          description: 'Cause backups to be permanently saved',
          args: boolArgDefaultFalse),
      Option(
          name: '--pluginchannels',
          description:
              'List of URLs pointing to plugin channels for downloading and installing plugins',
          args: [
            Arg(
                name: 'url',
                isVariadic: true,
                defaultValue:
                    'https://raw.githubusercontent.com/micro-editor/plugin-channel/master/channel.json',
                suggestions: [
                  FigSuggestion(
                      name:
                          'https://raw.githubusercontent.com/micro-editor/plugin-channel/master/channel.json')
                ])
          ]),
      Option(
          name: '--pluginrepos',
          description: 'A list of links to plugin repositories',
          args: [Arg(name: 'link', isVariadic: true, defaultValue: '')]),
      Option(
          name: '--readonly',
          description: 'Disallow edits to the buffer',
          args: boolArgDefaultFalse),
      Option(
          name: '--relativeruler',
          description: 'Make line numbers display relatively',
          args: boolArgDefaultFalse),
      Option(
          name: '--rmtrailingws',
          description:
              'Automatically trim trailing whitespaces at ends of lines',
          args: boolArgDefaultFalse),
      Option(
          name: '--ruler',
          description: 'Display line numbers',
          args: boolArgDefaultTrue),
      Option(
          name: '--savecursor',
          description:
              'Remember where the cursor was last time the file was opened and put it there when re-opened',
          args: boolArgDefaultFalse),
      Option(
          name: '--savehistory',
          description:
              'Remember command history between closing and re-opening micro',
          args: boolArgDefaultTrue),
      Option(
          name: '--saveundo',
          description:
              'Remember undo state between closing and re-opening a file',
          args: boolArgDefaultFalse),
      Option(
          name: '--scrollbar',
          description: 'Display a scroll bar',
          args: boolArgDefaultFalse),
      Option(
          name: '--scrollmargin',
          description:
              'Margin at which the view starts scrolling when the cursor approaches the edge of the view',
          args: [
            Arg(name: 'margin', defaultValue: '3', suggestions: [
              FigSuggestion(name: '0'),
              FigSuggestion(name: '1'),
              FigSuggestion(name: '2'),
              FigSuggestion(name: '3'),
              FigSuggestion(name: '5'),
              FigSuggestion(name: '10')
            ])
          ]),
      Option(
          name: '--scrollspeed',
          description: 'Number of lines to scroll for one scroll event',
          args: [
            Arg(name: 'number', defaultValue: '2', suggestions: [
              FigSuggestion(name: '1'),
              FigSuggestion(name: '2'),
              FigSuggestion(name: '3'),
              FigSuggestion(name: '4'),
              FigSuggestion(name: '5')
            ])
          ]),
      Option(
          name: '--smartpaste',
          description: 'Add leading whitespace when pasting multiple lines',
          args: boolArgDefaultTrue),
      Option(
          name: '--softwrap',
          description: 'Wrap lines that are too long to fit on the screen',
          args: boolArgDefaultFalse),
      Option(
          name: '--splitbottom',
          description:
              'When a horizontal split is created, create it below the current split',
          args: boolArgDefaultTrue),
      Option(
          name: '--splitright',
          description:
              'When a vertical split is created, create it to the right of the current split',
          args: boolArgDefaultTrue),
      Option(
          name: '--statusformatl',
          description:
              'Format string definition for the left-justified part of the statusline',
          args: [Arg(name: 'format')]),
      Option(
          name: '--statusformatr',
          description:
              'Format string definition for the right-justified part of the statusline',
          args: [Arg(name: 'format')]),
      Option(
          name: '--statusline',
          description: 'Display the status line at the bottom of the screen',
          args: boolArgDefaultTrue),
      Option(name: '--sucmd', description: 'The super user command', args: [
        Arg(name: 'command', defaultValue: 'sudo', suggestions: [
          FigSuggestion(name: 'sudo'),
          FigSuggestion(name: 'doas')
        ])
      ]),
      Option(
          name: '--syntax',
          description: 'Enables syntax highlighting',
          args: boolArgDefaultTrue),
      Option(
          name: '--tabmovement',
          description:
              'Navigate spaces at the beginning of lines as if they are tabs',
          args: boolArgDefaultFalse),
      Option(
          name: '--tabsize',
          description:
              'The size in spaces that a tab character should be displayed with',
          args: [
            Arg(name: 'size', defaultValue: '4', suggestions: [
              FigSuggestion(name: '2'),
              FigSuggestion(name: '4'),
              FigSuggestion(name: '8'),
              FigSuggestion(name: '16')
            ])
          ]),
      Option(
          name: '--tabstospaces',
          description: 'Use spaces instead of tabs',
          args: boolArgDefaultFalse),
      Option(
          name: '--useprimary',
          description:
              'Use the primary clipboard to copy selections in the background',
          args: boolArgDefaultTrue),
      Option(
          name: '--wordwrap',
          description: 'Wrap long lines by words',
          args: boolArgDefaultFalse),
      Option(
          name: '--xterm',
          description:
              'Assume that the terminal conforms to xterm-256color regardless of what the \$TERM variable actually contains',
          args: boolArgDefaultFalse)
    ],
    args: [
      Arg(name: 'file', template: ['filepaths'], isOptional: true)
    ]);
