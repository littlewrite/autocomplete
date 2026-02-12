// Auto-generated from TypeScript source: xed.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `xed` CLI
final FigSpec xedSpec = FigSpec(
  name: 'xed',
  description: 'Xcode text editor invocation tool',
  options: [
    Option(
      name: ['--launch', '-x'],
      description: 'Launches Xcode, opening a new empty unsaved file'
    ),
    Option(
      name: ['--create', '-c'],
      description: 'Creates any non-existent files in the file list. If used without --launch, standard input will be read and piped to the last file created'
    ),
    Option(
      name: ['--wait', '-w'],
      description: 'Wait for the files to be closed before exiting. xed will idle and will only terminate when all files are closed'
    ),
    Option(
      name: ['--line', '-l'],
      description: 'Selects the given line in the last file opened',
      args: [
        Arg(
        name: 'number',
        description: 'The line number to select'
      )
      ]
    ),
    Option(
      name: ['--background', '-b'],
      description: 'Opens Xcode without activating it; the process that invoked xed remains in front'
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Show help for xed',
      exclusiveOn: ['-x', '-c', '-w', '-l', '-b', '-v']
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Prints the version number of xed'
    )
  ],
  args: [
    Arg(
    name: 'file',
    description: 'A list of file paths. If no files are passed, then standard input will \\\n      be read and piped into a new untitled document',
    isVariadic: true,
    isOptional: true,
    template: 'filepaths'
  )
  ]
);
