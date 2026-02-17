// Auto-generated from TypeScript source: ag.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ag` CLI
final FigSpec agSpec = FigSpec(
  name: 'ag',
  description: 'Recursively search for PATTERN in PATH. Like grep or ack, but faster',
  args: [

    Arg(
      name: 'pattern',
      isOptional: true
    ),
    Arg(
      name: 'path',
      isOptional: true,
      isVariadic: true,
      template: ['filepaths']
    )
  ],
  options: [

    Option(
      name: '--ackmate',
      description: 'Output results in a format parseable by AckMate https://github.com/protocool/AckMate'
    ),
    Option(
      name: '--affinity',
      description: 'Set thread affinity (if platform supports it)',
      exclusiveOn: ['--noaffinity']
    ),
    Option(
      name: '--noaffinity',
      description: 'Don\'t set thread affinity (if platform supports it)',
      exclusiveOn: ['--affinity']
    ),
    Option(
      name: ['-a', '--all-types'],
      description: 'Search all files. This doesn\'t include hidden files, and doesn\'t respect any ignore files'
    ),
    Option(
      name: ['-A', '--after'],
      description: 'Print lines after match',
      args: [
        Arg(
        name: 'LINES',
        description: 'The amount of lines',
        isOptional: true,
        defaultValue: '2'
      )
      ]
    ),
    Option(
      name: ['-B', '--before'],
      description: 'Print lines before match',
      args: [
        Arg(
        name: 'LINES',
        description: 'The amount of lines',
        isOptional: true,
        defaultValue: '2'
      )
      ]
    ),
    Option(
      name: '--nobreak',
      description: 'Print a newline between matches in different files. Enabled by default'
    ),
    Option(
      name: ['-c', '--count'],
      description: 'Only  print the number of matches in each file. Note: This is the number of matches, not the number of matching lines. Pipe output to wc -l if you want the number of matching lines'
    ),
    Option(
      name: '--color',
      description: 'Print color codes in results',
      exclusiveOn: ['--nocolor']
    ),
    Option(
      name: '--nocolor',
      description: 'Don\'t print color codes in results',
      exclusiveOn: ['--color']
    ),
    Option(
      name: '--color-line-number',
      description: 'Color codes for line numbers. Default is 1;33'
    ),
    Option(
      name: '--color-match',
      description: 'Color codes for result match numbers. Default is 30;43'
    ),
    Option(
      name: '--color-path',
      description: 'Color codes for path names. Default is 1;32'
    ),
    Option(
      name: '--column',
      description: 'Print column numbers in results'
    ),
    Option(
      name: ['-C', '--context'],
      description: 'Print lines before and after matches',
      args: [
        Arg(
        name: 'LINES',
        description: 'The amount of lines',
        isOptional: true,
        defaultValue: '2'
      )
      ]
    ),
    Option(
      name: ['-D', '--debug'],
      description: 'Output ridiculous amounts of debugging info. Not useful unless you\'re actually debugging'
    ),
    Option(
      name: '--depth',
      description: 'Search up to NUM directories deep, -1 for unlimited',
      args: [
        Arg(
        name: 'NUM',
        description: 'The depth in directories to search',
        isOptional: true,
        defaultValue: '25'
      )
      ]
    ),
    Option(
      name: '--filename',
      description: 'Print file names',
      exclusiveOn: ['--nofilename']
    ),
    Option(
      name: '--nofilename',
      description: 'Don\'t print file names',
      exclusiveOn: ['--filename']
    ),
    Option(
      name: ['-f', '--follow'],
      description: 'Follow symlinks',
      exclusiveOn: ['--nofollow']
    ),
    Option(
      name: '--nofollow',
      description: 'Don\'t follow symlinks',
      exclusiveOn: ['-f', '--follow']
    ),
    Option(
      name: ['-F', '--fixed-strings'],
      description: 'Alias for --literal for compatibility with grep'
    ),
    Option(
      name: '--group',
      description: 'Lumps multiple matches in the same file together, and presents them under a single occurrence of the filename',
      exclusiveOn: ['--nogroup']
    ),
    Option(
      name: '--nogroup',
      description: 'Refrains from lumping matches in the same file together, and instead places the filename at the start of each match line',
      exclusiveOn: ['--group']
    ),
    Option(
      name: '-g',
      description: 'Print filenames matching PATTERN',
      args: [
        Arg(
        name: 'PATTERN',
        description: 'The pattern to look for'
      )
      ]
    ),
    Option(
      name: ['-G', '--file-search-regex'],
      description: 'Only search files whose names match PATTERN',
      args: [
        Arg(
        name: 'PATTERN',
        description: 'The pattern to look for'
      )
      ]
    ),
    Option(
      name: ['-H', '--heading'],
      description: 'Print filenames above matching contents',
      exclusiveOn: ['--noheading']
    ),
    Option(
      name: '--noheading',
      description: 'Don\'t print filenames above matching contents',
      exclusiveOn: ['-H', '--heading']
    ),
    Option(
      name: '--hidden',
      description: 'Search hidden files. This option obeys ignored files'
    ),
    Option(
      name: '--ignore',
      description: 'Ignore files/directories whose names match this pattern. Literal file and directory names are also allowed',
      args: [
        Arg(
        name: 'PATTERN',
        description: 'The pattern to look for',
        template: ['filepaths', 'folders']
      )
      ]
    ),
    Option(
      name: '--ignore-dir',
      description: 'Alias for --ignore for compatibility with ack',
      args: [
        Arg(
        name: 'NAME',
        description: 'The directory to ignore',
        template: ['filepaths', 'folders']
      )
      ]
    ),
    Option(
      name: ['-i', '--ignore-case'],
      description: 'Match case-insensitively'
    ),
    Option(
      name: ['-l', '--files-with-matches'],
      description: 'Only print the names of files containing matches, not the matching lines. An empty query will print all files that would be searched'
    ),
    Option(
      name: ['-L', '--files-without-matches'],
      description: 'Only print the names of files that don\'t contain matches'
    ),
    Option(
      name: '--list-file-types',
      description: 'See FILE TYPES below'
    ),
    Option(
      name: ['-m', '--max-count'],
      description: 'Skip the rest of a file after NUM matches. Default is 0, which never skips',
      args: [
        Arg(
        name: 'NUM',
        description: 'The number of matches to skip after',
        isOptional: true
      )
      ]
    ),
    Option(
      name: '--mmap',
      description: 'Use of memory-mapped I/O. Defaults to true on platforms where mmap() is faster than read(). (All but macOS.)',
      exclusiveOn: ['--nommap']
    ),
    Option(
      name: '--nommap',
      description: 'Don\'t use of memory-mapped I/O. Defaults to true on platforms where mmap() is faster than read(). (All but macOS.)',
      exclusiveOn: ['--mmap']
    ),
    Option(
      name: '--multiline',
      description: 'Match regexes across newlines',
      exclusiveOn: ['--nomultiline']
    ),
    Option(
      name: '--nomultiline',
      description: 'Don\'t match regexes across newlines',
      exclusiveOn: ['--multiline']
    ),
    Option(
      name: ['-n', '--norecurse'],
      description: 'Don\'t recurse into directories',
      exclusiveOn: ['-r', '--recurse']
    ),
    Option(
      name: '--numbers',
      description: 'Print line numbers',
      exclusiveOn: ['--nonumbers']
    ),
    Option(
      name: '--nonumbers',
      description: 'Don\'t print line numbers',
      exclusiveOn: ['--numbers']
    ),
    Option(
      name: ['-o', '--only-matching'],
      description: 'Print only the matching part of the lines'
    ),
    Option(
      name: '--one-device',
      description: 'When  recursing  directories, don\'t scan dirs that reside on other storage devices. This lets you avoid scanning slow network mounts. This feature is not supported on all platforms'
    ),
    Option(
      name: ['-p', '--path-to-ignore'],
      description: 'Provide a path to a specific .ignore file',
      args: [
        Arg(
        name: 'STRING',
        description: 'The path to the ignore file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--pager',
      description: 'Use a pager such as less. Use --nopager to override. This option is also ignored if output is piped to another program',
      args: [
        Arg(
        name: 'COMMAND',
        description: 'The pager',
        suggestions: [

          FigSuggestion(name: 'more'),
          FigSuggestion(name: 'less'),
          FigSuggestion(name: 'most')
        ]
      )
      ]
    ),
    Option(
      name: '--parallel',
      description: 'Parse the input stream as a search term, not data to search. This is meant to be  used  with  tools  such  as  GNU  parallel.  For  example:  echo "foo\nbar\nbaz" | parallel "ag {} ." will run 3 instances of ag, searching the current directory for "foo", "bar", and "baz"'
    ),
    Option(
      name: '--print-long-lines',
      description: 'Print matches on very long lines (> 2k characters by default)'
    ),
    Option(
      name: ['--passthrough', '--passthru'],
      description: 'When searching a stream, print all lines even if they don\'t match'
    ),
    Option(
      name: ['-Q', '--literal'],
      description: 'Do not parse PATTERN as a regular expression. Try to match it literally'
    ),
    Option(
      name: ['-r', '--recurse'],
      description: 'Recurse into directories when searching. Default is true',
      exclusiveOn: ['-n', '--norecurse']
    ),
    Option(
      name: ['-s', '--case-sensitive'],
      description: 'Match case-sensitively'
    ),
    Option(
      name: ['-S', '--smart-case'],
      description: 'Match case-sensitively if there are any uppercase letters in PATTERN, case-insensitively otherwise. Enabled by default'
    ),
    Option(
      name: '--search-binary',
      description: 'Search binary files for matches'
    ),
    Option(
      name: '--silent',
      description: 'Suppress all log messages, including errors'
    ),
    Option(
      name: '--stats',
      description: 'Print stats (files scanned, time taken, etc)'
    ),
    Option(
      name: '--stats-only',
      description: 'Print stats (files scanned, time taken, etc) and nothing else'
    ),
    Option(
      name: ['-t', '--all-text'],
      description: 'Search all text files. This doesn\'t include hidden files'
    ),
    Option(
      name: ['-u', '--unrestricted'],
      description: 'Search all files. This ignores .ignore, .gitignore, etc. It searches binary and hidden files as well'
    ),
    Option(
      name: ['-U', '--skip-vcs-ignores'],
      description: 'Ignore VCS ignore files (.gitignore, .hgignore), but still use .ignore'
    ),
    Option(
      name: ['-v', '--invert-match'],
      description: 'Match every line not containing the specified pattern'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Print version info'
    ),
    Option(
      name: '--vimgrep',
      description: 'Output results in the same form as Vim\'s :vimgrep /pattern/g Here is a ~/.vimrc configuration example: set grepprg=ag --vimgrep \$* set grepformat=%f:%l:%c:%m Then use :grep to grep for something. Then use :copen, :cn, :cp, etc. to navigate through the matches'
    ),
    Option(
      name: ['-w', '--word-regexp'],
      description: 'Only match whole words'
    ),
    Option(
      name: '--workers',
      description: 'Use NUM worker threads. Default is the number of CPU cores, with a max of 8',
      args: [
        Arg(
        name: 'NUM',
        description: 'The NUM of worker threads',
        isOptional: true
      )
      ]
    ),
    Option(
      name: ['-z', '--search-zip'],
      description: 'Search contents of compressed files. Currently, gz and xz are supported. This option requires that ag is built with lzma and zlib'
    ),
    Option(
      name: ['-0', '--null', '--print0'],
      description: 'Separate the filenames with \\0, rather than \n: this allows xargs -0 <command> to correctly process filenames containing spaces or newlines'
    )
  ]
);
