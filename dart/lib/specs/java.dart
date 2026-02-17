// Auto-generated from TypeScript source: java.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `java` CLI
final FigSpec javaSpec = FigSpec(
  name: 'java',
  description: 'Launch a Java application',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  ),
  args: [
    Arg(
    name: 'mainclass',
    description: 'To launch a class file'
  )
  ],
  options: [

    Option(
      name: '-jar',
      priority: 99,
      description: 'To launch the main class in a JAR file',
      args: [
        Arg(
        name: 'JAR file'
      )
      ]
    ),
    Option(
      name: '-D',
      priority: 98,
      description: 'Set a system property, -D<NAME>=<VALUE>'
    ),
    Option(
      name: ['--help', '-h', '-?'],
      description: 'Show help for java'
    ),
    Option(
      name: ['--version', '-version'],
      description: 'Print product version to the error stream and exit'
    ),
    Option(
      name: ['-showversion', '--show-version'],
      description: 'Print product version to the output stream and continue'
    ),
    Option(
      name: '--dry-run',
      description: 'Create VM and load main class but do not execute main method'
    ),
    Option(
      name: ['--classpath', '-cp'],
      description: 'Class search path of directories and zip/jar files',
      args: [
        Arg(
        name: 'search files',
        template: 'filepaths'
      )
      ]
    )
  ]
);
