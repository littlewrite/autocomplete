// Auto-generated from TypeScript source: hack.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `hack` CLI
final FigSpec hackSpec = FigSpec(
  name: 'hack',
  description: 'Commands to manage resources commonly used for student hacks',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create resources commonly used for a student hack, including a website, database, and artificial intelligence',
      options: [

        Option(
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Base name of resources; random charagers will be appended',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--runtime', '-r'],
          description: 'Runtime',
          args: [
            Arg(
            name: 'runtime',
            suggestions: [

              FigSuggestion(name: 'aspnet'),
              FigSuggestion(name: 'jetty'),
              FigSuggestion(name: 'node'),
              FigSuggestion(name: 'php'),
              FigSuggestion(name: 'python'),
              FigSuggestion(name: 'tomcat')
            ]
          )
          ]
        ),
        Option(
          name: '--ai',
          description: 'Enable Azure Cognitive Services',
          args: [
            Arg(
            name: 'a'
          )
          ]
        ),
        Option(
          name: ['--database', '-d'],
          description: 'Database type - { sql | mysql | cosmosdb }',
          args: [
            Arg(
            name: 'database',
            suggestions: [

              FigSuggestion(name: 'cosmosdb'),
              FigSuggestion(name: 'mysql'),
              FigSuggestion(name: 'sql')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Display settings for created resources, including database name and password, Git url, and website url',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the application',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    )
  ]
);
