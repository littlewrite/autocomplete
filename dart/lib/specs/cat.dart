// Auto-generated from TypeScript source: cat.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cat` CLI
final FigSpec catSpec = FigSpec(
  name: 'cat',
  description: 'Concatenate and print files',
  args: [
    Arg(
    isVariadic: true,
    template: 'filepaths'
  )
  ],
  options: [
    Option(
      name: '-b',
      description: 'Number the non-blank output lines, starting at 1'
    ),
    Option(
      name: '-e',
      description: 'Display non-printing characters (see the -v option), and display a dollar sign (‘\$’) at the end of each line'
    ),
    Option(
      name: '-l',
      description: 'Set an exclusive advisory lock on the standard output file descriptor.  This lock is set using fcntl(2) with the F_SETLKW command. If the output file is already locked, cat will block until the lock is acquired'
    ),
    Option(
      name: '-n',
      description: 'Number the output lines, starting at 1'
    ),
    Option(
      name: '-s',
      description: 'Squeeze multiple adjacent empty lines, causing the output to be single spaced'
    ),
    Option(
      name: '-t',
      description: 'Display non-printing characters (see the -v option), and display tab characters as ‘^I’'
    ),
    Option(
      name: '-u',
      description: 'Disable output buffering'
    ),
    Option(
      name: '-v',
      description: 'Display non-printing characters so they are visible.  Control characters print as ‘^X’ for control-X; the delete character (octal 0177) prints as ‘^?’.  Non-ASCII characters (with the high bit set) are printed as ‘M-’ (for meta) followed by the character for the low 7 bits'
    )
  ]
);
