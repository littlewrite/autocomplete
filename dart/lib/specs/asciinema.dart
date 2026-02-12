// Auto-generated from TypeScript source: asciinema.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `asciinema` CLI
final FigSpec asciinemaSpec = FigSpec(
  name: 'asciinema',
  description: 'Terminal session recorder',
  options: [
    Option(
      name: '--version',
      description: 'Ouput version information and exit'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Output help message and exit',
      isPersistent: true
    )
  ],
  subcommands: [
    Subcommand(
      name: 'rec',
      description: 'Start a recording',
      args: [
        Arg(
        name: 'filename',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: '--stdin',
          description: 'Enable stdin (keyboard) recording'
        ),
        Option(
          name: '--append',
          description: 'Append to existing recording'
        ),
        Option(
          name: '--raw',
          description: 'Save raw output, without timing or other metadata'
        ),
        Option(
          name: '--overwrite',
          description: 'Overwrite the recording if it already exists'
        ),
        Option(
          name: ['-c', '--command'],
          insertValue: '-c=\'{cursor}\'',
          description: 'Specify command to record, defaults to \$SHELL',
          args: [
            Arg(
            name: 'command'
          )
          ]
        ),
        Option(
          name: ['-e', '--env'],
          insertValue: '-c=\'{cursor}\'',
          description: 'List of environment variables to capture',
          args: [
            Arg(
            name: 'variables'
          )
          ]
        ),
        Option(
          name: ['-t', '--title'],
          insertValue: '-t=\'{cursor}\'',
          description: 'Specify the title of the asciicast',
          args: [
            Arg(
            name: 'title'
          )
          ]
        ),
        Option(
          name: ['-i', '--idle-time-limit'],
          description: 'Limit recorded terminal inactivity to max amount of seconds',
          args: [
            Arg(
            name: 'seconds'
          )
          ]
        ),
        Option(
          name: '--cols',
          description: 'Override terminal columns for recorded process',
          args: [
            Arg(
            name: 'cols'
          )
          ]
        ),
        Option(
          name: '--rows',
          description: 'Override terminal rows for recorded process',
          args: [
            Arg(
            name: 'rows'
          )
          ]
        ),
        Option(
          name: ['-y', '--yes'],
          description: 'Answer “yes” to all prompts (e.g. upload confirmation)'
        ),
        Option(
          name: ['-q', '--quiet'],
          description: 'Be quiet, suppress all notices/warnings (implies -y)'
        )
      ]
    ),
    Subcommand(
      name: 'play',
      description: 'Replay recorded asciicast in a terminal',
      args: [
        Arg(
        name: 'file or URL',
        template: 'filepaths',
        suggestions: [
          FigSuggestion(
            name: '-',
            description: 'Stdin'
          )
        ]
      )
      ],
      options: [
        Option(
          name: ['-i', '--idle-time-linit'],
          description: 'Limit replayed terminal inactivity',
          args: [
            Arg(
            name: 'seconds',
            description: 'Can be fractional'
          )
          ]
        ),
        Option(
          name: ['-s', '--speed'],
          description: 'Playback speed',
          args: [
            Arg(
            name: 'factor',
            description: 'Can be fractional'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'cat',
      description: 'Print full output of recorded asciicast to a terminal',
      args: [
        Arg(
        name: 'file or URL',
        template: 'filepaths',
        suggestions: [
          FigSuggestion(
            name: '-',
            description: 'Stdin'
          )
        ]
      )
      ]
    ),
    Subcommand(
      name: 'upload',
      description: 'Upload recorded asciicast to asciinema.org site',
      args: [
        Arg(
        name: 'file or URL',
        template: 'filepaths',
        suggestions: [
          FigSuggestion(
            name: '-',
            description: 'Stdin'
          )
        ]
      )
      ]
    ),
    Subcommand(
      name: 'auth',
      description: 'Link and manage your install ID with your asciinema.org user account'
    )
  ]
);
