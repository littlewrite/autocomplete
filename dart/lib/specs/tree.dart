// Auto-generated from TypeScript source: tree.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `tree` CLI
final FigSpec treeSpec = FigSpec(
  name: 'tree',
  description: 'Display directories as trees (with optional color/HTML output)',
  args: [
    Arg(
    template: 'folders'
  )
  ],
  options: [
    Option(
      name: '-a',
      description: 'All files are listed'
    ),
    Option(
      name: '-d',
      description: 'List directories only'
    ),
    Option(
      name: '-l',
      description: 'Follow symbolic links like directories'
    ),
    Option(
      name: '-f',
      description: 'Print the full path prefix for each file'
    ),
    Option(
      name: '-x',
      description: 'Stay on current filesystem only'
    ),
    Option(
      name: '-L',
      description: 'Descend only level directories deep',
      args: [
        Arg(
        name: 'level'
      )
      ]
    ),
    Option(
      name: '-R',
      description: 'Rerun tree when max dir level reached'
    ),
    Option(
      name: '-P',
      description: 'List only those files that match the pattern given',
      args: [
        Arg(
        name: 'pattern'
      )
      ]
    ),
    Option(
      name: '-I',
      description: 'Do not list files that match the given pattern',
      args: [
        Arg(
        name: 'pattern'
      )
      ]
    ),
    Option(
      name: '--ignore-case',
      description: 'Ignore case when pattern matching'
    ),
    Option(
      name: '--matchdirs',
      description: 'Include directory names in -P pattern matching'
    ),
    Option(
      name: '--noreport',
      description: 'Turn off file/directory count at end of tree listing'
    ),
    Option(
      name: '--charset',
      description: 'Use charset X for terminal/HTML and indentation line output',
      args: [
        Arg(
        name: 'charset'
      )
      ]
    ),
    Option(
      name: '--filelimit',
      description: 'Do not descend dirs with more than # files in them',
      args: [
        Arg(
        name: 'number',
        description: 'Number of files'
      )
      ]
    ),
    Option(
      name: '--timefmt',
      description: 'Print and format time according to the format <f>',
      args: [
        Arg(
        name: 'format',
        description: 'Format in strftime syntax'
      )
      ]
    ),
    Option(
      name: '-o',
      description: 'Output to file instead of stdout',
      args: [
        Arg(
        name: 'filename'
      )
      ]
    ),
    Option(
      name: '-q',
      description: 'Print non-printable characters as \'?\''
    ),
    Option(
      name: '-N',
      description: 'Print non-printable characters as is'
    ),
    Option(
      name: '-Q',
      description: 'Quote filenames with double quotes'
    ),
    Option(
      name: '-p',
      description: 'Print the protections for each file'
    ),
    Option(
      name: '-u',
      description: 'Displays file owner or UID number'
    ),
    Option(
      name: '-g',
      description: 'Displays file group owner or GID number'
    ),
    Option(
      name: '-s',
      description: 'Print the size in bytes of each file'
    ),
    Option(
      name: '-h',
      description: 'Print the size in a more human readable way'
    ),
    Option(
      name: '--si',
      description: 'Like -h but use SI units (powers of 1000) instead'
    ),
    Option(
      name: '--du',
      description: 'For each directory report its size as the accumulation of sizes of all its files and sub-directories (and their files, and so on). The total amount of used space is also given in the final report (like the \'du -c\' command.) This option requires tree to read the entire directory tree before emitting it, see BUGS AND NOTES below. Implies -s'
    ),
    Option(
      name: '-D',
      description: 'Print the date of the last modification time or if -c is used, the last status change time for the file listed'
    ),
    Option(
      name: '-F',
      description: 'Appends \'/\', \'=\', \'*\', \'@\', \'|\' or \'>\' as per ls -F'
    ),
    Option(
      name: '--inodes',
      description: 'Print inode number of each file'
    ),
    Option(
      name: '--device',
      description: 'Print device ID number to which each file belongs'
    ),
    Option(
      name: '-v',
      description: 'Sort files alphanumerically by version'
    ),
    Option(
      name: '-t',
      description: 'Sort files by last modification time'
    ),
    Option(
      name: '-c',
      description: 'Sort files by last status change time'
    ),
    Option(
      name: '-U',
      description: 'Leave files unsorted'
    ),
    Option(
      name: '-r',
      description: 'Reverse the order of the sort'
    ),
    Option(
      name: '--dirsfirst',
      description: 'List directories before files (-U disables)'
    ),
    Option(
      name: '--sort',
      description: 'Select sort',
      args: [
        Arg(
        name: 'type',
        suggestions: [
          FigSuggestion(name: 'name'),
          FigSuggestion(name: 'version'),
          FigSuggestion(name: 'size'),
          FigSuggestion(name: 'mtime'),
          FigSuggestion(name: 'ctime')
        ]
      )
      ]
    ),
    Option(
      name: '-i',
      description: 'Don\'t print indentation lines'
    ),
    Option(
      name: '-A',
      description: 'Print ANSI lines graphic indentation lines'
    ),
    Option(
      name: '-S',
      description: 'Print with CP437 (console) graphics indentation lines'
    ),
    Option(
      name: '-n',
      description: 'Turn colorization off always (-C overrides)'
    ),
    Option(
      name: '-C',
      description: 'Turn colorization on always'
    ),
    Option(
      name: '-X',
      description: 'Prints out an XML representation of the tree'
    ),
    Option(
      name: '-J',
      description: 'Prints out an JSON representation of the tree'
    ),
    Option(
      name: '-H',
      description: 'Prints out HTML format with baseHREF as top directory',
      args: [
        Arg(
        name: 'baseHREF'
      )
      ]
    ),
    Option(
      name: '-T',
      description: 'Replace the default HTML title and H1 header with string',
      args: [
        Arg(
        name: 'title'
      )
      ]
    ),
    Option(
      name: '--nolinks',
      description: 'Turn off hyperlinks in HTML output'
    ),
    Option(
      name: '--fromfile',
      description: 'Reads paths from files'
    ),
    Option(
      name: '--version',
      description: 'Print version and exit'
    ),
    Option(
      name: '--help',
      description: 'Print usage and this help message and exit'
    ),
    Option(
      name: '--',
      description: 'Options processing terminator'
    )
  ]
);
