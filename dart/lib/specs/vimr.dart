// Auto-generated from TypeScript source: vimr.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `vimr` CLI
final FigSpec vimrSpec = FigSpec(
  name: 'vimr',
  description: 'VimR — Neovim GUI for macOS in Swift',
  args: [
    Arg(
    template: ['filepaths', 'folders']
  )
  ],
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Show help'
    ),
    Option(
      name: '--dry-run',
      description: 'Just print the \'open\' command'
    ),
    Option(
      name: '--cwd',
      description: 'Set the working directory',
      args: [
        Arg(
        name: 'CWD'
      )
      ]
    ),
    Option(
      name: '--line',
      description: 'Go to line',
      args: [
        Arg(
        name: 'LINE'
      )
      ]
    ),
    Option(
      name: '--wait',
      description: 'This command line tool will exit when the corresponding UI window is closed'
    ),
    Option(
      name: '--nvim',
      description: 'All arguments except --cur-env, --line, --dry-run and --wait will be passed over to the (new) nvim instance in a new UI window'
    ),
    Option(
      name: '--cur-env',
      description: 'Use the current environment variables when launching the background neovim process. All files will be opened in a new window'
    ),
    Option(
      name: '-n',
      description: 'Open files in tabs in a new window'
    ),
    Option(
      name: '-s',
      description: 'Open files in separate windows'
    )
  ]
);
