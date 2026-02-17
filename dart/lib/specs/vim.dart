// Auto-generated from TypeScript source: vim.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `vim` CLI
final FigSpec vimSpec = FigSpec(
  name: 'vim',
  description: 'Vi IMproved, a programmer\'s text editor',
  args: [
    Arg(
    template: 'filepaths'
  )
  ],
  options: [

    Option(
      name: '-v',
      description: 'Vi mode (like \'vi\')'
    ),
    Option(
      name: '-e',
      description: 'Ex mode (like \'ex\')'
    ),
    Option(
      name: '-E',
      description: 'Improved Ex mode'
    ),
    Option(
      name: '-s',
      description: 'Enable silent mode (when in ex mode), or Read Normal mode commands from file',
      args: [
        Arg(
        name: 'scriptin',
        template: 'filepaths',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-d',
      description: 'Diff mode (like \'vimdiff\')'
    ),
    Option(
      name: '-y',
      description: 'Easy mode (like \'evim\', modeless)'
    ),
    Option(
      name: '-R',
      description: 'Readonly mode (like \'view\')'
    ),
    Option(
      name: '-Z',
      description: 'Restricted mode (like \'rvim\')'
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
      name: '-b',
      description: 'Binary mode'
    ),
    Option(
      name: '-l',
      description: 'Lisp mode'
    ),
    Option(
      name: '-C',
      description: 'Compatible with Vi: \'compatible\''
    ),
    Option(
      name: '-N',
      description: 'Not fully Vi compatible: \'nocompatible\''
    ),
    Option(
      name: '-V',
      description: 'Be verbose [level N] [log messages to fname]',
      args: [

        Arg(
          name: 'N'
        ),
        Arg(
          name: 'fname',
          template: 'filepaths'
        )
      ]
    ),
    Option(
      name: '-D',
      description: 'Debugging mode'
    ),
    Option(
      name: '-n',
      description: 'No swap file, use memory only'
    ),
    Option(
      name: '-r',
      description: 'Recover crashed session if filename is specified, otherwise list swap files and exit',
      args: [
        Arg(
        name: 'filename',
        isOptional: true,
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-L',
      description: 'Same as -r',
      args: [
        Arg(
        name: 'filename',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-T',
      description: 'Set terminal type to <terminal>',
      args: [
        Arg(
        name: 'terminal'
      )
      ]
    ),
    Option(
      name: '--not-a-term',
      description: 'Skip warning for input/output not being a terminal'
    ),
    Option(
      name: '--ttyfail',
      description: 'Exit if input or output is not a terminal'
    ),
    Option(
      name: '-u',
      description: 'Use <vimrc> instead of any .vimrc',
      args: [
        Arg(
        name: 'vimrc',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--noplugin',
      description: 'Don\'t load plugin scripts'
    ),
    Option(
      name: '-p',
      description: 'Open N tab pages (default: one for each file)',
      args: [
        Arg(
        name: 'N',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-o',
      description: 'Open N windows (default: one for each file)',
      args: [
        Arg(
        name: 'N',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-O',
      description: 'Like -o but split vertically',
      args: [
        Arg(
        name: 'N',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '+',
      description: 'Start at end of file, if line number is specified, start at that line',
      args: [
        Arg(
        name: 'lnum',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '--cmd',
      description: 'Execute <command> before loading any vimrc file',
      args: [
        Arg(
        name: 'command'
      )
      ]
    ),
    Option(
      name: '-c',
      description: 'Execute <command> after loading the first file',
      args: [
        Arg(
        name: 'command'
      )
      ]
    ),
    Option(
      name: '-S',
      description: 'Source file <session> after loading the first file',
      args: [
        Arg(
        name: 'session',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-w',
      description: 'Append all typed commands to file <scriptout>',
      args: [
        Arg(
        name: 'scriptout',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-W',
      description: 'Write all typed commands to file <scriptout>',
      args: [
        Arg(
        name: 'scriptout',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-x',
      description: 'Edit encrypted files'
    ),
    Option(
      name: '--startuptime',
      description: 'Write startup timing messages to <file>',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-i',
      description: 'Use <viminfo> instead of .viminfo',
      args: [
        Arg(
        name: 'viminfo',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--clean',
      description: '\'nocompatible\', Vim defaults, no plugins, no viminfo'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print Help message and exit'
    ),
    Option(
      name: '--version',
      description: 'Print version information and exit'
    )
  ]
);
