// Auto-generated from TypeScript source: sqlite3.ts
// Generated at: 2026-02-16
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

/// Filepath generator for database files (extensions: sql, sqlite, sqlite3, db).
/// Equivalent to: filepaths({ extensions: ["sql", "sqlite", "sqlite3", "db"] })
final dbFilepath = FigGenerator(
  template: 'filepaths',
  filterTemplateSuggestions: (figSuggestions) {
    const ext = ['sql', 'sqlite', 'sqlite3', 'db'];
    return figSuggestions.whereType<FigSuggestion>().where((s) {
      final name = s.nameSingle;
      if (name == null) return false;
      if (name.endsWith('/')) return true; // keep folders
      final fileExt = name.contains('.') ? name.split('.').last : '';
      return ext.any((e) => e == fileExt);
    }).toList();
  },
);

/// Completion spec for `sqlite3` CLI
final FigSpec sqlite3Spec = FigSpec(
    name: 'sqlite3',
    description: 'A command line interface for SQLite version 3',
    parserDirectives: ParserDirectives(flagsArePosixNoncompliant: true),
    args: [
      Arg(name: 'FILENAME', generators: dbFilepath)
    ],
    options: [
      Option(
          name: '-append',
          description: 'Append the database to the end of the file'),
      Option(name: '-ascii', description: 'Set output mode to \'ascii\''),
      Option(name: '-bail', description: 'Stop after hitting an error'),
      Option(name: '-batch', description: 'Force batch I/O'),
      Option(name: '-column', description: 'Set output mode to \'column\''),
      Option(
          name: '-cmd',
          description: 'Run "COMMAND" before reading stdin',
          args: [Arg(name: 'COMMAND')]),
      Option(name: '-csv', description: 'Set output mode to \'csv\''),
      Option(name: '-echo', description: 'Print commands before execution'),
      Option(
          name: '-init',
          description: 'Read/process named file',
          args: [Arg(name: 'FILENAME', generators: dbFilepath)]),
      Option(name: '-header', description: 'Turn headers on'),
      Option(name: '-noheader', description: 'Turn headers off'),
      Option(name: '-help', description: 'Show help message'),
      Option(name: '-html', description: 'Set output mode to HTML'),
      Option(name: '-interactive', description: 'Force interactive I/O'),
      Option(name: '-line', description: 'Set output mode to \'line\''),
      Option(name: '-list', description: 'Set output mode to \'list\''),
      Option(
          name: '-lookaside',
          description: 'Use N entries of SZ bytes for lookaside memory',
          args: [Arg(name: 'SIZE'), Arg(name: 'N')]),
      Option(
          name: '-memtrace',
          description: 'Trace all memory allocations and deallocations'),
      Option(
          name: '-mmap',
          description: 'Default mmap size set to N',
          args: [Arg(name: 'N')]),
      Option(
          name: '-newline',
          description: 'Set output row separator',
          args: [Arg(name: 'SEP', defaultValue: '\'\\n\'')]),
      Option(
          name: '-nofollow',
          description: 'Refuse to open symbolic links to database files'),
      Option(
          name: '-nullvalue',
          description: 'Set text string for NULL values',
          args: [Arg(name: 'TEXT', defaultValue: '\'\'')]),
      Option(
          name: '-pagecache',
          description: 'Use N slots of SZ bytes each for page cache memory',
          args: [Arg(name: 'SIZE'), Arg(name: 'N')]),
      Option(name: '-quote', description: 'Set output mode to \'quote\''),
      Option(name: '-readonly', description: 'Open the database read-only'),
      Option(
          name: '-separator',
          description: 'Set output column separator',
          args: [Arg(name: 'SEP', defaultValue: '\'|\'')]),
      Option(
          name: '-stats',
          description: 'Print memory stats before each finalize'),
      Option(name: '-version', description: 'Show SQLite version'),
      Option(
          name: '-vfs',
          description: 'Use NAME as the default VFS',
          args: [Arg(name: 'NAME')])
    ]);
