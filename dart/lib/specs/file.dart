// Auto-generated from TypeScript source: file.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `file` CLI
final FigSpec fileSpec = FigSpec(
  name: 'file',
  description: 'Determine file type',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  options: [
    Option(
      name: '--help'
    ),
    Option(
      name: '--apple'
    ),
    Option(
      name: ['--brief', '-b']
    ),
    Option(
      name: ['--checking-printoug', '-c']
    ),
    Option(
      name: ['--compile', '-C']
    ),
    Option(
      name: '-d'
    ),
    Option(
      name: '-D'
    ),
    Option(
      name: '-E'
    ),
    Option(
      name: ['--exclude', '-e'],
      args: [
        Arg(
        name: 'testname',
        suggestions: [
          FigSuggestion(name: 'apptype'),
          FigSuggestion(name: 'ascii'),
          FigSuggestion(name: 'encoding'),
          FigSuggestion(name: 'token'),
          FigSuggestion(name: 'cdf'),
          FigSuggestion(name: 'compress'),
          FigSuggestion(name: 'csv'),
          FigSuggestion(name: 'elf'),
          FigSuggestion(name: 'json'),
          FigSuggestion(name: 'soft'),
          FigSuggestion(name: 'tar')
        ]
      )
      ]
    ),
    Option(
      name: '--exclude-quiet'
    ),
    Option(
      name: '--extension'
    ),
    Option(
      name: ['--separator', '-F'],
      args: [
        Arg(
        name: 'separator',
        suggestions: [
          FigSuggestion(name: '.')
        ],
        defaultValue: '.'
      )
      ]
    ),
    Option(
      name: ['--files-from', '-f'],
      args: [
        Arg(
        name: 'namefile'
      )
      ]
    ),
    Option(
      name: ['--no-dereference', '-h']
    ),
    Option(
      name: '-i'
    ),
    Option(
      name: ['--mime', '-I']
    ),
    Option(
      name: ['--mime-type', '--mime-encoding']
    ),
    Option(
      name: ['--keep-going', '-k']
    ),
    Option(
      name: ['--list', '-l']
    ),
    Option(
      name: ['--dereference', '-L']
    ),
    Option(
      name: ['--magic-file', '-m'],
      args: [
        Arg(
        name: 'list',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-M',
      args: [
        Arg(
        name: 'list',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['--no-buffer', '-n']
    ),
    Option(
      name: ['--preserve-data', '-p']
    ),
    Option(
      name: ['--parameter', '-P'],
      isRepeatable: true,
      args: [
        Arg(
        name: 'name=value'
      )
      ]
    ),
    Option(
      name: ['--raw', '-r']
    ),
    Option(
      name: ['--special-files', 's']
    ),
    Option(
      name: ['--version', '-v']
    ),
    Option(
      name: ['--uncompress', '-z']
    ),
    Option(
      name: ['--uncompress-noreport', '-Z']
    ),
    Option(
      name: ['--print0', '-0']
    )
  ],
  args: [
    Arg(
    name: 'file',
    description: 'File name(s)',
    template: 'filepaths',
    isOptional: true,
    isVariadic: true
  )
  ]
);
