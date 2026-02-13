// Auto-generated from TypeScript source: graphcdn.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `graphcdn` CLI
final FigSpec graphcdnSpec = FigSpec(
  name: 'graphcdn',
  description: 'GraphCDN CLI',
  subcommands: [

    Subcommand(
      name: 'login',
      description: 'Authenticate the CLI',
      options: [

        Option(
          name: '--token',
          args: [
            Arg(
            name: 'token'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Create a new GraphCDN service',
      options: [

        Option(
          name: ['-y', '--yes'],
          description: 'Skip all the questions and just init'
        )
      ]
    ),
    Subcommand(
      name: 'pull',
      description: 'Pull the latest service configuration',
      options: [

        Option(
          name: '--service',
          description: 'Name of the service to pull from (only required without graphcdn.yml)',
          args: [
            Arg(
            name: 'service',
            description: 'Name of the environment to pull from'
          )
          ]
        ),
        Option(
          name: '--env',
          args: [
            Arg(
            name: 'env'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'push',
      description: 'Push and deploy the latest app configuration',
      options: [

        Option(
          name: '--env',
          args: [
            Arg(
            name: 'env'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'field',
        isOptional: true,
        suggestions: [

          FigSuggestion(name: 'schema'),
          FigSuggestion(name: 'rules')
        ]
      )
      ]
    )
  ],
  options: []
);
