// Auto-generated from TypeScript source: exa.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `exa` CLI
final FigSpec exaSpec = FigSpec(
  name: 'exa',
  description: 'A modern replacement for ls',
  args: [
    Arg(
    isVariadic: true,
    name: 'files...',
    template: 'filepaths'
  )
  ],
  options: [
    Option(
      description: 'Show list of command-line options',
      name: ['-?', '--help']
    ),
    Option(
      description: 'Show version of exa',
      name: ['-v', '--version']
    ),
    Option(
      description: 'Display one entry per line',
      name: ['-1', '--oneline']
    ),
    Option(
      description: 'Display extended file metadata as a table',
      name: ['-l', '--long']
    ),
    Option(
      description: 'Display entries as a grid (default)',
      name: ['-G', '--grid']
    ),
    Option(
      description: 'Sort the grid across, rather than downwards',
      name: ['-x', '--across']
    ),
    Option(
      description: 'Recurse into directories',
      name: ['-R', '--recurse']
    ),
    Option(
      description: 'Recurse into directories as a tree',
      name: ['-T', '--tree']
    ),
    Option(
      description: 'Display type indicator by file names',
      name: ['-F', '--classify']
    ),
    Option(
      description: 'When to use terminal colours (always, auto, never)',
      name: ['--colour', '--color'],
      args: [
        Arg(
        name: 'when',
        suggestions: [
          FigSuggestion(
            name: 'always'
          ),
          FigSuggestion(
            name: 'auto'
          ),
          FigSuggestion(
            name: 'never'
          )
        ]
      )
      ]
    ),
    Option(
      description: 'Highlight levels of file sizes distinctly',
      name: ['--colour-scale', '--color-scale']
    ),
    Option(
      description: 'Show hidden and \'dot\' files',
      name: ['-a', '--all']
    ),
    Option(
      description: 'List directories like regular files',
      name: ['-d', '--list-dirs']
    ),
    Option(
      description: 'Limit the depth of recursion',
      name: ['-L', '--level'],
      args: [
        Arg(
        name: 'DEPTH'
      )
      ]
    ),
    Option(
      description: 'Reverse the sort order',
      name: ['-r', '--reverse']
    ),
    Option(
      description: 'Which field to sort by',
      name: ['-s', '--sort'],
      args: [
        Arg(
        name: 'sort field',
        suggestions: [
          FigSuggestion(
            name: 'name'
          ),
          FigSuggestion(
            name: 'Name'
          ),
          FigSuggestion(
            name: 'extension'
          ),
          FigSuggestion(
            name: 'Extension'
          ),
          FigSuggestion(
            name: 'size'
          ),
          FigSuggestion(
            name: 'type'
          ),
          FigSuggestion(
            name: 'modified'
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
            name: 'none'
          ),
          FigSuggestion(
            name: 'date'
          ),
          FigSuggestion(
            name: 'time'
          ),
          FigSuggestion(
            name: 'old'
          ),
          FigSuggestion(
            name: 'new'
          )
        ]
      )
      ]
    ),
    Option(
      description: 'List directories before other files',
      name: '--group-directories-first'
    ),
    Option(
      description: 'List only directories',
      name: ['-D', '--only-dirs']
    ),
    Option(
      description: 'Glob patterns (pipe-separated) of files to ignore',
      name: ['-I', '--ignore-glob'],
      args: [
        Arg(
        name: 'GLOB'
      )
      ]
    ),
    Option(
      description: 'Ignore files mentioned in \'.gitignore\'',
      name: '--git-ignore'
    ),
    Option(
      description: 'List file sizes with binary prefixes',
      name: ['-b', '--binary']
    ),
    Option(
      description: 'List file sizes in bytes, without any prefixes',
      name: ['-B', '--bytes']
    ),
    Option(
      description: 'List each file\'s group',
      name: ['-g', '--group']
    ),
    Option(
      description: 'Add a header row to each column',
      name: ['-h', '--header']
    ),
    Option(
      description: 'List each file\'s number of hard links',
      name: ['-H', '--links']
    ),
    Option(
      description: 'List each file\'s inode number',
      name: ['-i', '--inode']
    ),
    Option(
      description: 'Use the modified timestamp field',
      name: ['-m', '--modified']
    ),
    Option(
      description: 'Show number of file system blocks',
      name: ['-S', '--blocks']
    ),
    Option(
      description: 'Which timestamp field to list (modified, accessed, created)',
      name: ['-t', '--time'],
      args: [
        Arg(
        name: 'FIELD',
        suggestions: [
          FigSuggestion(
            name: 'modified'
          ),
          FigSuggestion(
            name: 'accessed'
          ),
          FigSuggestion(
            name: 'created'
          )
        ]
      )
      ]
    ),
    Option(
      description: 'Use the accessed timestamp field',
      name: ['-u', '--accessed']
    ),
    Option(
      description: 'Use the created timestamp field',
      name: ['-U', '--created']
    ),
    Option(
      description: 'How to format timestamps (default, iso, long-iso, full-iso)',
      name: '--time-style',
      args: [
        Arg(
        name: 'style',
        suggestions: [
          FigSuggestion(
            name: 'default'
          ),
          FigSuggestion(
            name: 'iso'
          ),
          FigSuggestion(
            name: 'long-iso'
          ),
          FigSuggestion(
            name: 'full-iso'
          )
        ]
      )
      ]
    ),
    Option(
      description: 'List each file\'s Git status, if tracked or ignored',
      name: '--git'
    ),
    Option(
      description: 'List each file\'s extended attributes and sizes',
      name: ['-@', '--extended']
    ),
    Option(
      description: 'Shows icons before each folder or file',
      name: '--icons',
      exclusiveOn: ['--no-icons']
    ),
    Option(
      description: 'Does not display icons',
      exclusiveOn: ['--icons'],
      name: '--no-icons'
    ),
    Option(
      description: 'Displays when a file or folder got changed instead of modified in the header',
      name: '--changed'
    )
  ]
);
