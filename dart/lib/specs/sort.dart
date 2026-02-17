// Auto-generated from TypeScript source: sort.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sort` CLI
final FigSpec sortSpec = FigSpec(
  name: 'sort',
  description: 'Sort or merge records (lines) of text and binary files',
  args: [
    Arg(
    name: 'file',
    isVariadic: true,
    template: 'filepaths'
  )
  ],
  options: [

    Option(
      name: '--help',
      description: 'Shows help message'
    ),
    Option(
      name: '--version',
      description: 'Displays the current version of sort'
    ),
    Option(
      name: ['-c', '--check', '-C'],
      args: [
        Arg(
        name: 'output',
        isOptional: true,
        suggestions: [

          FigSuggestion(name: 'silent'),
          FigSuggestion(name: 'quiet')
        ],
        description: 'Suppress errors on false check'
      )
      ],
      description: 'Check that the single input file is sorted'
    ),
    Option(
      name: ['-m', '--merge'],
      description: 'Merge only.  The input files are assumed to be pre-sorted.  If they are not sorted the output order is undefined'
    ),
    Option(
      name: ['-o', '--output'],
      description: 'Print the output to the output file instead of the standard output',
      args: [
        Arg(
        name: 'output'
      )
      ]
    ),
    Option(
      name: ['-S', '--buffer-size'],
      description: 'Use size for the maximum size of the memory buffer',
      args: [
        Arg(
        name: 'size'
      )
      ]
    ),
    Option(
      name: ['-T', '--temporary-directory'],
      description: 'Store temporary files in the directory dir',
      args: [
        Arg(
        name: 'dir',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: ['-u', '--unique'],
      description: 'Unique keys. Suppress all lines that have a key that is equal to an already processed one'
    ),
    Option(
      name: '-s',
      description: 'Stable sort. This option maintains the original record order of records that have an equal key'
    ),
    Option(
      name: ['-b', '--ignore-leading-blanks'],
      description: 'Ignore leading blank characters when comparing lines'
    ),
    Option(
      name: ['-d', '--dictionary-order'],
      description: 'Consider only blank spaces and alphanumeric characters in comparisons'
    ),
    Option(
      name: ['-f', '--ignore-case'],
      description: 'Convert all lowercase characters to their upper case equivalent before comparison'
    ),
    Option(
      name: ['-g', '--general-numeric-sort'],
      description: 'Sort by general numerical value'
    ),
    Option(
      name: ['-h', '--human-numeric-sort'],
      description: 'Sort by numerical value, but take into account the SI suffix, if present'
    ),
    Option(
      name: ['-i', '--ignore-nonprinting'],
      description: 'Ignore all non-printable characters'
    ),
    Option(
      name: ['-M', '--month-sort'],
      description: 'Sort by month abbreviations.  Unknown strings are considered smaller than the month names'
    ),
    Option(
      name: ['-n', '--numeric-sort'],
      description: 'Sort fields numerically by arithmetic value'
    ),
    Option(
      name: ['-R', '--random-sort'],
      description: 'Sort by a random order'
    ),
    Option(
      name: ['-r', '--reverse'],
      description: 'Sort in reverse order'
    ),
    Option(
      name: ['-V', '--version-sort'],
      description: 'Sort version numbers'
    ),
    Option(
      name: ['-k', '--key'],
      args: [

        Arg(
          name: 'field1'
        ),
        Arg(
          name: 'field2',
          isOptional: true
        )
      ],
      description: 'Define a restricted sort key that has the starting position field1, and optional ending position field2'
    ),
    Option(
      name: ['-t', '--field-separator'],
      args: [
        Arg(
        name: 'char'
      )
      ],
      description: 'Use char as a field separator character'
    ),
    Option(
      name: ['-z', '--zero-terminated'],
      description: 'Use NUL as record separator'
    ),
    Option(
      name: '--batch-size',
      args: [
        Arg(
        name: 'num'
      )
      ],
      description: 'Specify maximum number of files that can be opened by sort at once'
    ),
    Option(
      name: '--compress-program',
      args: [
        Arg(
        name: 'PROGRAM',
        template: 'filepaths'
      )
      ],
      description: 'Use PROGRAM to compress temporary files (eg. bzip2)'
    ),
    Option(
      name: '--random-source',
      args: [
        Arg(
        name: 'filename',
        template: 'filepaths'
      )
      ],
      description: 'In random sort, the file content is used as the source of the \'seed\' data for the hash function choice'
    ),
    Option(
      name: '--debug',
      description: 'Print some extra information about the sorting process to the standard output'
    ),
    Option(
      name: '--parallel',
      description: 'Set the maximum number of execution threads.  Default number equals to the number of CPUs'
    ),
    Option(
      name: '--files0-from',
      args: [
        Arg(
        name: 'filename',
        template: 'filepaths'
      )
      ],
      description: 'Take the input file list from the file filename'
    ),
    Option(
      name: '--radixsort',
      description: 'Try to use radix sort, if the sort specifications allow'
    ),
    Option(
      name: '--mergesort',
      description: 'Use mergesort.  This is a universal algorithm that can always be used, but it is not always the fastest'
    ),
    Option(
      name: '--qsort',
      description: 'Try to use quick sort, if the sort specifications allow.  This sort algorithm cannot be used with -u and -s'
    ),
    Option(
      name: '--heapsort',
      description: 'Try to use heap sort, if the sort specifications allow.  This sort algorithm cannot be used with -u and -s'
    ),
    Option(
      name: '--mmap',
      description: 'Try to use file memory mapping system call.  It may increase speed in some cases'
    ),
    Option(
      name: '--sort',
      args: [
        Arg(
        name: 'type',
        suggestions: [

          FigSuggestion(name: 'general-numeric'),
          FigSuggestion(name: 'human-numeric'),
          FigSuggestion(name: 'month'),
          FigSuggestion(name: 'numeric'),
          FigSuggestion(name: 'random')
        ]
      )
      ],
      description: 'Select how to sort values'
    )
  ]
);
