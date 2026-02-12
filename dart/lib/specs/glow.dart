// Auto-generated from TypeScript source: glow.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `glow` CLI
final FigSpec glowSpec = FigSpec(
  name: 'glow',
  description: 'Render markdown on the CLI, with pizzazz!',
  args: [
    Arg(
    name: 'source|dir',
    isOptional: true,
    isVariadic: true
  )
  ],
  options: [
    Option(
      name: ['-a', '--all'],
      description: 'Show system files and directories (TUI-mode only)'
    ),
    Option(
      name: '--config',
      args: [
        Arg(
        name: 'path',
        template: 'filepath'
      )
      ],
      description: 'Config file',
      isPersistent: true
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Help for glow',
      isPersistent: true
    ),
    Option(
      name: ['-l', '--local'],
      description: 'Show local files only; no network (TUI-mode only)'
    ),
    Option(
      name: ['-p', '--pager'],
      description: 'Display with pager'
    ),
    Option(
      name: ['-s', '--style'],
      description: 'Style name or JSON path (default \'auto\')',
      args: [
        Arg(
        name: 'name',
        suggestions: [
          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'light'),
          FigSuggestion(name: 'dark'),
          FigSuggestion(name: 'notty')
        ],
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Version for glow'
    ),
    Option(
      name: ['-w', '--width'],
      args: [
        Arg(
        name: 'colum'
      )
      ],
      description: 'Word-wrap at width'
    )
  ],
  subcommands: [
    Subcommand(
      name: 'config',
      description: 'Edit the glow config file'
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      args: [
        Arg(
        name: 'command',
        template: 'help',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'stash',
      description: 'Manage your stash of markdown files',
      args: [
        Arg(
        name: 'path',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: ['-m', '--memo'],
          description: 'Memo/note for stashing',
          args: [
            Arg(
            name: 'not'
          )
          ],
          insertValue: '--memo \'{cursor}\''
        )
      ]
    )
  ]
);
