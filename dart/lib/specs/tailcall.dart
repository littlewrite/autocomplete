// Auto-generated from TypeScript source: tailcall.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `tailcall` CLI
final FigSpec tailcallSpec = FigSpec(
  name: 'tailcall',
  description: 'TailCall CLI for managing and optimizing GraphQL configurations',
  subcommands: [
    Subcommand(
      name: 'check',
      description: 'Validate a composition spec',
      args: [
        Arg(
        name: 'FILE_PATHS',
        template: 'filepaths',
        isVariadic: true
      )
      ],
      options: [
        Option(
          name: '--n-plus-one-queries',
          description: 'Detect N+1 issues',
          isPersistent: true
        ),
        Option(
          name: '--schema',
          description: 'Display the schema of the composition spec',
          isPersistent: true
        ),
        Option(
          name: '--format',
          description: 'Change the format of the input file',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'gql'),
              FigSuggestion(name: 'graphql'),
              FigSuggestion(name: 'yml'),
              FigSuggestion(name: 'yaml'),
              FigSuggestion(name: 'json')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'start',
      description: 'Launch the GraphQL Server for the specific configuration',
      args: [
        Arg(
        name: 'PATHS',
        template: ['filepaths', 'folders'],
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Bootstrap a new TailCall project',
      args: [
        Arg(
        name: 'FILE_PATH',
        template: 'folders'
      )
      ]
    ),
    Subcommand(
      name: 'gen',
      description: 'Generate GraphQL configurations from various sources',
      args: [
        Arg(
        name: 'CONFIG_FILE',
        template: 'filepaths'
      )
      ]
    )
  ]
);
