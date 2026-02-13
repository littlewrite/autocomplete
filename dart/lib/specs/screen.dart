// Auto-generated from TypeScript source: screen.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `screen` CLI
final FigSpec screenSpec = FigSpec(
  name: 'screen',
  description: 'Screen manager with VT100/ANSI terminal emulation',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true,
    flagsArePosixNoncompliant: true
  ),
  subcommands: [

    Subcommand(
      name: '-d',
      description: 'Does not start screen, but detaches the elsewhere running screen session',
      icon: 'fig://icon?type=option',
      subcommands: [

        Subcommand(
          name: '-r',
          description: 'Reattach a session and if necessary detach it first',
          icon: 'fig://icon?type=option'
        ),
        Subcommand(
          name: '-R',
          description: 'Reattach a session and if necessary detach or even create it first',
          icon: 'fig://icon?type=option'
        ),
        Subcommand(
          name: '-RR',
          description: 'Reattach a session and if necessary detach or create it. Use the first session if more than one session is available',
          icon: 'fig://icon?type=option'
        )
      ]
    ),
    Subcommand(
      name: '-D',
      description: 'Does not start screen, but detaches the elsewhere running screen session',
      icon: 'fig://icon?type=option',
      subcommands: [

        Subcommand(
          name: '-r',
          description: 'Reattach a session. If necessary detach and logout remotely first',
          icon: 'fig://icon?type=option'
        ),
        Subcommand(
          name: '-R',
          description: 'Attach here and now. In detail this means: If a session is running, then reattach. If necessary detach and logout remotely first',
          icon: 'fig://icon?type=option'
        ),
        Subcommand(
          name: '-RR',
          description: 'Attach here and now. Whatever that means, just do it',
          icon: 'fig://icon?type=option'
        )
      ]
    ),
    Subcommand(
      name: '-r',
      description: 'Resumes a detached screen session',
      icon: 'fig://icon?type=option'
    ),
    Subcommand(
      name: '-R',
      description: 'Attempts to resume the first detached screen session it finds',
      icon: 'fig://icon?type=option'
    ),
    Subcommand(
      name: '-dmS',
      description: 'Start as daemon: Screen session in detached mode',
      icon: 'fig://icon?type=option',
      args: [
        Arg(
        name: 'name',
        description: 'Name of the screen session'
      )
      ]
    )
  ],
  options: [

    Option(
      name: '-a',
      description: 'Force all capabilities into each window\'s termcap'
    ),
    Option(
      name: '-A',
      description: 'Adapt all windows to the new display width & height'
    ),
    Option(
      name: '-c',
      description: 'Read configuration file instead of \'.screenrc\'',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-e',
      description: 'Change command characters',
      args: [
        Arg(
        name: 'xy',
        description: 'Specifies the command character to be x and the character generating a literal command character to y'
      )
      ]
    ),
    Option(
      name: '-f',
      description: 'Flow control on'
    ),
    Option(
      name: '-fn',
      description: 'Flow control off'
    ),
    Option(
      name: '-fa',
      description: 'Flow control automatic'
    ),
    Option(
      name: '-h',
      description: 'Set the size of the scrollback history buffer',
      args: [
        Arg(
        name: 'h',
        description: 'Lines'
      )
      ]
    ),
    Option(
      name: '-i',
      description: 'Interrupt output sooner when flow control is on'
    ),
    Option(
      name: ['-list', '-ls'],
      description: 'Do nothing, just list our SockDir'
    ),
    Option(
      name: '-L',
      description: 'Turn on output logging'
    ),
    Option(
      name: '-m',
      description: 'Ignore \$STY variable, do create a new screen session'
    ),
    Option(
      name: '-O',
      description: 'Choose optimal output rather than exact vt100 emulation'
    ),
    Option(
      name: '-p',
      description: 'Preselect the named window if it exists',
      args: [
        Arg(
        name: 'window'
      )
      ]
    ),
    Option(
      name: '-q',
      description: 'Quiet startup. Exits with non-zero return code if unsuccessful'
    ),
    Option(
      name: '-s',
      description: 'Shell to execute rather than \$SHELL',
      args: [
        Arg(
        name: 'shell'
      )
      ]
    ),
    Option(
      name: '-S',
      description: 'Name this session <pid>.sockname instead of <pid>.<tty>.<host>',
      args: [
        Arg(
        name: 'sockname'
      )
      ]
    ),
    Option(
      name: '-t',
      description: 'Set title. (window\'s name)',
      args: [
        Arg(
        name: 'title'
      )
      ]
    ),
    Option(
      name: '-T',
      description: 'Use term as \$TERM for windows, rather than \'screen\'',
      args: [
        Arg(
        name: 'term'
      )
      ]
    ),
    Option(
      name: '-U',
      description: 'Tell screen to use UTF-8 encoding'
    ),
    Option(
      name: '-v',
      description: 'Print \'Screen version 4.00.03 (FAU) 23-Oct-06\''
    ),
    Option(
      name: '-wipe',
      description: 'Do nothing, just clean up SockDir',
      args: [
        Arg(
        name: 'match',
        description: 'Screen session to match',
        isOptional: true,
        suggestions: [

          FigSuggestion(name: 'sessionowner/[pid.tty.host]')
        ]
      )
      ]
    ),
    Option(
      name: '-x',
      description: 'Attach to a not detached screen. (Multi display mode)'
    ),
    Option(
      name: '-X',
      description: 'Execute <cmd> as a screen command in the specified session'
    )
  ],
  args: [

    Arg(
      name: 'cmd',
      description: 'Command to invoke'
    ),
    Arg(
      name: 'args',
      description: 'Arguments to pass',
      isVariadic: true
    )
  ]
);
