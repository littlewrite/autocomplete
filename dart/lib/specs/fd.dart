// Auto-generated from TypeScript source: fd.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `fd` CLI
final FigSpec fdSpec = FigSpec(
  name: 'fd',
  description: 'A simple, fast and user-friendly alternative to \'find\'',
  options: [
    Option(
      name: ['-H', '--hidden'],
      description: 'Search hidden files and directories'
    ),
    Option(
      name: ['-I', '--no-ignore'],
      description: 'Do not respect .(git|fd)ignore files'
    ),
    Option(
      name: ['-s', '--case-sensitive'],
      description: 'Case-sensitive search (default: smart case)'
    ),
    Option(
      name: ['-i', '--ignore-case'],
      description: 'Case-insensitive search (default: smart case)'
    ),
    Option(
      name: ['-g', '--glob'],
      description: 'Glob-based search (default: regular expression)'
    ),
    Option(
      name: ['-a', '--absolute-path'],
      description: 'Show absolute instead of relative paths'
    ),
    Option(
      name: ['-l', '--list-details'],
      description: 'Use a long listing format with file metadata'
    ),
    Option(
      name: ['-L', '--follow'],
      description: 'Follow symbolic links'
    ),
    Option(
      name: ['-p', '--full-path'],
      description: 'Search full path (default: file-/dirname only)'
    ),
    Option(
      name: ['-0', '--print0'],
      description: 'Separate results by the null character'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Prints help information'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Prints version information'
    ),
    Option(
      name: ['-d', '--max-depth'],
      description: 'Set maximum search depth',
      args: [
        Arg(
        name: 'depth'
      )
      ]
    ),
    Option(
      name: ['-t', '--type'],
      description: 'Filter by type',
      isRepeatable: true,
      args: [
        Arg(
        name: 'filetype',
        suggestions: [
          FigSuggestion(
            name: 'f',
            description: 'File'
          ),
          FigSuggestion(
            name: 'd',
            description: 'Directory'
          ),
          FigSuggestion(
            name: 'l',
            description: 'Symlink'
          ),
          FigSuggestion(
            name: 'x',
            description: 'Executable'
          ),
          FigSuggestion(
            name: 'e',
            description: 'Empty'
          ),
          FigSuggestion(
            name: 's',
            description: 'Socket'
          ),
          FigSuggestion(
            name: 'p',
            description: 'Pipe'
          )
        ]
      )
      ]
    ),
    Option(
      name: ['-e', '--extension'],
      isRepeatable: true,
      description: 'Filter by file extension',
      args: [
        Arg(
        name: 'file extension'
      )
      ]
    ),
    Option(
      name: ['-x', '--exec'],
      description: 'Execute a command for each search result',
      args: [
        Arg(
        name: 'cmd'
      )
      ]
    ),
    Option(
      name: ['-X', '--exec-batch'],
      description: 'Execute a command with all search results at once',
      args: [
        Arg(
        name: 'cmd'
      )
      ]
    ),
    Option(
      name: ['-E', '--exclude'],
      isRepeatable: true,
      description: 'Exclude entries that match the given glob pattern',
      args: [
        Arg(
        name: 'pattern'
      )
      ]
    ),
    Option(
      name: ['-c', '--color'],
      description: 'When to use colors',
      args: [
        Arg(
        name: 'when',
        defaultValue: 'auto',
        suggestions: [
          FigSuggestion(name: 'never'),
          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'always')
        ]
      )
      ]
    ),
    Option(
      name: ['-S', '--size'],
      description: 'Limit results based on the size of files',
      args: [
        Arg(
        name: 'size'
      )
      ]
    ),
    Option(
      name: '--changed-within',
      description: 'Filter by file modification time (newer than)',
      args: [
        Arg(
        name: 'date'
      )
      ]
    ),
    Option(
      name: '--changed-before',
      description: 'Filter by file modification time (older than)',
      args: [
        Arg(
        name: 'date'
      )
      ]
    )
  ],
  args: [
    Arg(
      name: 'pattern',
      description: 'The search pattern - a regular expression unless \'--glob\' is used (optional)'
    ),
    Arg(
      name: 'path',
      description: 'The root directories for the filesystem search',
      template: ['folders'],
      isOptional: true,
      isVariadic: true
    )
  ]
);
