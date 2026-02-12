// Auto-generated from TypeScript source: streamlit.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `streamlit` CLI
final FigSpec streamlitSpec = FigSpec(
  name: 'streamlit',
  description: 'Streamlit',
  subcommands: [
    Subcommand(
      name: 'activate',
      description: 'Activate Streamlit by entering your email',
      icon: '✉️'
    ),
    Subcommand(
      name: 'cache',
      description: 'Manage the Streamlit cache',
      icon: '🗂',
      subcommands: [
        Subcommand(
          name: 'clear',
          description: 'Clear st.cache, st.memo, and st.singleton caches',
          icon: '🗑'
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Manage Streamlit\'s config settings',
      icon: '⚙️',
      subcommands: [
        Subcommand(
          name: 'show',
          description: 'Show all of Streamlit\'s config settings',
          icon: '👀'
        )
      ]
    ),
    Subcommand(
      name: 'docs',
      description: 'Show help in browser',
      icon: '💡'
    ),
    Subcommand(
      name: 'hello',
      description: 'Runs the Hello World script',
      icon: '👋,'
    ),
    Subcommand(
      name: 'help',
      description: 'Print the help message',
      icon: '❓'
    ),
    Subcommand(
      name: 'run',
      description: 'Run a Python script, piping stderr to Streamlit',
      icon: '🎈',
      args: [
        Arg(
        name: 'file',
        description: 'The Python script to run'
      )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Print Streamlit\'s version number',
      icon: '💯'
    )
  ],
  options: [
    Option(
      name: '--log_level',
      description: 'Set the log level',
      args: [
        Arg(
        suggestions: [
          FigSuggestion(
            name: 'error',
            icon: '🔥'
          ),
          FigSuggestion(
            name: 'warning',
            icon: '⚠️'
          ),
          FigSuggestion(
            name: 'info',
            icon: 'ℹ️'
          ),
          FigSuggestion(
            name: 'debug',
            icon: '🐛'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--help',
      description: 'Show a help message and exit'
    ),
    Option(
      name: '--version',
      description: 'Show the version and exit'
    )
  ]
);
