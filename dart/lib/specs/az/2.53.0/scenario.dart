// Auto-generated from TypeScript source: scenario.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `scenario` CLI
final FigSpec scenarioSpec = FigSpec(
  name: 'scenario',
  description: 'E2E Scenario Usage Guidance',
  subcommands: [

    Subcommand(
      name: 'guide',
      description: 'Fuzzy search E2E scenario examples and execute them with walk-through',
      options: [

        Option(
          name: '--match-rule',
          description: 'The matching rules for multi-keywords: "and" is to search scenarios that match all keywords, "or" is to search scenarios that match any keyword, "all" is to search scenarios that match all keywords first, if the number is not enough then search any keyword',
          args: [
            Arg(
            name: 'match-rule',
            suggestions: [

              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'and'),
              FigSuggestion(name: 'or')
            ]
          )
          ]
        ),
        Option(
          name: '--scope',
          description: 'The scope of search: "scenario" is to search whether the title and description in E2E scenario data contain keywords, "command" is to search whether the commands in E2E scenario data contain keywords, "all" is to search all contents',
          args: [
            Arg(
            name: 'scope',
            suggestions: [

              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'command'),
              FigSuggestion(name: 'scenario')
            ]
          )
          ]
        ),
        Option(
          name: '--top',
          description: 'Specify the number of results to return. The maximum value is limited to 20',
          args: [
            Arg(
            name: 'to'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: '<SEARCH_KEYWORD>',
        description: 'Keywords for search. If there are multiple keywords, please separate them with spaces. Fuzzy search is supported, and the returned results are sorted by keyword matching degree',
        isOptional: true
      )
      ]
    )
  ]
);
