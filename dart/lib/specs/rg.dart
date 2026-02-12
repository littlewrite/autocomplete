// Auto-generated from TypeScript source: rg.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `rg` CLI
final FigSpec rgSpec = FigSpec(
  name: 'rg',
  description: 'Recursively searches current directory for lines matching a pattern',
  options: [
    Option(
      name: ['-A', '--after-context'],
      description: 'Shows NUM lines after each match',
      args: [
        Arg(
        name: 'Num'
      )
      ]
    ),
    Option(
      name: '--auto-hybrid-regex',
      description: 'When this flag is used, ripgrep will dynamically choose between supported regex engines depending on the features used in a pattern'
    ),
    Option(
      name: ['-B', '--before-context'],
      description: 'Shows NUM lines before each match',
      args: [
        Arg(
        name: 'Num'
      )
      ]
    ),
    Option(
      name: '--binary',
      description: 'Enabling this flag will cause ripgrep to search binary files'
    ),
    Option(
      name: '--block-buffered',
      description: 'When enabled, ripgrep will use block buffering'
    ),
    Option(
      name: ['-b', '--byte-offset'],
      description: 'Prints the 0-based byte offset within the input file before each line of output'
    ),
    Option(
      name: ['-s', '--case-sensitive'],
      description: 'Search case sensitively'
    ),
    Option(
      name: '--color',
      description: 'Controls when to use colors',
      args: [
        Arg(
        name: 'when',
        suggestions: [
          FigSuggestion(
            name: 'never',
            description: 'Colors will never be used'
          ),
          FigSuggestion(
            name: 'auto',
            description: 'Ripgrep tries to be smart'
          ),
          FigSuggestion(
            name: 'always',
            description: 'Colors will always be used regardless of where output is sent'
          ),
          FigSuggestion(
            name: 'ansi',
            description: 'Colors will always be used, but emits ANSI escapes'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--colors',
      description: 'Specifies color settings for use in the output',
      args: [
        Arg(
        name: 'Color Spec',
        isVariadic: true,
        description: '{type}:{attribute}:{value}, ex: `match:fg:magenta`'
      )
      ]
    ),
    Option(
      name: '--column',
      description: 'Shows column numbers for the first match on each line'
    ),
    Option(
      name: ['-C', '--context'],
      description: 'Shows NUM lines before and after each match',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: '--context-separator',
      description: 'The string used to separate non-contiguous context lines in the output',
      args: [
        Arg(
        name: 'Separator'
      )
      ]
    ),
    Option(
      name: ['-c', '--count'],
      description: 'Suppresses normal output and shows the number of lines that match the given pattersns for each file searched'
    ),
    Option(
      name: '--count-matches',
      description: 'Suppresses normal output and shows the number of individual matches of the given patterns for each file searched'
    ),
    Option(
      name: '--crlf',
      description: 'Treats CRLF as a line terminator instead of just a line break'
    ),
    Option(
      name: '--debug',
      description: 'Shows debug messages'
    ),
    Option(
      name: '--dfa-size-limit',
      description: 'The upper size limit of the regex DFA',
      args: [
        Arg(
          name: 'NUM'
        ),
        Arg(
          name: 'suffix',
          isOptional: true
        )
      ]
    ),
    Option(
      name: ['-E', '--encoding'],
      description: 'Specifies the text encoding that ripgrep will use on all files searched',
      args: [
        Arg(
        name: 'Encoding'
      )
      ]
    ),
    Option(
      name: '--engine',
      description: 'Specifies which regular expression engine to use',
      args: [
        Arg(
        name: 'Engine',
        defaultValue: 'default',
        suggestions: [
          FigSuggestion(name: 'default'),
          FigSuggestion(name: 'pcre2'),
          FigSuggestion(name: 'auto')
        ]
      )
      ]
    ),
    Option(
      name: ['-f', '--file'],
      description: 'Searches for patterns from the given file, with one pattern per line',
      args: [
        Arg(
        name: 'Patternfile',
        isVariadic: true,
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--files',
      description: 'Prints each file that would be searched without actually performing the search'
    ),
    Option(
      name: ['-l', '--files-with-matches'],
      description: 'Only prints the paths with at least one match'
    ),
    Option(
      name: '--files-without-match',
      description: 'Only prints the paths that contains zero matches'
    ),
    Option(
      name: ['-F', '--fixed-strings'],
      description: 'Treats the pattern as a literal string instead of a regular expression'
    ),
    Option(
      name: ['-L', '--follow'],
      description: 'Follows symbolic links while traversing directories'
    ),
    Option(
      name: ['-g', '--glob'],
      description: 'Includes or excludes files and directories for searching that match the given glob',
      args: [
        Arg(
        name: 'GLOB',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--glob-case-insensitive',
      description: 'Processes glob patterns given with the -g/--glob flag',
      dependsOn: ['-g', '--glob']
    ),
    Option(
      name: '--heading',
      description: 'Prints the file path above clusters of matches from each file instead of printing the file path as a prefix for reach matched line'
    ),
    Option(
      name: '--hidden',
      description: 'Searches hidden files and directories'
    ),
    Option(
      name: '--iglob',
      description: 'Includes or excludes files and directories for searching that match given the glob',
      args: [
        Arg(
        name: 'GLOB',
        template: ['filepaths', 'folders'],
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--ignore-file',
      description: 'Specifies a path to one or more .gitignore format rules files',
      args: [
        Arg(
        name: 'Path',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--ignore-file-case-insensitive',
      description: 'Process ignores files case insensitively'
    ),
    Option(
      name: '--include-zero',
      description: 'Prints the number of matchesfor each file when used with --count or --count matches'
    ),
    Option(
      name: ['-v', '--invert-match'],
      description: 'Inverts matching'
    ),
    Option(
      name: '--json',
      description: 'Enables printing results in a JSON Lines format'
    ),
    Option(
      name: '--no-json',
      description: 'Disables the JSON Lines format'
    ),
    Option(
      name: '--line-buffered',
      description: 'Enables line buffering'
    ),
    Option(
      name: ['-n', '--line-number'],
      description: 'Shows the line numbers (1-based)'
    ),
    Option(
      name: ['-x', '--line-regexp'],
      description: 'Only shows matches surrounded by line boundaries'
    ),
    Option(
      name: ['-M', '--max-columns'],
      description: 'Don\'t print lines longer than this limit in bytes',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: '--max-columns-preview',
      description: 'Completely replaces any line that is too long with a message indicating that a matching line was removed'
    ),
    Option(
      name: ['-m', '--max-count'],
      description: 'Limits the number of matching lines per file searched to NUM',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: '--max-depth',
      description: 'Limits the depth of directory traversal to NUM levels beyond the paths given',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: '--max-filesize',
      description: 'Ignores files larger than NUM in size',
      args: [
        Arg(
          name: 'NUM'
        ),
        Arg(
          name: 'Suffix',
          isOptional: true
        )
      ]
    ),
    Option(
      name: '-mmap',
      description: 'Searches using memory maps when possible'
    ),
    Option(
      name: ['-U', '--multiline'],
      description: 'Enables matching across multiple lines'
    ),
    Option(
      name: '--multiline-dotall',
      description: 'Enables dot all in your regex pattern'
    ),
    Option(
      name: '--no-config',
      description: 'Never read configuration files'
    ),
    Option(
      name: ['-I', '--no-filename'],
      description: 'Never prints the file path with the matched lines'
    ),
    Option(
      name: '--no-heading',
      description: 'Don\'t group matches by each file'
    ),
    Option(
      name: '--no-ignore',
      description: 'Don\'t respect ignore files (.gitignore, .ignore, etc.)'
    ),
    Option(
      name: '--no-ignore-dot',
      description: 'Don\'t respect .ignore files'
    ),
    Option(
      name: '--no-ignore-excluded',
      description: 'Don\'t respect ignore files that are manually configured for the repository'
    ),
    Option(
      name: '--no-ignore-files',
      description: 'Ignores any --ignore-file flags'
    ),
    Option(
      name: '--no-ignore-global',
      description: 'Don\'t respect ignore files that come from `global` sources'
    ),
    Option(
      name: '--no-ignore-messages',
      description: 'Suppresses all error messages related to parsing ignore files'
    ),
    Option(
      name: '--no-ignore-parent',
      description: 'Don\'t repsect ignore files in parent directories'
    ),
    Option(
      name: '--no-ignore-vcs',
      description: 'Don\'t respect version control ignore files'
    ),
    Option(
      name: ['-N', '--no-line-number'],
      description: 'Suppress line numbers'
    ),
    Option(
      name: '--no-messages',
      description: 'Suppresses all error messages related to opening and reading files'
    ),
    Option(
      name: '--no-map',
      description: 'Never use memory maps, even when they might be faster'
    ),
    Option(
      name: '--no-pcre2-unicode'
    ),
    Option(
      name: '--no-require-git',
      description: 'Will only respect global gitignore rules'
    ),
    Option(
      name: '--no-unicode',
      description: 'Turn off unicode'
    ),
    Option(
      name: '--unicode',
      description: 'Disables --no-unicode flag'
    ),
    Option(
      name: ['-0', '--null'],
      description: 'Whenever a file path is printed, follow it with a NUL byte'
    ),
    Option(
      name: '--null-data',
      description: 'Uses NUL as a line terminator instead of the default line break'
    ),
    Option(
      name: '--one-file-system',
      description: 'Will not cross file system boundaries relative to where the search started from'
    ),
    Option(
      name: '--no-one-file-system',
      description: 'Disables `--one-file-system` flag'
    ),
    Option(
      name: ['-o', '--only-matching'],
      description: 'Prints only the matched (non-empty) parts of a matching line, with each such part on a separate output line'
    ),
    Option(
      name: '--passthru',
      description: 'Prints both matching and non-matching lines'
    ),
    Option(
      name: '--path-separator',
      description: 'Sets the path separator to use when printing file paths',
      args: [
        Arg(
        name: 'Separator'
      )
      ]
    ),
    Option(
      name: ['-P', '--pcre2'],
      description: 'Usess the PCRE2 regex engine instead of its default regex engine'
    ),
    Option(
      name: '--pcre2-version',
      description: 'Prints the version of PCRE2 in use'
    ),
    Option(
      name: '--pre',
      description: 'For each input File, search the standard output of the command',
      args: [
        Arg(
        name: 'Command'
      )
      ]
    ),
    Option(
      name: '--pre-glob',
      description: 'Only files that match the given set of globs will be handed to the command specified by the `--pre flag`',
      args: [
        Arg(
        name: 'GLOB',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-p', '--pretty'],
      description: 'Convenience alias for `--color always --heading --line-number`'
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Do not print anything to stdout'
    ),
    Option(
      name: '--regex-size-limit',
      description: 'Sets the upper size limit of the compiled regex',
      args: [
        Arg(
          name: 'NUM'
        ),
        Arg(
          name: 'Suffix',
          isOptional: true
        )
      ]
    ),
    Option(
      name: ['-e', '--regexp'],
      description: 'A pattern to search for',
      args: [
        Arg(
        name: 'Pattern',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-r', '--replace'],
      description: 'Replace every match with the text given when printing results',
      args: [
        Arg(
        name: 'Replacement Text'
      )
      ]
    ),
    Option(
      name: ['-z', '--search-zip'],
      description: 'Search in compressed files'
    ),
    Option(
      name: ['-S', '--smart-case'],
      description: 'Searches case insensitively if the pattern is all lowercase'
    ),
    Option(
      name: '--sort'
    ),
    Option(
      name: '--sortr',
      description: 'Enables sorting results in descending order'
    ),
    Option(
      name: '--stats',
      description: 'Prints aggregate statistics about this ripgrep search'
    ),
    Option(
      name: ['-a', '--text'],
      description: 'Searches binary files as if they were text'
    ),
    Option(
      name: ['-j', '--threads'],
      description: 'The approximate number of threads to use',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: '--trim',
      description: 'All ASCII whitespace at the beginning of each line printed will be trimmed'
    ),
    Option(
      name: ['-t', '--type'],
      description: 'Only searches files matching TYPE',
      args: [
        Arg(
        name: 'Type',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--type-add',
      description: 'Add a new glob for a particular file type',
      args: [
        Arg(
        name: 'Type Spec',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--type-clear',
      description: 'Clear the file type globs previously defined for type',
      args: [
        Arg(
        name: 'type',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--type-list',
      description: 'Shows all supported file types and their corresponding globs'
    ),
    Option(
      name: ['-T', '--type-not'],
      description: 'Do not search files matching type',
      args: [
        Arg(
        name: 'type',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-u', '--unrestricted'],
      description: 'Reduce the level of smart searching, increase by adding `u`s, ex: -uuu'
    ),
    Option(
      name: '--vimgrep',
      description: 'Shows results with every match on its own line, including line numbers and column nnumbers'
    ),
    Option(
      name: ['-H', '--with-filename'],
      description: 'Displays the file path for matches'
    ),
    Option(
      name: ['-w', '--word-regexp'],
      description: 'Only shows the matches surrounded by word boundaries'
    )
  ],
  args: [
    Arg(
      name: 'Pattern',
      description: 'A regular expression used for searching'
    ),
    Arg(
      name: 'Path',
      description: 'A file or directory to search',
      isOptional: true,
      isVariadic: true,
      template: ['filepaths', 'folders']
    )
  ]
);
