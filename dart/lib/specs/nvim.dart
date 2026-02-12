// Auto-generated from TypeScript source: nvim.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `nvim` CLI
final FigSpec nvimSpec = FigSpec(
  name: 'nvim',
  description: 'Hyperextensible Vim-based text editor',
  args: [
    Arg(
    template: ['filepaths', 'folders']
  )
  ],
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  ),
  options: [
    Option(
      name: '+',
      description: 'Start at end of file'
    ),
    Option(
      name: '--cmd',
      args: [
        Arg(
        name: 'cm'
      )
      ],
      description: 'Execute <cmd> before any config'
    ),
    Option(
      name: '-c',
      args: [
        Arg(
        name: 'cm'
      )
      ],
      description: 'Execute <cmd> after config and first file'
    ),
    Option(
      name: '-b',
      description: 'Binary mode'
    ),
    Option(
      name: '-d',
      description: 'Diff mode'
    ),
    Option(
      name: ['-e', '-E'],
      description: 'Ex mode'
    ),
    Option(
      name: ['-es', '-Es'],
      description: 'Silent (batch) mode'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print this help message'
    ),
    Option(
      name: '-i',
      args: [
        Arg(
        name: 'shada',
        template: 'filepath'
      )
      ],
      description: 'Use this shada file'
    ),
    Option(
      name: '-m',
      description: 'Modifications (writing files) not allowed'
    ),
    Option(
      name: '-M',
      description: 'Modifications in text not allowed'
    ),
    Option(
      name: '-n',
      description: 'No swap file, use memory only'
    ),
    Option(
      name: '-o',
      args: [
        Arg(
        name: ''
      )
      ],
      description: 'Open N windows (default: one per file)'
    ),
    Option(
      name: '-O',
      args: [
        Arg(
        name: ''
      )
      ],
      description: 'Open N vertical windows (default: one per file)'
    ),
    Option(
      name: '-p',
      args: [
        Arg(
        name: ''
      )
      ],
      description: 'Open N tab pages (default: one per file)'
    ),
    Option(
      name: '-L',
      description: 'List swap files'
    ),
    Option(
      name: '-r',
      args: [
        Arg(
        name: 'file',
        template: 'filepath'
      )
      ],
      description: 'Recover edit state for this file'
    ),
    Option(
      name: '-R',
      description: 'Read-only mode'
    ),
    Option(
      name: '-S',
      args: [
        Arg(
        name: 'session',
        template: 'filepath'
      )
      ],
      description: 'Source <session> after loading the first file'
    ),
    Option(
      name: '-s',
      args: [
        Arg(
        name: 'scriptin',
        template: 'filepath'
      )
      ],
      description: 'Read Normal mode commands from <scriptin>'
    ),
    Option(
      name: '-u',
      args: [
        Arg(
        name: 'config',
        template: 'filepath'
      )
      ],
      description: 'Use this config file'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Print version information'
    ),
    Option(
      name: '--api-info',
      description: 'Write msgpack-encoded API metadata to stdout'
    ),
    Option(
      name: '--embed',
      description: 'Use stdin/stdout as a msgpack-rpc channel'
    ),
    Option(
      name: '--headless',
      description: 'Don\'t start a user interface'
    ),
    Option(
      name: '--listen',
      args: [
        Arg(
        name: 'addres'
      )
      ],
      description: 'Serve RPC API from this address'
    ),
    Option(
      name: '--noplugin',
      description: 'Don\'t load plugins'
    ),
    Option(
      name: ['--remote', '--remote-subcommand'],
      description: 'Execute commands remotely on a server'
    ),
    Option(
      name: '--server',
      args: [
        Arg(
        name: 'addres'
      )
      ],
      description: 'Specify RPC server to send commands to'
    ),
    Option(
      name: '--startuptime',
      args: [
        Arg(
        name: 'file',
        template: 'filepath'
      )
      ],
      description: 'Write startup timing messages to <file>'
    )
  ]
);
