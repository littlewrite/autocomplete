// Auto-generated from TypeScript source: who.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `who` CLI
final FigSpec whoSpec = FigSpec(
  name: 'who',
  description: 'Display who is logged in',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  subcommands: [
    Subcommand(
      name: 'am',
      description: 'Returns the invoker\'s real user name',
      additionalSuggestions: [
        FigSuggestion(
          name: 'am I',
          insertValue: 'I{cursor}',
          icon: 'fig://icon?type=command'
        )
      ],
      priority: 40
    )
  ],
  options: [
    Option(
      name: '-a',
      description: 'Same as -bdlprTtu'
    ),
    Option(
      name: '-b',
      description: 'Time of last system boot'
    ),
    Option(
      name: '-d',
      description: 'Print dead processes'
    ),
    Option(
      name: '-H',
      description: 'Write column headings above the regular output'
    ),
    Option(
      name: '-l',
      description: 'Print system login processes (unsupported)'
    ),
    Option(
      name: '-m',
      description: 'Only print information about the current terminal'
    ),
    Option(
      name: '-p',
      description: 'Print active processes spawned by launchd(8) (unsupported)'
    ),
    Option(
      name: '-q',
      description: '\'Quick mode\': List only names and number of users currently logged on',
      exclusiveOn: [
        '-a',
        '-b',
        '-d',
        '-H',
        '-l',
        '-m',
        '-p',
        '-r',
        '-s',
        '-T',
        '-t',
        '-u',
      ]
    ),
    Option(
      name: '-r',
      description: 'Print the current runlevel'
    ),
    Option(
      name: '-s',
      description: 'List only the name, line and time fields (this is the default)'
    ),
    Option(
      name: '-T',
      description: 'Print a character after the user name indicating the state of the terminal line: \'+\' writable, \'-\' not writable, \'?\' bad'
    ),
    Option(
      name: '-t',
      description: 'Print last system clock change (unsupported)'
    ),
    Option(
      name: '-u',
      description: 'Print the idle time for each user and the associated process ID'
    )
  ],
  args: [
    Arg(
    name: 'file',
    description: 'By default, who gathers information from the file /var/run/utmpx; an alternative file may be specified',
    isOptional: true,
    template: 'filepaths'
  )
  ]
);
