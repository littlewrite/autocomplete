// Auto-generated from TypeScript source: lsd.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `lsd` CLI
final FigSpec lsdSpec = FigSpec(
  name: 'lsd',
  description: 'An ls command with a lot of pretty colors and some other stuff',
  args: [
    Arg(
    isVariadic: true,
    template: 'folders',
    defaultValue: '.'
  )
  ],
  options: [
    Option(
      name: ['-1', '--oneline'],
      description: 'Display one entry per line'
    ),
    Option(
      name: ['-A', '--almost-all'],
      description: 'Do not list implied . and'
    ),
    Option(
      name: ['-a', '--all'],
      description: 'Do not ignore entries starting with'
    ),
    Option(
      name: ['-d', '--directory-only'],
      description: 'Display directories themselves, and not their contents (recursively when used with --tree)'
    ),
    Option(
      name: ['-F', '--classify'],
      description: 'Append indicator (one of */=>@|) at the end of the file names'
    ),
    Option(
      name: ['-h', '--human-readable'],
      description: 'For ls compatibility purposes ONLY, currently set by default'
    ),
    Option(
      name: ['-i', '--inode'],
      description: 'Display the index number of each file'
    ),
    Option(
      name: ['-L', '--dereference'],
      description: 'When showing file information for a symbolic link, show information for the file the link references rather than for the link itself'
    ),
    Option(
      name: ['-l', '--long'],
      description: 'Display the extended file metadata as a table'
    ),
    Option(
      name: ['-R', '--recursive'],
      description: 'Recurse into directories'
    ),
    Option(
      name: ['-r', '--reverse'],
      description: 'Reverse the order of the sort'
    ),
    Option(
      name: ['-S', '--sizesort'],
      description: 'Sort by size'
    ),
    Option(
      name: ['-t', '--timesort'],
      description: 'Sort by time modified'
    ),
    Option(
      name: ['-v', '--versionsort'],
      description: 'Natural sort of (version) numbers within text'
    ),
    Option(
      name: '--classic',
      description: 'Enable classic mode (no colors or icons)'
    ),
    Option(
      name: ['-X', '--extensionsort'],
      description: 'Sort by file extension'
    ),
    Option(
      name: '--help',
      description: 'Prints help information'
    ),
    Option(
      name: '--ignore-config',
      description: 'Ignore the configuration file'
    ),
    Option(
      name: '--no-symlink',
      description: 'Do not display symlink target'
    ),
    Option(
      name: '--total-size',
      description: 'Display the total size of directories'
    ),
    Option(
      name: '--tree',
      description: 'Recurse into directories and present the result as a tree'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Prints version information'
    ),
    Option(
      name: '--blocks',
      description: 'Specify the blocks that will be displayed and in what order',
      args: [
        Arg(
        name: 'blocks',
        suggestions: [
          FigSuggestion(name: 'permission'),
          FigSuggestion(name: 'user'),
          FigSuggestion(name: 'group'),
          FigSuggestion(name: 'size'),
          FigSuggestion(name: 'date'),
          FigSuggestion(name: 'name'),
          FigSuggestion(name: 'inode'),
          FigSuggestion(name: 'links')
        ]
      )
      ]
    ),
    Option(
      name: '--color',
      description: 'When to use terminal colours',
      args: [
        Arg(
        name: 'color',
        suggestions: [
          FigSuggestion(name: 'always'),
          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'never')
        ],
        defaultValue: 'auto'
      )
      ]
    ),
    Option(
      name: '--date',
      description: 'How to display date',
      args: [
        Arg(
        name: 'date',
        suggestions: [
          FigSuggestion(name: 'date'),
          FigSuggestion(name: 'relative'),
          FigSuggestion(name: '+date-time-format')
        ],
        defaultValue: 'date'
      )
      ]
    ),
    Option(
      name: '--depth',
      description: 'Stop recursing into directories after reaching depth',
      args: [
        Arg(
        name: 'num'
      )
      ]
    ),
    Option(
      name: '--group-dirs',
      description: 'Sort the directories then the files',
      args: [
        Arg(
        name: 'group-dirs',
        suggestions: [
          FigSuggestion(name: 'none'),
          FigSuggestion(name: 'first'),
          FigSuggestion(name: 'last')
        ]
      )
      ]
    ),
    Option(
      name: '--icon',
      description: 'When to print the icons',
      args: [
        Arg(
        name: 'icon',
        suggestions: [
          FigSuggestion(name: 'always'),
          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'never')
        ],
        defaultValue: 'auto'
      )
      ]
    ),
    Option(
      name: '--icon-theme',
      description: 'Whether to use fancy or unicode icons',
      args: [
        Arg(
        name: 'icon-theme',
        suggestions: [
          FigSuggestion(name: 'fancy'),
          FigSuggestion(name: 'unicode')
        ],
        defaultValue: 'fancy'
      )
      ]
    ),
    Option(
      name: '--ignore-glob',
      description: 'Do not display files/directories with names matching the glob pattern(s). More than one can be specified by repeating the argument',
      args: [
        Arg(
        name: 'pattern'
      )
      ]
    ),
    Option(
      name: '--size',
      description: 'How to display size',
      args: [
        Arg(
        name: 'size',
        suggestions: [
          FigSuggestion(name: 'default'),
          FigSuggestion(name: 'short'),
          FigSuggestion(name: 'bytes')
        ],
        defaultValue: 'default'
      )
      ]
    ),
    Option(
      name: '--sort',
      description: 'Sort by WORD instead of name',
      args: [
        Arg(
        name: 'WORD',
        suggestions: [
          FigSuggestion(name: 'size'),
          FigSuggestion(name: 'time'),
          FigSuggestion(name: 'version'),
          FigSuggestion(name: 'extension')
        ]
      )
      ]
    )
  ]
);
