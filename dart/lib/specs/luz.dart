// Auto-generated from TypeScript source: luz.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `luz` CLI
final FigSpec luzSpec = FigSpec(
  name: 'luz',
  description: 'A next-generation build system for Apple Darwin-based systems',
  subcommands: [

    Subcommand(
      name: 'build',
      description: 'Build the target in the current directory',
      options: [

        Option(
          name: ['--help', '-h'],
          description: 'Show help for the build command'
        ),
        Option(
          name: ['--clean', '-c'],
          description: 'Clean the build directory before building'
        )
      ]
    ),
    Subcommand(
      name: 'gen',
      description: 'Generate a new project',
      options: [

        Option(
          name: ['--help', '-h'],
          description: 'Show help for the gen command'
        ),
        Option(
          name: ['--type', '-t'],
          description: 'The type of project to generate',
          args: [
            Arg(
            name: 'type',
            suggestions: [

              FigSuggestion(
                name: 'tool',
                description: 'A command-line tool',
                icon: '💻'
              ),
              FigSuggestion(
                name: 'tweak',
                description: 'A tweak',
                icon: '🛠'
              )
            ]
          )
          ]
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for Luz'
    )
  ]
);
