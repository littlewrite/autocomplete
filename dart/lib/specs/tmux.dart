// Auto-generated from TypeScript source: tmux.ts
// Generated at: 2026-02-16
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

FigArg lsArg(String name, String command) {
  return FigArg(
    name: name,
    generators: [
      FigGenerator(
        script: ['tmux', command],
        postProcess: (out, [tokens]) {
          return out
              .split('\n')
              .where((line) => line.trim().isNotEmpty)
              .map((line) {
            final content = line.split(':');
            return FigSuggestion(
              name: content[0].trim(),
              description: content.length > 1 ? content[1].trim() : '',
            );
          }).toList();
        },
      ),
    ],
  );
}

final FigArg sessionsArg = lsArg('target-session', 'ls');
final FigArg clientsArg = lsArg('target-client', 'lsc');
final FigArg panesArg = lsArg('src-pane', 'lsp');
final FigArg windowsArg = lsArg('window-name', 'lsw');
final FigArg buffersArg = lsArg('buffer-name', 'lsb');

final FigOption formatOption = FigOption(
  name: '-F',
  description: 'Format output',
  args: [
    FigArg(
      name: 'format',
      description: 'The format for the output of this command',
    ),
  ],
);

final FigOption flagsOption = FigOption(
  name: '-f',
  description: 'Set client flags',
  args: [
    FigArg(
      name: 'flags',
      description: 'Comma-separated list of flags',
      suggestions: [
        'active-pane',
        'ignore-size',
        'no-output',
        'pause-after',
        'read-only',
        'wait-exit',
      ],
    ),
  ],
);

/// Completion spec for `tmux` CLI
final FigSpec tmuxSpec =
    FigSpec(name: 'tmux', description: 'A terminal multiplexer', subcommands: [
  Subcommand(
      name: ['a', 'at', 'attach', 'attach-session'],
      description: 'Attach to last session',
      options: [
        Option(
            name: '-d',
            description: 'Detach all others clients to the session'),
        Option(
            name: '-x',
            description:
                'Send SIGHUP to the parent process and detach the client'),
        flagsOption,
        Option(
            name: '-c',
            description: 'Set the session\'s working directory',
            args: [
              Arg(
                  name: 'working-directory',
                  description: 'The session\'s working directory',
                  template: 'folders')
            ]),
        Option(name: '-E', description: 'Don\'t use update-environment option'),
        Option(
            name: '-t',
            description: 'Attach to a session with the given name',
            args: sessionsArg)
      ]),
  Subcommand(
      name: ['bind', 'bind-key'],
      description: 'Bind a key to a command',
      args: [
        Arg(name: 'key', description: 'The key to bind'),
        Arg(name: 'command', description: 'The command to bind to the key'),
        Arg(
            name: 'arguments',
            description: 'Arguments for the command',
            isVariadic: true,
            isOptional: true)
      ],
      options: [
        Option(name: '-n', description: 'Alias for -T root'),
        Option(name: '-r', description: 'Indicate that this key may repeat'),
        Option(
            name: '-N',
            description: 'Attach a note to the key',
            args: [Arg(name: 'note')]),
        Option(
            name: '-T',
            description: 'The key table to use',
            args: [Arg(name: 'key-table')])
      ]),
  Subcommand(
      name: ['breakp', 'break-pane'],
      description: 'Break a pane from an exiting into a new window',
      options: [
        Option(
            name: '-a', description: 'Move the window to the next index after'),
        Option(
            name: '-b',
            description: 'Move the window to the next index before'),
        Option(
            name: '-d',
            description: 'The new windows does not become the current window'),
        Option(
            name: '-P', description: 'Print information about the new window'),
        formatOption,
        Option(name: '-n', description: 'The target window', args: windowsArg),
        Option(name: '-s', description: 'The source pane', args: panesArg),
        Option(
            name: '-t', description: 'The destination window', args: windowsArg)
      ]),
  Subcommand(
      name: ['capturep', 'capture-pane'],
      description: 'Capture the contents of a pane to a buffer',
      options: [
        Option(
            name: '-a',
            description:
                'Use the alternate screen and history is not accessible'),
        Option(
            name: '-e',
            description:
                'Include escape sequences for text and background attributes'),
        Option(name: '-p', description: 'Redirect output to stdout'),
        Option(
            name: '-P',
            description:
                'Capture only outputs that is the beginning of an as-yet incomplete escape sequence'),
        Option(
            name: '-q',
            description:
                'Do not throw an error if not alternate screen is found'),
        Option(
            name: '-C',
            description: 'Escape non-printable characters as octal'),
        Option(
            name: '-J',
            description: 'Preserve trailing spaces and join any wrapped lines'),
        Option(
            name: '-N',
            description: 'Preserve trailing spaces at each line\'s end'),
        Option(name: '-b', description: 'The buffer name', args: buffersArg),
        Option(
            name: '-E',
            description: 'Ending line number',
            args: [Arg(name: 'end-line')]),
        Option(
            name: '-S',
            description: 'Starting line number',
            args: [Arg(name: 'start-line')]),
        Option(name: '-t', description: 'The target pane', args: panesArg)
      ]),
  Subcommand(
      name: 'choose-buffer',
      description: 'Put a pane into buffer choice mode',
      args: [
        Arg(
            name: 'template',
            isOptional: true,
            defaultValue: 'paste-buffer -b \'%%\'')
      ],
      options: [
        Option(name: '-N', description: 'Start without the preview'),
        Option(name: '-Z', description: 'Zoom the pane'),
        Option(name: '-r', description: 'Reverse the sort order'),
        formatOption,
        Option(
            name: '-f',
            description: 'Specify an initial filter',
            args: [Arg(name: 'filter')]),
        Option(name: '-O', description: 'Specify the sort order', args: [
          Arg(name: 'sort-order', suggestions: [
            FigSuggestion(name: 'time'),
            FigSuggestion(name: 'name'),
            FigSuggestion(name: 'size')
          ])
        ]),
        Option(name: '-t', description: 'The target pane', args: panesArg)
      ]),
  Subcommand(
      name: 'choose-client',
      description: 'Put a pane into buffer client mode',
      args: [
        Arg(
            name: 'template',
            isOptional: true,
            defaultValue: 'detach-client -t \'%%\'')
      ],
      options: [
        Option(name: '-N', description: 'Start without the preview'),
        Option(name: '-r', description: 'Reserve the sort order'),
        Option(name: '-Z', description: 'Zoom the pane'),
        formatOption,
        Option(
            name: '-f',
            description: 'Specify an initial filter',
            args: [Arg(name: 'filter')]),
        Option(
            name: '-O',
            description: 'Specify the initial sort field',
            args: [
              Arg(name: 'sort', suggestions: [
                FigSuggestion(name: 'name'),
                FigSuggestion(name: 'size'),
                FigSuggestion(name: 'creation'),
                FigSuggestion(name: 'activity')
              ])
            ]),
        Option(name: '-t', description: 'The target pane', args: panesArg)
      ]),
  Subcommand(
      name: 'choose-tree',
      description: 'Put a pane into buffer tree mode',
      args: [
        Arg(
            name: 'template',
            isOptional: true,
            defaultValue: 'switch-client -t \'%%\'')
      ],
      options: [
        Option(
            name: '-G',
            description:
                'Include all sessions in any session group in the tree'),
        Option(name: '-N', description: 'Start without the preview'),
        Option(name: '-r', description: 'Reserve the sort order'),
        Option(name: '-s', description: 'Start with sessions collapsed'),
        Option(name: '-w', description: 'Start with windows collapsed'),
        Option(name: '-Z', description: 'Zoom the pane'),
        formatOption,
        Option(
            name: '-f',
            description: 'Specify an initial filter',
            args: [Arg(name: 'filter')]),
        Option(
            name: '-O',
            description: 'Specify the initial sort field',
            args: [
              Arg(name: 'sort', suggestions: [
                FigSuggestion(name: 'name'),
                FigSuggestion(name: 'size'),
                FigSuggestion(name: 'creation'),
                FigSuggestion(name: 'activity')
              ])
            ]),
        Option(name: '-t', description: 'The target pane', args: panesArg)
      ]),
  Subcommand(
      name: ['clearhist', 'clear-history'],
      description: 'Remove and clear history for a pane'),
  Subcommand(name: 'clock-mode', description: 'Enter clock mode'),
  Subcommand(
      name: 'command-prompt',
      description: 'Open the tmux command prompt in a client',
      args: [
        Arg(
            name: 'template',
            description: 'If specified, used as a command',
            isOptional: true)
      ],
      options: [
        Option(name: '-l', description: 'The prompt only accept one key press'),
        Option(
            name: '-i',
            description:
                'Execute the command every time the prompt input changes'),
        Option(
            name: '-k',
            description:
                'Like -l but the key press is translated to a key name'),
        Option(
            name: '-N',
            description: 'The prompt only accept numeric key press'),
        Option(name: '-T', description: 'Tell that the prompt is for a target'),
        Option(name: '-W', description: 'Tell that the prompt is for a window'),
        Option(
            name: '-I',
            description:
                'Comma-separated list of the initial text for each prompt',
            args: [Arg(name: 'inputs')]),
        Option(
            name: '-p',
            description:
                'Comma-separated list of prompts which are displayed in order',
            args: [Arg(name: 'prompts')]),
        Option(name: '-t', description: 'The target client', args: clientsArg)
      ]),
  Subcommand(
      name: ['confirm', 'confirm-before'],
      description: 'Run a command but ask for confirmation before',
      args: [
        Arg(
            name: 'command',
            description: 'The command to run',
            isVariadic: true)
      ],
      options: [
        Option(
            name: '-p',
            description: 'A prompt to display for confirmation',
            args: [Arg(name: 'prompt')]),
        Option(name: '-t', description: 'The target client', args: clientsArg)
      ]),
  Subcommand(name: 'copy-mode', description: 'Enter copy mode', options: [
    Option(
        name: '-e',
        description: 'Scrolling to the bottom should exit copy mode'),
    Option(name: '-H', description: 'Hide the position indicator'),
    Option(name: '-M', description: 'Begin a mouse drag'),
    Option(name: '-q', description: 'Cancel copy mode and any other modes'),
    Option(name: '-u', description: 'Scroll one page up'),
    Option(name: '-s', description: 'The source pane', args: panesArg),
    Option(name: '-t', description: 'The target pane', args: panesArg)
  ]),
  Subcommand(
      name: ['deleteb', 'delete-buffer'],
      description: 'Delete a paste buffer',
      options: [
        Option(name: '-b', description: 'The target buffer', args: buffersArg)
      ]),
  Subcommand(
      name: ['detach', 'detach-client'],
      description: 'Detach a client from the server',
      options: [
        Option(
            name: '-a', description: 'Kills all but the client given with -t'),
        Option(name: '-P', description: 'Send SIGHUP to the parent process'),
        Option(
            name: '-E',
            description: 'Run the given shell-command to replace the client',
            args: [
              Arg(
                  name: 'shell-command',
                  description: 'The shell-command to run')
            ]),
        Option(name: '-t', description: 'The target client', args: clientsArg),
        Option(
            name: '-s',
            description: 'Detach all clients attached to the specified session',
            args: sessionsArg)
      ]),
  Subcommand(
      name: ['menu', 'display-menu'],
      description: 'Display menu on target-client',
      args: [
        Arg(name: 'name', description: 'The name of the menu'),
        Arg(name: 'key', description: 'The key to press to open the menu'),
        Arg(
            name: 'command',
            description: 'Commands to execute',
            isVariadic: true)
      ],
      options: [
        Option(
            name: '-O',
            description:
                'Do not close the menu when the mouse button is released'),
        Option(name: '-c', description: 'The target client', args: clientsArg),
        Option(name: '-t', description: 'The target pane', args: panesArg),
        Option(
            name: '-T',
            description: 'Specify a title',
            args: [Arg(name: 'title')]),
        Option(
            name: '-x',
            description: 'Give the x position of the menu',
            args: [Arg(name: 'position')]),
        Option(
            name: '-y',
            description: 'Give the y position of the menu',
            args: [Arg(name: 'position')])
      ]),
  Subcommand(
      name: ['display', 'display-message'],
      description: 'Display a message in the status line',
      args: [
        Arg(
            name: 'message',
            description: 'The message to display',
            isOptional: true)
      ],
      options: [
        Option(
            name: '-a',
            description: 'List the format variables and their values'),
        Option(
            name: '-I',
            description:
                'Forward any input read from stdin to the empty pane target-pane'),
        Option(name: '-p', description: 'Print output to stdout'),
        Option(
            name: '-v',
            description: 'Print verbose logging as the format is parsed',
            args: clientsArg),
        Option(
            name: '-d',
            description: 'A delay for the message',
            args: [Arg(name: 'delay')]),
        Option(name: '-t', description: 'The target pane', args: panesArg)
      ]),
  Subcommand(
      name: ['displayp', 'display-panes'],
      description: 'Display an indicator for each visible pane',
      args: [
        Arg(
            name: 'template',
            defaultValue: '\'select-pane -t %%\'',
            isOptional: true)
      ],
      options: [
        Option(
            name: '-b',
            description:
                'Do not block other commands from running until the indicator is closed'),
        Option(
            name: '-N',
            description: 'Do not close the indicator when a key is pressed'),
        Option(name: '-d', description: 'Specify the duration', args: [
          Arg(
              name: 'duration',
              description:
                  'The duration to close the indicator after in milliseconds')
        ]),
        Option(name: '-t', description: 'The target client', args: clientsArg)
      ]),
  Subcommand(
      name: ['findw', 'find-window'],
      description: 'Search for a pattern in windows',
      args: [Arg(name: 'match-string', description: 'A string to search for')],
      options: [
        Option(name: '-i', description: 'Make the search ignore cases'),
        Option(name: '-C', description: 'Match only visible window contents'),
        Option(name: '-N', description: 'Match only the window name'),
        Option(name: '-r', description: 'Search a regular expression'),
        Option(name: '-T', description: 'Match only the window\'s title'),
        Option(name: '-Z', description: 'Zoom the pane'),
        Option(name: '-t', description: 'The target pane', args: panesArg)
      ]),
  Subcommand(
      name: ['has', 'has-session'],
      description: 'Check and report if a session exists on the server',
      options: [
        Option(
            name: '-t',
            description: 'Specify the target session',
            args: sessionsArg)
      ]),
  Subcommand(
      name: ['if', 'if-shell'],
      description: 'Execute a tmux command if a shell-command succeeded'),
  Subcommand(
      name: ['joinp', 'join-pane', 'movep', 'move-pane'],
      description: 'Split a pane and move an existing one into the new space',
      options: [
        Option(
            name: '-b',
            description: 'Src-pane will be joined to left of or above dst-pane',
            args: panesArg),
        Option(name: '-l', description: 'Set the size of the new space', args: [
          Arg(name: 'size', description: 'The size of the new space')
        ]),
        Option(name: '-s', description: 'The source pane', args: panesArg),
        Option(name: '-t', description: 'The destination pane', args: panesArg)
      ]),
  Subcommand(
      name: ['killp', 'kill-pane'],
      description: 'Destroy a given pane',
      options: [
        Option(name: '-a', description: 'Kill all but the target-pane'),
        Option(name: '-t', description: 'The target pane', args: panesArg)
      ]),
  Subcommand(
      name: 'kill-server', description: 'Kill clients, session and server'),
  Subcommand(
      name: ['kill-ses', 'kill-session'],
      description: 'Kill/delete sessions',
      options: [
        Option(
            name: '-t',
            description: 'Kill/delete session with the given name',
            args: sessionsArg),
        Option(
            name: '-a', description: 'Kill/delete all session but the current'),
        Option(
            name: '-C',
            description:
                'Clear alerts (bell, activity, or silence) in all windows linked to the session')
      ]),
  Subcommand(
      name: ['killw', 'kill-window'],
      description: 'Destroy a given window',
      options: [
        Option(name: '-a', description: 'Kill all but the target-window'),
        Option(name: '-t', description: 'The target window', args: windowsArg)
      ]),
  Subcommand(
      name: ['lastp', 'last-pane'],
      description: 'Select the previously selected pane',
      options: [
        Option(name: '-d', description: 'Disable input to the pane'),
        Option(name: '-e', description: 'Enable input to the pane'),
        Option(
            name: '-Z', description: 'Keep the window zoomed if it was zoomed'),
        Option(name: '-t', description: 'The target window', args: windowsArg)
      ]),
  Subcommand(
      name: ['last', 'last-window'],
      description: 'Select the previously selected window',
      options: [
        Option(
            name: '-t',
            description:
                'Select the previously select window of the target-session',
            args: sessionsArg)
      ]),
  Subcommand(
      name: ['linkw', 'link-window'],
      description: 'Link a window to another',
      options: [
        Option(
            name: '-a',
            description: 'Move the window to the next index after dst-window'),
        Option(
            name: '-b',
            description: 'Move the window to the next index before dst-window'),
        Option(
            name: '-d', description: 'Do not select the newly linked window'),
        Option(name: '-k', description: 'Kill dst-window if exist'),
        Option(name: '-s', description: 'The source window', args: windowsArg),
        Option(
            name: '-t', description: 'The destination window', args: windowsArg)
      ]),
  Subcommand(
      name: ['lsb', 'list-buffers'],
      description: 'List paste buffers of a session'),
  Subcommand(
      name: ['lsc', 'list-clients'],
      description: 'List clients attached to a server',
      options: [
        formatOption,
        Option(
            name: '-t',
            description: 'List only clients connected to that session',
            args: sessionsArg)
      ]),
  Subcommand(
      name: ['lscm', 'list-commands'],
      description: 'List supported sub-commands',
      args: [
        Arg(
            name: 'command',
            description: 'The command to list syntax of',
            isOptional: true)
      ],
      options: [formatOption]),
  Subcommand(name: ['lsk', 'list-keys'], description: 'List all key-bindings'),
  Subcommand(
      name: ['lsp', 'list-panes'],
      description: 'List panes of a window',
      options: [
        Option(
            name: '-a', description: 'Ignore target-window and list all panes'),
        Option(name: '-s', description: 'Target-window becomes a session'),
        formatOption,
        Option(
            name: '-f',
            description: 'Specify a filter',
            args: [Arg(name: 'filter')]),
        Option(name: '-t', description: 'The target window', args: windowsArg)
      ]),
  Subcommand(
      name: ['ls', 'list-sessions'],
      description: 'List sessions managed by a server',
      options: [
        formatOption,
        Option(
            name: '-f',
            description: 'Filter the sessions',
            args: [Arg(name: 'filter')])
      ]),
  Subcommand(
      name: ['lsw', 'list-windows'],
      description: 'List windows of a session',
      options: [
        Option(
            name: '-a',
            description: 'Ignore target-session and list all windows'),
        formatOption,
        Option(
            name: '-f',
            description: 'Specify a filter',
            args: [Arg(name: 'filter')]),
        Option(name: '-t', description: 'The target session', args: sessionsArg)
      ]),
  Subcommand(
      name: ['loadb', 'load-buffer'],
      description: 'Load a file into a paste buffer',
      args: [Arg(name: 'path', description: 'Load from this path')],
      options: [
        Option(name: '-w', description: 'Send the buffer to the clipboard'),
        Option(name: '-b', description: 'The target buffer', args: buffersArg),
        Option(name: '-t', description: 'The target client', args: clientsArg)
      ]),
  Subcommand(
      name: ['lockc', 'lock-client'],
      description: 'Lock a client',
      options: [
        Option(name: '-t', description: 'The target client', args: clientsArg)
      ]),
  Subcommand(
      name: ['lock', 'lock-server'],
      description: 'Lock all clients attached to the server'),
  Subcommand(
      name: ['locks', 'lock-session'],
      description: 'Lock all clients attached to a session',
      options: [
        Option(
            name: '-t',
            description: 'Lock all clients attached to target-session',
            args: sessionsArg)
      ]),
  Subcommand(
      name: ['movew', 'move-window'],
      description: 'Move a window to another',
      options: [
        Option(
            name: '-a',
            description: 'Move the window to the next index after dst-window'),
        Option(
            name: '-b',
            description: 'Move the window to the next index before dst-window'),
        Option(
            name: '-r',
            description:
                'Renumber all windows in the session in sequential order'),
        Option(
            name: '-d', description: 'Do not select the newly linked window'),
        Option(name: '-k', description: 'Kill dst-window if exist'),
        Option(name: '-s', description: 'The source window', args: windowsArg),
        Option(
            name: '-t', description: 'The destination window', args: windowsArg)
      ]),
  Subcommand(
      name: ['new', 'new-session'],
      description: 'Create a new session',
      args: [
        Arg(
            name: 'shell-command',
            description: 'A shell command to run when creating the session')
      ],
      options: [
        Option(
            name: '-A',
            description:
                'Behave like attach-session if session-name already exist'),
        Option(
            name: '-d', description: 'Use the initial size from default-size'),
        Option(name: '-D', description: 'Behave like -d if -A is set'),
        Option(name: '-E', description: 'Do not use update-environment option'),
        Option(
            name: '-P', description: 'Print information about the new session'),
        Option(name: '-X', description: 'Behave like -x if -A is set'),
        Option(
            name: '-c',
            description: 'Specify a start directory for the session',
            args: [
              Arg(
                  name: 'start-directory',
                  description: 'The start directory',
                  template: 'folders')
            ]),
        Option(name: '-e', description: 'Set environment variables', args: [
          Arg(
              name: 'environment',
              description: 'Environment variables with the form VARIABLE=VALUE')
        ]),
        flagsOption,
        formatOption,
        Option(
            name: '-n',
            description: 'Start a new session with the given name',
            args: [Arg(name: 'window-name')]),
        Option(
            name: '-s',
            description: 'Start a new session with the given name',
            args: [Arg(name: 'session-name')]),
        Option(
            name: '-t',
            description: 'The name of the group',
            args: [Arg(name: 'group-name')]),
        Option(
            name: '-x',
            description: 'The width of the session',
            args: [Arg(name: 'width')]),
        Option(
            name: '-y',
            description: 'The height of the session',
            args: [Arg(name: 'height')])
      ]),
  Subcommand(
      name: ['neww', 'new-window'],
      description: 'Create a new window',
      args: [
        Arg(
            name: 'shell-command',
            description: 'A shell command to run when creating the window')
      ],
      options: [
        Option(
            name: '-a',
            description:
                'Insert the new window at the next index after target-window'),
        Option(
            name: '-b',
            description:
                'Insert the new window at the next index before target-window'),
        Option(
            name: '-d',
            description:
                'The session does not make the new window the current window'),
        Option(name: '-k', description: 'Kill the target-window if exist'),
        Option(
            name: '-P', description: 'Print information about the new window'),
        Option(name: '-S', description: 'Select window-name if exist'),
        Option(
            name: '-c',
            description: 'Specify a start directory for the window',
            args: [
              Arg(
                  name: 'start-directory',
                  description: 'The start directory',
                  template: 'folders')
            ]),
        Option(name: '-e', description: 'Set environment variables', args: [
          Arg(
              name: 'environment',
              description: 'Environment variables with the form VARIABLE=VALUE')
        ]),
        formatOption,
        Option(
            name: '-n',
            description: 'Start a new window with the given name',
            args: [Arg(name: 'window-name')]),
        Option(name: '-t', description: 'The target window', args: windowsArg)
      ]),
  Subcommand(
      name: ['nextl', 'next-layout'],
      description: 'Move a window to the next layout',
      options: [
        Option(name: '-t', description: 'The target pane', args: panesArg)
      ]),
  Subcommand(
      name: ['next', 'next-window'],
      description: 'Move to the next window in a session',
      options: [
        Option(
            name: '-a', description: 'Move to the next window with an alert'),
        Option(
            name: '-t',
            description: 'Move to the next window of the target-session',
            args: sessionsArg)
      ]),
  Subcommand(
      name: ['pasteb', 'paste-buffer'],
      description: 'Insert a paste buffer into the window'),
  Subcommand(
      name: ['pipep', 'pipe-pane'],
      description: 'Pipe output from a pane to a shell command',
      args: [
        Arg(
            name: 'shell-command',
            description: 'The shell-command to run',
            isOptional: true)
      ],
      options: [
        Option(name: '-I', description: 'Connect stdout to shell-command'),
        Option(name: '-O', description: 'Connect stdin to shell-command'),
        Option(
            name: '-o',
            description: 'Only open a new pipe if no previous pipe exists'),
        Option(name: '-t', description: 'The target pane', args: panesArg)
      ]),
  Subcommand(
      name: ['prevl', 'previous-layout'],
      description: 'Move a window to the previous layout',
      options: [
        Option(name: '-t', description: 'The target window', args: windowsArg)
      ]),
  Subcommand(
      name: ['prev', 'previous-window'],
      description: 'Move to the previous window in a session',
      options: [
        Option(name: '-a', description: 'Move with an alert'),
        Option(
            name: '-t',
            description: 'Move to the previous window of the target-session',
            args: sessionsArg)
      ]),
  Subcommand(
      name: ['refresh', 'refresh-client'],
      description: 'Refresh a client',
      args: [
        Arg(
            name: 'adjustment',
            description: 'An adjustment value to use',
            isOptional: true)
      ],
      options: [
        Option(name: '-c', description: 'Return the tracking cursor'),
        Option(
            name: '-D',
            description: 'Allow the visible portion of a window to be changed'),
        Option(
            name: '-l', description: 'Request the clipboard from the client'),
        Option(
            name: '-L',
            description: 'Allow the visible portion of a window to be changed'),
        Option(
            name: '-R',
            description: 'Allow the visible portion of a window to be changed'),
        Option(
            name: '-S', description: 'Only update the client\'s status line'),
        Option(
            name: '-U',
            description: 'Allow the visible portion of a window to be changed'),
        Option(name: '-A', description: 'The target pane', args: panesArg),
        Option(
            name: '-B',
            description: 'A subscription to a format for a control mode',
            args: [Arg(name: 'subscription')]),
        Option(
            name: '-C',
            description: 'Set the width and height',
            args: [Arg(name: 'XxY')]),
        flagsOption,
        Option(name: '-t', description: 'The target client', args: clientsArg)
      ]),
  Subcommand(
      name: ['rename', 'rename-session'],
      description: 'Rename a session',
      options: [
        Option(
            name: '-t',
            description: 'Rename the target-session',
            args: sessionsArg)
      ],
      args: [
        Arg(name: 'new-name', description: 'The new name of the session')
      ]),
  Subcommand(
      name: ['renamew', 'rename-window'],
      description: 'Rename a window',
      args: [Arg(name: 'new-name', description: 'The new name of the window')],
      options: [
        Option(name: '-t', description: 'The target window', args: windowsArg)
      ]),
  Subcommand(
      name: ['resizep', 'resize-pane'],
      description: 'Resize a pane',
      args: [
        Arg(name: 'adjustment', description: 'Adjustment used with -ULDR')
      ],
      options: [
        Option(name: '-D', description: 'Resize down by adjustment'),
        Option(name: '-L', description: 'Resize left by adjustment'),
        Option(name: '-M', description: 'Begin mouse resizing'),
        Option(name: '-R', description: 'Resize right by adjustment'),
        Option(
            name: '-T',
            description: 'Trim all lines below the current cursor position'),
        Option(name: '-U', description: 'Resize up by adjustment'),
        Option(
            name: '-Z',
            description: 'Toggle the active pane between zoomed and unzoomed'),
        Option(name: '-t', description: 'The target pane', args: panesArg),
        Option(
            name: '-x',
            description: 'The width of the pane',
            args: [Arg(name: 'width')]),
        Option(
            name: '-y',
            description: 'The height of the pane',
            args: [Arg(name: 'height')])
      ]),
  Subcommand(
      name: ['resizew', 'resize-window'],
      description: 'Resize a window',
      args: [
        Arg(name: 'adjustment', description: 'Adjustment used with -ULDR')
      ],
      options: [
        Option(
            name: '-a',
            description:
                'Set the size of the smallest session containing the window'),
        Option(
            name: '-A',
            description:
                'Set the size of the largest session containing the window'),
        Option(name: '-D', description: 'Resize down by adjustment'),
        Option(name: '-L', description: 'Resize left by adjustment'),
        Option(name: '-R', description: 'Resize right by adjustment'),
        Option(name: '-U', description: 'Resize up by adjustment'),
        Option(name: '-t', description: 'The target window', args: windowsArg),
        Option(
            name: '-x',
            description: 'The width of the pane',
            args: [Arg(name: 'width')]),
        Option(
            name: '-y',
            description: 'The height of the pane',
            args: [Arg(name: 'height')])
      ]),
  Subcommand(
      name: ['respawnp', 'respawn-pane'],
      description: 'Reactivate a pane in which a command has exited',
      args: [
        Arg(
            name: 'shell-command',
            description: 'A shell command to run when creating the pane',
            isOptional: true)
      ],
      options: [
        Option(name: '-k', description: 'Kill the target-pane if exist'),
        Option(
            name: '-c',
            description: 'Specify a start directory for the pane',
            args: [
              Arg(
                  name: 'start-directory',
                  description: 'The start directory',
                  template: 'folders')
            ]),
        Option(name: '-e', description: 'Set environment variables', args: [
          Arg(
              name: 'environment',
              description: 'Environment variables with the form VARIABLE=VALUE')
        ]),
        Option(name: '-t', description: 'The target pane', args: panesArg)
      ]),
  Subcommand(
      name: ['respawnw', 'respawn-window'],
      description: 'Reactivate a window in which a command has exited',
      args: [
        Arg(
            name: 'shell-command',
            description: 'A shell command to run when creating the window',
            isOptional: true)
      ],
      options: [
        Option(name: '-k', description: 'Kill the target-window if exist'),
        Option(
            name: '-c',
            description: 'Specify a start directory for the window',
            args: [
              Arg(
                  name: 'start-directory',
                  description: 'The start directory',
                  template: 'folders')
            ]),
        Option(name: '-e', description: 'Set environment variables', args: [
          Arg(
              name: 'environment',
              description: 'Environment variables with the form VARIABLE=VALUE')
        ]),
        Option(name: '-t', description: 'The target window', args: windowsArg)
      ]),
  Subcommand(
      name: ['rotatew', 'rotate-window'],
      description: 'Rotate positions of panes in a window',
      options: [
        Option(name: '-D', description: 'Rotate upward'),
        Option(name: '-U', description: 'Rotate downward'),
        Option(
            name: '-Z', description: 'Keep the window zoomed if it was zoomed'),
        Option(name: '-t', description: 'The target window', args: windowsArg)
      ]),
  Subcommand(
      name: ['run', 'run-shell'],
      description: 'Execute a command without create a new window'),
  Subcommand(
      name: ['saveb', 'save-buffer'],
      description: 'Save a paste buffer to a file'),
  Subcommand(
      name: ['selectl', 'select-layout'],
      description: 'Choose a layout for a pane',
      args: [
        Arg(
            name: 'layout-name',
            description: 'Use the last preset layout used if not specified',
            isOptional: true)
      ],
      options: [
        Option(
            name: '-E',
            description:
                'Spread the current pane and any panes next to it evenly'),
        Option(name: '-n', description: 'Equivalent to next-layout'),
        Option(
            name: '-o', description: 'Apply the last set layout if possible'),
        Option(name: '-p', description: 'Equivalent to previous-layout'),
        Option(name: '-t', description: 'The target pane', args: panesArg)
      ]),
  Subcommand(
      name: ['selectp', 'select-pane'],
      description: 'Make a pane the active one in the window',
      options: [
        Option(name: '-D', description: 'Use the down pane'),
        Option(name: '-d', description: 'Disable input to the pane'),
        Option(name: '-e', description: 'Enable input to the pane'),
        Option(name: '-L', description: 'Use the left pane'),
        Option(name: '-l', description: 'Same as last-pane command'),
        Option(name: '-M', description: 'Clear the marked pane'),
        Option(name: '-m', description: 'Set the market pane'),
        Option(name: '-R', description: 'Use the right pane'),
        Option(name: '-U', description: 'Use the up pane'),
        Option(name: '-Z', description: 'Set the pane\'s title'),
        Option(
            name: '-T',
            description: 'Set the pane title',
            args: [Arg(name: 'title')]),
        Option(name: '-t', description: 'The target pane', args: panesArg)
      ]),
  Subcommand(
      name: ['selectw', 'select-window'],
      description: 'Select a window',
      options: [
        Option(name: '-l', description: 'Same as last-window'),
        Option(name: '-n', description: 'Same as next-window'),
        Option(name: '-p', description: 'Same as previous-window'),
        Option(
            name: '-T',
            description:
                'Same as last-window if the selected window is already the current window'),
        Option(name: '-t', description: 'The target window', args: windowsArg)
      ]),
  Subcommand(
      name: ['send', 'send-keys'], description: 'Send key(s) to a window'),
  Subcommand(
      name: 'send-prefix', description: 'Send the prefix key to a window'),
  Subcommand(
      name: ['info', 'server-info'],
      description: 'Show every session, window, pane, etc'),
  Subcommand(
      name: ['setb', 'set-buffer'],
      description: 'Set content of a paste buffer',
      args: [Arg(name: 'data', description: 'The data to set in the buffer')],
      options: [
        Option(
            name: '-a',
            description: 'Append to rather than overwriting the buffer'),
        Option(name: '-w', description: 'Send the buffer to the clipboard'),
        Option(
            name: '-b',
            description: 'The name of the buffer',
            args: buffersArg),
        Option(name: '-t', description: 'The target client', args: clientsArg),
        Option(
            name: '-n',
            description: 'The new name of the buffer',
            args: [Arg(name: 'new-buffer-name')])
      ]),
  Subcommand(
      name: ['setenv', 'set-environment'],
      description: '(Un)set an environment variable'),
  Subcommand(name: 'set-hook', description: 'Set a hook to a command'),
  Subcommand(name: ['set', 'set-option'], description: 'Set a session option'),
  Subcommand(
      name: ['setw', 'set-window-option'], description: 'Set a window option'),
  Subcommand(
      name: ['showb', 'show-buffer'],
      description: 'Display the contents of a paste buffer'),
  Subcommand(
      name: ['showenv', 'show-environment'],
      description: 'Display the environment',
      options: [
        Option(
            name: '-t',
            description: 'Display the environment of the target-session',
            args: sessionsArg)
      ]),
  Subcommand(name: 'show-hooks', description: 'Show the global list of hooks'),
  Subcommand(
      name: ['showmsgs', 'show-messages'],
      description: 'Show client\'s message log',
      options: [
        Option(
            name: '-T',
            description: 'Show debugging information about terminals'),
        Option(
            name: '-J', description: 'Show debugging information about jobs'),
        Option(name: '-t', description: 'The target client', args: clientsArg)
      ]),
  Subcommand(
      name: ['show', 'show-options'], description: 'Show session options'),
  Subcommand(
      name: ['showw', 'show-winsow-options'],
      description: 'Show window options'),
  Subcommand(
      name: ['source', 'source-file'],
      description: 'Execute tmux commands from a file',
      args: [Arg(name: 'path', isVariadic: true)],
      options: [
        Option(name: '-F', description: 'Expand path as a format'),
        Option(
            name: '-n', description: 'Parse the file but don\'t run commands'),
        Option(
            name: '-q',
            description: 'Don\'t return any error if path does not exist'),
        Option(
            name: '-v',
            description: 'Show the parsed command and line numbers if possible')
      ]),
  Subcommand(
      name: ['splitw', 'split-window'],
      description: 'Splits a pane into two',
      args: [
        Arg(
            name: 'shell-command',
            description: 'A shell command to run when creating the pane',
            isOptional: true)
      ],
      options: [
        Option(
            name: '-b',
            description:
                'Create the new pane to the left of or above target-pane'),
        Option(
            name: '-f',
            description:
                'Create a new pane spanning the full window height with -h or width with -v'),
        Option(name: '-h', description: 'Set the pane take full height'),
        Option(
            name: '-I',
            description: 'Create an empty pane and forward stdin to it'),
        Option(name: '-v', description: 'Set the pane take full width'),
        Option(name: '-Z', description: 'Zoom if the window is not zoomed'),
        Option(
            name: '-c',
            description: 'Specify a start directory for the pane',
            args: [
              Arg(
                  name: 'start-directory',
                  description: 'The start directory',
                  template: 'folders')
            ]),
        Option(name: '-e', description: 'Set environment variables', args: [
          Arg(
              name: 'environment',
              description: 'Environment variables with the form VARIABLE=VALUE')
        ]),
        Option(
            name: '-l',
            description:
                'Set the size in columns (horizontal split) or rows (vertical split)',
            args: [Arg(name: 'size')]),
        Option(name: '-t', description: 'The target pane', args: panesArg),
        formatOption
      ]),
  Subcommand(
      name: ['start', 'start-server'], description: 'Start a tmux server'),
  Subcommand(
      name: ['suspendc', 'suspend-client'],
      description: 'Suspend a client',
      options: [
        Option(name: '-t', description: 'The target client', args: clientsArg)
      ]),
  Subcommand(
      name: ['swapp', 'swap-pane'],
      description: 'Swap two panes',
      options: [
        Option(name: '-d', description: 'Do not change the active pane'),
        Option(name: '-D', description: 'Swap with the next pane'),
        Option(name: '-U', description: 'Swap dst-pane with the previous pane'),
        Option(
            name: '-Z', description: 'Keep the window zoomed if it was zoomed'),
        Option(name: '-s', description: 'The source pane', args: panesArg),
        Option(name: '-t', description: 'The destination pane', args: panesArg)
      ]),
  Subcommand(
      name: ['swapw', 'swap-window'],
      description: 'Swap two windows',
      options: [
        Option(
            name: '-d',
            description: 'The new window does not become the current window'),
        Option(name: '-s', description: 'The source window', args: windowsArg),
        Option(
            name: '-t', description: 'The destination window', args: windowsArg)
      ]),
  Subcommand(
      name: ['switchc', 'switch-client'],
      description: 'Switch the client to another session',
      options: [
        Option(name: '-E', description: 'Do not use update-environment option'),
        Option(name: '-l', description: 'Move the client to the last session'),
        Option(name: '-n', description: 'Move the client to the next session'),
        Option(
            name: '-p', description: 'Move the client to the previous session'),
        Option(
            name: '-r',
            description: 'Toggle the client read-only and ignore-size flags'),
        Option(
            name: '-Z', description: 'Keep the window zoomed if it was zoomed'),
        Option(name: '-c', description: 'The target client', args: clientsArg),
        Option(
            name: '-t',
            description: 'Switch the client to the target-session',
            args: sessionsArg),
        Option(
            name: '-T',
            description: 'Set the client\'s key table',
            args: [Arg(name: 'key-table')])
      ]),
  Subcommand(
      name: ['unbind', 'unbind-key'],
      description: 'Unbind a key',
      args: [Arg(name: 'key', description: 'The key to unbind')],
      options: [
        Option(name: '-a', description: 'Remove all key-bindings'),
        Option(name: '-n', description: 'Alias for -T root'),
        Option(name: '-q', description: 'Prevent errors being returned'),
        Option(
            name: '-T',
            description: 'The key table to use',
            args: [Arg(name: 'key-table')])
      ]),
  Subcommand(
      name: ['unlinkw', 'unlink-window'],
      description: 'Unlink a window',
      options: [
        Option(name: '-k', description: 'Destroy the window'),
        Option(name: '-t', description: 'The target window', args: windowsArg)
      ]),
  Subcommand(
      name: ['wait', 'wait-for'],
      description: 'Wait for an event or trigger it',
      args: [Arg(name: 'channel', description: 'Wait for this channel')],
      options: [
        Option(
            name: '-L', description: 'Lock the channel', exclusiveOn: ['-U']),
        Option(
            name: '-U', description: 'Unlock the channel', exclusiveOn: ['-L'])
      ])
], additionalSuggestions: [
  FigSuggestion(
      name: 'new -s \'name\'',
      description: 'Create a new session shortcut',
      insertValue: 'new -s \'{cursor}\'',
      icon: 'fig://template?color=2ecc71&badge=🔥')
]);
