// Auto-generated from TypeScript source: github.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `github` CLI
final FigSpec githubSpec = FigSpec(
  name: 'github',
  description: 'Open a git repository in GitHub Desktop',
  args: [
    Arg(
    name: 'path',
    isOptional: true
  )
  ],
  options: [
    Option(
      name: '--help',
      description: 'Show the help page for a command',
      args: [
        Arg(
        name: 'command',
        isOptional: true,
        suggestions: [
          FigSuggestion(name: 'clone'),
          FigSuggestion(name: 'open'),
          FigSuggestion(name: 'help')
        ]
      )
      ]
    )
  ],
  subcommands: [
    Subcommand(
      name: 'clone',
      description: 'Clone a repository',
      args: [
        Arg(
        name: 'url|slug',
        suggestions: [
          FigSuggestion(
            name: 'https://github.com/',
            icon: 'https://github.com/fluidicon.png'
          ),
          FigSuggestion(
            name: 'https://gitlab.com/',
            icon: 'https://about.gitlab.com/ico/favicon-32x32.png'
          ),
          FigSuggestion(
            name: 'https://bitbucket.com/',
            icon: 'https://wac-cdn.atlassian.com/assets/img/favicons/bitbucket/favicon-32x32.png'
          )
        ]
      )
      ],
      options: [
        Option(
          name: ['--branch', '-b'],
          description: 'The branch to checkout after cloning',
          args: [
            Arg(
            name: 'branc'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'open',
      description: 'Open a git repository in GitHub Desktop',
      args: [
        Arg(
        name: 'path',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Show the help page for a command',
      args: [
        Arg(
        name: 'command',
        isOptional: true,
        suggestions: [
          FigSuggestion(name: 'clone'),
          FigSuggestion(name: 'open'),
          FigSuggestion(name: 'help')
        ]
      )
      ]
    )
  ]
);
