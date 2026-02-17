// AIo-generated from TypeScript source: sed.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

final FigArg labelArg = FigArg(
  name: 'label',
  isOptional: true,
);

final FigArg textArg = FigArg(
  name: 'text',
);

final FigArg filenameArg = FigArg(
  name: 'filename',
  template: 'filepaths',
);

/// Completion spec for `sed` CLI
final FigSpec sedSpec =
    FigSpec(name: 'sed', description: 'Stream editor', subcommands: [
  Subcommand(
      name: 'a', description: 'Appends `text` after a line', args: textArg),
  Subcommand(
      name: 'b',
      description: 'Branch unconditionally to `label`',
      args: labelArg),
  Subcommand(
      name: 'c',
      description: 'Replace (change) lines with `text`',
      args: textArg),
  Subcommand(
      name: 'd',
      description: 'Delete the pattern space; immediately start next cycle'),
  Subcommand(
      name: 'D',
      description:
          'If pattern space contains newlines, delete text in the pattern space up to the first newline, and restart cycle with the resultant pattern space, without reading a new line of input. If pattern space contains no newline, start a normal new cycle as if the d command was issued'),
  Subcommand(
      name: 'e',
      description:
          'Executes the command that is found in pattern space and replaces the pattern space with the output; a trailing newline is suppressed',
      args: [Arg(name: 'command', isOptional: true)]),
  Subcommand(
      name: 'F', description: 'Prints the file name of the current input file'),
  Subcommand(
      name: 'g',
      description:
          'Replaces the contents of the pattern space with the contents of the hold space'),
  Subcommand(
      name: 'G',
      description:
          'Appends a newline to the contents of the pattern space, and then appends the contents of the hold space to that of the pattern space'),
  Subcommand(
      name: 'h',
      description:
          'Replaces the contents of the hold space with the contents of the pattern space'),
  Subcommand(
      name: 'H',
      description:
          'Appends a newline to the contents of the hold space, and then appends the contents of the pattern space to that of the hold space'),
  Subcommand(
      name: 'i', description: 'Insert text before a line', args: textArg),
  Subcommand(
      name: 'l',
      description: 'Prints the pattern space in an unambiguous form'),
  Subcommand(
      name: 'n',
      description:
          'Prints the pattern space, then, regardless, replaces the pattern space with the next line of input. If there is no more input then sed exits without processing any more commands'),
  Subcommand(
      name: 'N',
      description:
          'Adds a newline to the pattern space, then appends the next line of input to the pattern space. If there is no more input then sed exits without processing any more commands'),
  Subcommand(name: 'p', description: 'Prints the pattern space'),
  Subcommand(
      name: 'P',
      description: 'Prints the pattern space up to the first newline'),
  Subcommand(
      name: 'q',
      description: 'Exit sed without processing any more commands or input',
      args: [Arg(name: 'Exit Code', isOptional: true)]),
  Subcommand(
      name: 'Q',
      description:
          'This command is the same as q, but will not print the contents of pattern space',
      args: [Arg(name: 'Exit Code', isOptional: true)]),
  Subcommand(name: 'r', description: 'Reads file', args: filenameArg),
  Subcommand(
      name: 'R',
      description:
          'Queue a line of filename to be read and inserted into the output stream at the end of the current cycle, or when the next input line is read',
      args: filenameArg),
  Subcommand(
      name: ['s', 'regexp', 'replacement'],
      description:
          'Match the regular-expression against the content of the pattern space. If found, replace matched string with replacement'),
  Subcommand(
      name: 't',
      description:
          '(test) Branch to label only if there has been a successful substitution since the last input line was read or conditional branch was taken. The label may be omitted, in which case the next cycle is started',
      args: labelArg),
  Subcommand(
      name: 'T',
      description:
          '(test) Branch to label only if there have been no successful substitutions since the last input line was read or conditional branch was taken. The label may be omitted, in which case the next cycle is started',
      args: labelArg),
  Subcommand(
      name: 'v',
      description:
          'Makes sed fail if GNU sed extensions are not supported, or if the requested version is not available',
      args: [Arg(name: 'version', isOptional: true)]),
  Subcommand(
      name: 'w',
      description: 'Writes the pattern space to the file',
      args: filenameArg),
  Subcommand(
      name: 'W',
      description:
          'Writes to the given filename the portion of the pattern space up to the first newline',
      args: filenameArg),
  Subcommand(
      name: 'x',
      description: 'Exchanges the contents of the hold and pattern spaces'),
  Subcommand(
      name: ['y', 'src', 'dst'],
      description:
          'Transliterate any characters in the pattern space which match any of the source-chars with the corresponding character in dest-chars'),
  Subcommand(
      name: 'z', description: '(zap) Empties the content of pattern space'),
  Subcommand(name: '#', description: 'Comment until the next newline')
], options: [
  Option(
      name: '-E',
      description:
          'Interprets regular expressions as extended (modern) regular expressions rather than basic regular expressions'),
  Option(
      name: '-a',
      description:
          'Causes sed to delay opening each file until a command containing the related ``w\'\' function is applied to a line of input'),
  Option(
      name: '-e',
      description:
          'Appends the editing commands specified by the command argument to the list of commands',
      args: [Arg(name: 'command')]),
  Option(
      name: '-f',
      description:
          'Appends the editing commands found in the file command_file to the list of commands. The editing commands should each be listed on a separate line',
      args: [Arg(name: 'command_file', template: 'filepaths')]),
  Option(
      name: '-I',
      description:
          'Edits files in-place, saving backups with the specified extension.  If a zero-length extension is given, no backup will be saved',
      args: [Arg(name: 'extension')]),
  Option(
      name: '-i',
      description:
          'Edits files in-place similarly to `-I`, but treats each file independently from other files.  In particular, line numbers in each file start at 1, the ``\$\'\' address matches the last line of the current file, and address ranges are limited to the current file',
      args: [Arg(name: 'extension')]),
  Option(name: '-l', description: 'Makes output line buffered'),
  Option(
      name: '-n',
      description:
          'By default, each line of input is echoed to the standard output after all of the commands have been applied to it.  The `-n` option suppresses this behavior'),
  Option(
      name: '-r', description: 'Same as `-E` for compatibility with GNU sed'),
  Option(name: '-u', description: 'Makes output unbuffered')
], args: [
  Arg(name: 'command'),
  Arg(name: 'file', template: 'filepaths', isVariadic: true, isOptional: true)
]);
