// Auto-generated from TypeScript source: osascript.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `osascript` CLI
final FigSpec osascriptSpec = FigSpec(
  name: 'osascript',
  description: 'Execute OSA scripts (AppleScript, JavaScript, etc.)',
  options: [

    Option(
      name: '-e',
      description: 'Enter one line of a script',
      args: [
        Arg(
        name: 'statement'
      )
      ]
    ),
    Option(
      name: '-i',
      description: 'Interactive mode'
    ),
    Option(
      name: '-l',
      description: 'Override the language for any plain text files',
      args: [
        Arg(
        name: 'language'
      )
      ]
    ),
    Option(
      name: '-s',
      description: 'Modify the output style',
      args: [
        Arg(
        name: 'flags',
        isVariadic: true,
        suggestions: [

          FigSuggestion(
            name: 'h',
            description: 'Print values in human-readable form (default)'
          ),
          FigSuggestion(
            name: 's',
            description: 'Print values in recompilable source form'
          ),
          FigSuggestion(
            name: 'e',
            description: 'Print script errors to stderr (default)'
          ),
          FigSuggestion(
            name: 'o',
            description: 'Print script errors to stdout'
          )
        ]
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'script',
    isOptional: true
  )
  ]
);
