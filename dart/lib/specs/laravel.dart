// Auto-generated from TypeScript source: laravel.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `laravel` CLI
final FigSpec laravelSpec = FigSpec(
  name: 'laravel',
  description: 'Laravel Installer',
  subcommands: [
    Subcommand(
      name: 'help'
    ),
    Subcommand(
      name: 'list'
    ),
    Subcommand(
      name: 'new',
      description: 'Create a new Laravel application',
      args: [
        Arg(
        name: 'name'
      )
      ],
      options: [
        Option(
          name: '--dev',
          description: 'Installs the latest "development" release'
        ),
        Option(
          name: '--git',
          description: 'Initialize a Git repository'
        ),
        Option(
          name: '--branch',
          description: 'The branch that should be created for a new repository',
          args: [
            Arg(
            name: 'BRANCH',
            defaultValue: 'main'
          )
          ]
        ),
        Option(
          name: '--github',
          description: 'Create a new repository on GitHub',
          args: [
            Arg(
            name: 'GITHUB',
            isOptional: true,
            defaultValue: 'false'
          )
          ]
        ),
        Option(
          name: '--jet',
          description: 'Installs the Laravel Jetstream scaffolding'
        ),
        Option(
          name: '--stack',
          description: 'The Jetstream stack that should be installed',
          args: [
            Arg(
            name: 'STACK',
            suggestions: [
              FigSuggestion(name: 'livewire'),
              FigSuggestion(name: 'inertia')
            ]
          )
          ]
        ),
        Option(
          name: '--teams',
          description: 'Indicates whether Jetstream should be scaffolded with team support'
        ),
        Option(
          name: '--prompt-jetstream',
          description: 'Issues a prompt to determine if Jetstream should be installed'
        ),
        Option(
          name: ['-f', '--force'],
          description: 'Forces install even if the directory already exists'
        )
      ]
    )
  ],
  options: [
    Option(
      name: ['-h', '--help'],
      description: 'Display the help message'
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Do not output any message'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Display this application version'
    ),
    Option(
      name: '--ansi',
      description: 'Force ANSI output'
    ),
    Option(
      name: '--no-ansi',
      description: 'Disable ANSI output'
    ),
    Option(
      name: ['-n', '--no-interaction'],
      description: 'Do not ask any interactive question'
    ),
    Option(
      name: ['-v', '--verbose'],
      isRepeatable: 3,
      description: 'Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug'
    )
  ]
);
