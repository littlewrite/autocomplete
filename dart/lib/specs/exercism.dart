// Auto-generated from TypeScript source: exercism.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `exercism` CLI
final FigSpec exercismSpec = FigSpec(
  name: 'exercism',
  description: 'Solve coding exercises in your chosen programming languages',
  subcommands: [
    Subcommand(
      name: ['configure', 'c'],
      description: 'Configure the command-line client',
      options: [
        Option(
          name: ['-a', '--api'],
          description: 'API base url',
          args: [
            Arg(
            name: 'url'
          )
          ]
        ),
        Option(
          name: '--no-verify',
          description: 'Skip online token authorization check'
        ),
        Option(
          name: ['-s', '--show'],
          description: 'Show the current configuration'
        ),
        Option(
          name: ['-t', '--token'],
          description: 'Auth token used to connect to the site',
          args: [
            Arg(
            name: 'token'
          )
          ]
        ),
        Option(
          name: ['-w', '--workspace'],
          description: 'Directory for exercism exercises',
          args: [
            Arg(
            name: 'path',
            template: 'folders'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['download', 'd'],
      description: 'Download an exercise',
      options: [
        Option(
          name: ['-e', '--exercise'],
          description: 'The exercise slug',
          args: [
            Arg(
            name: 'exercise'
          )
          ]
        ),
        Option(
          name: ['-T', '--team'],
          description: 'The team slug',
          args: [
            Arg(
            name: 'team'
          )
          ]
        ),
        Option(
          name: ['-t', '--track'],
          description: 'The track ID',
          args: [
            Arg(
            name: 'track'
          )
          ]
        ),
        Option(
          name: ['-u', '--uuid'],
          description: 'The solution UUID',
          args: [
            Arg(
            name: 'uuid'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command'
    ),
    Subcommand(
      name: ['open', 'o'],
      description: 'Open an exercise on the website',
      args: [
        Arg(
        name: 'path',
        template: 'folders'
      )
      ]
    ),
    Subcommand(
      name: ['prepare', 'p'],
      description: 'Prepare does setup for Exercism and its tracks'
    ),
    Subcommand(
      name: ['submit', 's'],
      description: 'Submit your solution to an exercise',
      args: [
        Arg(
        name: 'file',
        description: 'The files you want to submit',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: ['troubleshoot', 't', 'debug'],
      description: 'Troubleshoot does a diagnostic self-check',
      options: [
        Option(
          name: ['-f', '--full-api-key'],
          description: 'Display the user\'s full API key'
        )
      ]
    ),
    Subcommand(
      name: ['upgrade', 'u'],
      description: 'Upgrade to the latest version of the CLI'
    ),
    Subcommand(
      name: ['version', 'v'],
      description: 'Version outputs the version of CLI'
    ),
    Subcommand(
      name: ['workspace', 'w'],
      description: 'Print out the path to your Exercism workspace'
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Help for this command',
      isPersistent: true
    ),
    Option(
      name: '--timeout',
      description: 'Override the default HTTP timeout',
      isPersistent: true,
      args: [
        Arg(
        name: 'value'
      )
      ]
    ),
    Option(
      name: '--unmask-token',
      description: 'Will unmask the API during a request/response dump',
      isPersistent: true
    ),
    Option(
      name: ['--verbose', '-v'],
      description: 'Verbose output',
      isPersistent: true
    )
  ]
);
