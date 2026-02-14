// AI-generated from TypeScript source: screen.ts
import 'package:autocomplete/src/spec.dart';

final FigArg identifierArg = FigArg(
  name: 'identifier',
  suggestions: [
    FigSuggestion(name: 'pid'),
    FigSuggestion(name: 'pid.tty'),
    FigSuggestion(name: 'pid.tty.host'),
    FigSuggestion(name: 'sessionowner/pid'),
    FigSuggestion(name: 'sessionowner/pid.tty'),
    FigSuggestion(name: 'sessionowner/pid.tty.host'),
  ],
);

final FigSpec screenSpec = FigSpec(
  name: 'screen',
  description: 'Screen manager with VT100/ANSI terminal emulation',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true,
    flagsArePosixNoncompliant: true,
  ),
  subcommands: [
    FigSubcommand(
      name: '-d',
      description:
          'Does not start screen, but detaches the elsewhere running screen session',
      icon: 'fig://icon?type=option',
      subcommands: [
        FigSubcommand(
          name: '-r',
          description: 'Reattach a session and if necessary detach it first',
          icon: 'fig://icon?type=option',
          args: [identifierArg],
        ),
        FigSubcommand(
          name: '-R',
          description:
              'Reattach a session and if necessary detach or even create it first',
          icon: 'fig://icon?type=option',
          args: [identifierArg],
        ),
        FigSubcommand(
          name: '-RR',
          description:
              'Reattach a session and if necessary detach or create it. Use the first session if more than one session is available',
          icon: 'fig://icon?type=option',
          args: [identifierArg],
        ),
      ],
    ),
    FigSubcommand(
      name: '-D',
      description:
          'Does not start screen, but detaches the elsewhere running screen session',
      icon: 'fig://icon?type=option',
      subcommands: [
        FigSubcommand(
          name: '-r',
          description:
              'Reattach a session. If necessary detach and logout remotely first',
          icon: 'fig://icon?type=option',
          args: [identifierArg],
        ),
        FigSubcommand(
          name: '-R',
          description:
              'Attach here and now. In detail this means: If a session is running, then reattach. If necessary detach and logout remotely first',
          icon: 'fig://icon?type=option',
          args: [identifierArg],
        ),
        FigSubcommand(
          name: '-RR',
          description: 'Attach here and now. Whatever that means, just do it',
          icon: 'fig://icon?type=option',
          args: [identifierArg],
        ),
      ],
    ),
    FigSubcommand(
      name: '-r',
      description: 'Resumes a detached screen session',
      icon: 'fig://icon?type=option',
      args: [identifierArg],
    ),
    FigSubcommand(
      name: '-R',
      description:
          'Attempts to resume the first detached screen session it finds',
      icon: 'fig://icon?type=option',
      args: [identifierArg],
    ),
    FigSubcommand(
      name: '-dmS',
      description: 'Start as daemon: Screen session in detached mode',
      icon: 'fig://icon?type=option',
      args: [
        FigArg(
          name: 'name',
          description: 'Name of the screen session',
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['-a'],
      description: "Force all capabilities into each window's termcap",
    ),
    FigOption(
      name: ['-A'],
      description: 'Adapt all windows to the new display width & height',
    ),
    FigOption(
      name: ['-c'],
      description: "Read configuration file instead of '.screenrc'",
      args: [
        FigArg(
          name: 'file',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['-e'],
      description: 'Change command characters',
      args: [
        FigArg(
          name: 'xy',
          description:
              'Specifies the command character to be x and the character generating a literal command character to y',
        ),
      ],
    ),
    FigOption(
      name: ['-f'],
      description: 'Flow control on',
    ),
    FigOption(
      name: ['-fn'],
      description: 'Flow control off',
    ),
    FigOption(
      name: ['-fa'],
      description: 'Flow control automatic',
    ),
    FigOption(
      name: ['-h'],
      description: 'Set the size of the scrollback history buffer',
      args: [
        FigArg(
          name: 'h',
          description: 'Lines',
        ),
      ],
    ),
    FigOption(
      name: ['-i'],
      description: 'Interrupt output sooner when flow control is on',
    ),
    FigOption(
      name: ['-list', '-ls'],
      description: 'Do nothing, just list our SockDir',
    ),
    FigOption(
      name: ['-L'],
      description: 'Turn on output logging',
    ),
    FigOption(
      name: ['-m'],
      description: 'Ignore \$STY variable, do create a new screen session',
    ),
    FigOption(
      name: ['-O'],
      description: 'Choose optimal output rather than exact vt100 emulation',
    ),
    FigOption(
      name: ['-p'],
      description: 'Preselect the named window if it exists',
      args: [
        FigArg(
          name: 'window',
        ),
      ],
    ),
    FigOption(
      name: ['-q'],
      description:
          'Quiet startup. Exits with non-zero return code if unsuccessful',
    ),
    FigOption(
      name: ['-s'],
      description: 'Shell to execute rather than \$SHELL',
      args: [
        FigArg(
          name: 'shell',
        ),
      ],
    ),
    FigOption(
      name: ['-S'],
      description:
          'Name this session <pid>.sockname instead of <pid>.<tty>.<host>',
      args: [
        FigArg(
          name: 'sockname',
        ),
      ],
    ),
    FigOption(
      name: ['-t'],
      description: "Set title. (window's name)",
      args: [
        FigArg(
          name: 'title',
        ),
      ],
    ),
  ],
);
