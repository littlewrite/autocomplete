// Auto-generated from TypeScript source: eza.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `eza` CLI
final FigSpec ezaSpec = FigSpec(
  name: 'eza',
  description: 'A modern replacement for ls',
  args: [
    Arg(
    isVariadic: true,
    template: 'folders',
    defaultValue: '.'
  )
  ],
  options: [
    Option(
      name: ['-?', '--help'],
      description: 'Show list of command-line options'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Show version of eza'
    ),
    Option(
      name: ['-1', '--oneline'],
      description: 'Display one entry per line'
    ),
    Option(
      name: ['-l', '--long'],
      description: 'Display extended file metadata as a table'
    ),
    Option(
      name: ['-G', '--grid'],
      description: 'Display entries as a grid (default)'
    ),
    Option(
      name: ['-x', '--across'],
      description: 'Sort the grid across, rather than downward'
    ),
    Option(
      name: ['-R', '--recurse'],
      description: 'Recurse into directories'
    ),
    Option(
      name: ['-T', '--tree'],
      description: 'Recurse into directories as a tree'
    ),
    Option(
      name: ['-X', '--dereference'],
      description: 'Dereference symbolic links when displaying information'
    ),
    Option(
      name: ['-F', '--classify'],
      description: 'Display type indicator by file names',
      args: [
        Arg(
        name: 'when',
        suggestions: [
          FigSuggestion(
            name: ['auto', 'automatic'],
            description: 'Display file kind indicators only when the standard output is connected to a real terminal'
          ),
          FigSuggestion(
            name: 'always',
            description: 'Always display file kind indicators'
          ),
          FigSuggestion(
            name: 'never',
            description: 'Disables the use of file kind indicators'
          )
        ],
        defaultValue: 'automatic'
      )
      ]
    ),
    Option(
      name: ['--color', '--colour'],
      description: 'When to use terminal colours',
      args: [
        Arg(
        name: 'when',
        suggestions: [
          FigSuggestion(
            name: ['auto', 'automatic'],
            description: 'To colorize the output only when the standard output is connected to a real terminal'
          ),
          FigSuggestion(
            name: 'always',
            description: 'Always output terminal color'
          ),
          FigSuggestion(
            name: 'never',
            description: 'Disables the use of terminal color'
          )
        ],
        defaultValue: 'automatic'
      )
      ]
    ),
    Option(
      name: ['--color-scale', '--colour-scale'],
      description: 'Highlight levels of \'field\' distinctly',
      args: [
        Arg(
        name: 'field',
        suggestions: [
          FigSuggestion(name: 'all'),
          FigSuggestion(name: 'age'),
          FigSuggestion(name: 'size')
        ]
      )
      ]
    ),
    Option(
      name: ['--color-scale-mode', '--colour-scale-mode'],
      description: 'Use gradient or fixed colors in --color-scale',
      args: [
        Arg(
        name: 'mode',
        suggestions: [
          FigSuggestion(name: 'fixed'),
          FigSuggestion(name: 'gradient')
        ],
        defaultValue: 'gradient'
      )
      ]
    ),
    Option(
      name: '--icons',
      description: 'When to display icons',
      args: [
        Arg(
        name: 'when',
        suggestions: [
          FigSuggestion(
            name: ['auto', 'automatic'],
            description: 'Display icons only when the standard output is connected to a real terminal'
          ),
          FigSuggestion(
            name: 'always',
            description: 'Always display icons'
          ),
          FigSuggestion(
            name: 'never',
            description: 'Disables the use of icons'
          )
        ],
        defaultValue: 'automatic'
      )
      ]
    ),
    Option(
      name: '--no-quotes',
      description: 'Don\'t quote file names with spaces'
    ),
    Option(
      name: '--hyperlink',
      description: 'Display entries as hyperlinks'
    ),
    Option(
      name: '--absolute',
      description: 'Display entries with their absolute path',
      args: [
        Arg(
        name: 'mode',
        suggestions: [
          FigSuggestion(name: 'off'),
          FigSuggestion(name: 'on'),
          FigSuggestion(name: 'follow')
        ],
        defaultValue: 'off'
      )
      ]
    ),
    Option(
      name: '--follow-symlinks',
      description: 'Drill down into symbolic links that point to directories'
    ),
    Option(
      name: ['-w', '--width'],
      description: 'Set screen width in columns',
      args: [
        Arg(
        name: 'columns'
      )
      ]
    ),
    Option(
      name: ['-a', '--all'],
      description: 'Show hidden and \'dot\' files',
      isRepeatable: 2
    ),
    Option(
      name: ['-A', '--almost-all'],
      description: 'Equivalent to \'--all\'',
      isRepeatable: 2
    ),
    Option(
      name: ['-d', '--list-dirs'],
      description: 'List directories like regular files'
    ),
    Option(
      name: ['-D', '--only-dirs'],
      description: 'List only directories'
    ),
    Option(
      name: ['-f', '--only-files'],
      description: 'List only files'
    ),
    Option(
      name: '--show-symlinks',
      description: 'Explicitly show symbolic links',
      dependsOn: ['--only-dirs', '--only-files']
    ),
    Option(
      name: '--no-symlinks',
      description: 'Do not show symbolic links'
    ),
    Option(
      name: ['-L', '--level'],
      description: 'Limit the depth of recursion',
      args: [
        Arg(
        name: 'depth'
      )
      ]
    ),
    Option(
      name: ['-r', '--reverse'],
      description: 'Reverse the sort order'
    ),
    Option(
      name: ['-s', '--sort'],
      description: 'Which field to sort by',
      args: [
        Arg(
        name: 'field',
        suggestions: [
          FigSuggestion(
            name: 'name',
            description: 'Lowercase precede UPERCASE'
          ),
          FigSuggestion(
            name: 'Name',
            description: 'UPERCASE precede lowercase'
          ),
          FigSuggestion(
            name: 'extension',
            description: 'Lowercase precede UPERCASE'
          ),
          FigSuggestion(
            name: 'Extension',
            description: 'UPERCASE precede lowercase'
          ),
          FigSuggestion(
            name: 'size'
          ),
          FigSuggestion(
            name: 'modified'
          ),
          FigSuggestion(
            name: 'changed'
          ),
          FigSuggestion(
            name: 'accessed'
          ),
          FigSuggestion(
            name: 'created'
          ),
          FigSuggestion(
            name: 'inode'
          ),
          FigSuggestion(
            name: 'type'
          ),
          FigSuggestion(
            name: 'none'
          ),
          FigSuggestion(
            name: ['date', 'time', 'new', 'newest']
          ),
          FigSuggestion(
            name: ['age', 'old', 'oldest']
          )
        ]
      )
      ]
    ),
    Option(
      name: '--group-directories-first',
      description: 'List directories before other files'
    ),
    Option(
      name: '--group-directories-last',
      description: 'List directories after other files'
    ),
    Option(
      name: ['-I', '--ignore-glob'],
      description: 'Glob patterns (pipe-separated) of files to ignore',
      args: [
        Arg(
        name: 'globs'
      )
      ]
    ),
    Option(
      name: '--git-ignore',
      description: 'Ignore files mentioned in \'.gitignore\''
    ),
    Option(
      name: ['-b', '--binary'],
      description: 'List file sizes with binary prefixes',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-B', '--bytes'],
      description: 'List file sizes in bytes, without any prefixes',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-g', '--group'],
      description: 'List each file\'s group',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: '--smart-group',
      description: 'Only show group if it has a different name from owner',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-h', '--header'],
      description: 'Add a header row to each column',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-H', '--links'],
      description: 'List each file\'s number of hard links',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-i', '--inode'],
      description: 'List each file\'s inode number',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-M', '--mounts'],
      description: 'Show mount details',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-n', '--numeric'],
      description: 'List numeric user and group IDs',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-O', '--flags'],
      description: 'List file flags',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-S', '--blocksize'],
      description: 'Show size of allocated file system blocks',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-t', '--time'],
      description: 'Which timestamp field to list',
      args: [
        Arg(
        name: 'field',
        suggestions: [
          FigSuggestion(name: 'modified'),
          FigSuggestion(name: 'changed'),
          FigSuggestion(name: 'accessed'),
          FigSuggestion(name: 'created')
        ]
      )
      ],
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-m', '--modified'],
      description: 'Use the modified timestamp field',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-u', '--accessed'],
      description: 'Use the accessed timestamp field',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-U', '--created'],
      description: 'Use the created timestamp field',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: '--changed',
      description: 'Use the changed timestamp field',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: '--time-style',
      description: 'How to format timestamps',
      args: [
        Arg(
        name: 'format',
        suggestions: [
          FigSuggestion(name: 'default'),
          FigSuggestion(name: 'iso'),
          FigSuggestion(name: 'long-iso'),
          FigSuggestion(name: 'relative'),
          FigSuggestion(name: '+%Y-%m-%d %H:%M')
        ]
      )
      ],
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: '--total-size',
      description: 'Show the size of a directory as the size of all files and directories inside',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-o', '--octal-permissions'],
      description: 'List each file\'s permission in octal format',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: '--no-permissions',
      description: 'Suppress the permissions field',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: '--no-filesize',
      description: 'Suppress the filesize field',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: '--no-user',
      description: 'Suppress the user field',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: '--no-time',
      description: 'Suppress the time field',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: '--stdin',
      description: 'Read file names from stdin, one per line or other separator specified in environment',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: '--git',
      description: 'List each file\'s Git status, if tracked or ignored',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: '--no-git',
      description: 'Suppress Git status',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: '--git-repos',
      description: 'List root of git-tree status',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: '--git-repos-no-status',
      description: 'List each git-repos branch name (much faster)',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-@', '--extended'],
      description: 'List each file\'s extended attributes and sizes',
      dependsOn: ['-l', '--long']
    ),
    Option(
      name: ['-Z', '--context'],
      description: 'List each file\'s security context',
      dependsOn: ['-l', '--long']
    )
  ]
);
