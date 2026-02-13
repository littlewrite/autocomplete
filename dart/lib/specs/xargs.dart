// Auto-generated from TypeScript source: xargs.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `xargs` CLI
final FigSpec xargsSpec = FigSpec(
  name: 'xargs',
  description: 'Execute a command with whitespace-delimited strings (from stdin) as arguments',
  options: [

    Option(
      name: '-0',
      description: 'Use NUL (0x00) as a separator, instead of whitespace'
    ),
    Option(
      name: '-E',
      description: 'Use this string as a logical EOF marker',
      args: [
        Arg(
        name: 'eof-str',
        description: 'The string to use that marks EOF'
      )
      ]
    ),
    Option(
      name: '-I',
      description: 'Replace occurrences of this string with the input',
      args: [
        Arg(
        name: 'replacement-str',
        description: 'The string to replace'
      )
      ]
    ),
    Option(
      name: '-J',
      description: 'Replace an argument exactly equal to this string with the input',
      args: [
        Arg(
        name: 'replacement-str',
        description: 'The string to replace'
      )
      ]
    ),
    Option(
      name: '-L',
      description: 'Run the program each time this many lines of input are read',
      args: [
        Arg(
        name: 'number'
      )
      ],
      exclusiveOn: ['-n']
    ),
    Option(
      name: '-n',
      description: 'The maximum number of arguments that can be taken from stdin on each run',
      args: [
        Arg(
        name: 'number'
      )
      ],
      exclusiveOn: ['-L']
    ),
    Option(
      name: '-o',
      description: 'Reopen stdin as /dev/tty (useful for running interactive applications)'
    ),
    Option(
      name: '-P',
      description: 'Run up to this many commands in parallel (as many as possible if 0)',
      args: [
        Arg(
        name: 'max-procs'
      )
      ]
    ),
    Option(
      name: '-p',
      description: 'Prompt to run each command'
    ),
    Option(
      name: '-r',
      description: 'Run the command once if there\'s no input (compatible with GNU xargs)'
    ),
    Option(
      name: '-R',
      description: 'Specify the maximum number of occurrences that -I will replace',
      dependsOn: ['-I'],
      args: [
        Arg(
        name: 'number'
      )
      ]
    ),
    Option(
      name: '-S',
      description: 'Specify the maximum size in bytes that -I can use for replacements (default: 255)',
      dependsOn: ['-I'],
      args: [
        Arg(
        name: 'replacement-size'
      )
      ]
    ),
    Option(
      name: '-s',
      description: 'Maximum number of bytes that can be provided to the program (default: 4096)',
      args: [
        Arg(
        name: 'max-args-size'
      )
      ]
    ),
    Option(
      name: '-t',
      description: 'Echo the command to stderr before it\'s executed'
    ),
    Option(
      name: '-x',
      description: 'Terminal if the arguments will not fit in the maximum line length',
      dependsOn: ['-n']
    )
  ],
  args: [
    Arg(
    name: 'utility',
    description: 'Run this program for each line of stdin (default: echo)',
    isOptional: true
  )
  ]
);
