// Auto-generated from TypeScript source: clojure.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `clojure` CLI
final FigSpec clojureSpec = FigSpec(
    name: 'clojure',
    description:
        'Use the Clojure tools to run Clojure programs on the JVM, start a REPL, or invoke a specific function with data',
    parserDirectives: ParserDirectives(flagsArePosixNoncompliant: true),
    options: [
      Option(
          name: '-P',
          description:
              'Prepare deps - download libs, cache classpath, but don\'t exec'),
      Option(
          name: '-J',
          description: 'Pass opt through in java_opts',
          insertValue: '-J{cursor}'),
      Option(
          name: '-Sdeps',
          description: 'Pass the deps data on the command line',
          args: [Arg(name: 'edn', description: 'The deps data in edn')]),
      Option(
          name: '-Spath',
          description: 'Compute classpath and echo to stdout only'),
      Option(
          name: '-Scp',
          description:
              'Use specified classpath instead of cached or computed one',
          args: [Arg(name: 'cp', description: 'The classpath to use')]),
      Option(
          name: '-Sdescribe',
          description:
              'Print environment and command parsing information as data'),
      Option(
          name: '-Sforce',
          description: 'Ignore classpath cache and force recomputation'),
      Option(
          name: '-Spom',
          description: 'Generate (or update) pom.xml with deps and paths'),
      Option(
          name: '-Srepro',
          description: 'Ignore the ~/.clojure/deps.edn config file'),
      Option(
          name: '-Sthreads',
          description:
              'Set the number of threads to use when downloading dependencies'),
      Option(
          name: '-Strace',
          description: 'Write a trace.edn file that traces deps expansion'),
      Option(name: '-Stree', description: 'Print dependency tree'),
      Option(name: '-Sverbose', description: 'Print all path locations'),
      Option(
          name: ['-version', '--version'],
          description: 'Print the Clojure CLI version'),
      Option(
          name: ['-i', '--init'],
          description: 'Load a file or resource',
          args: [Arg(name: 'path')]),
      Option(
          name: ['-e', '--eval'],
          description: 'Evaluate expressions in string; print non-nil values',
          args: [Arg(name: 'string')]),
      Option(
          name: '--report',
          description: 'Report uncaught exceptions',
          args: [
            Arg(name: 'target', description: 'Where to report', suggestions: [
              FigSuggestion(name: 'file'),
              FigSuggestion(name: 'stderr'),
              FigSuggestion(name: 'none')
            ])
          ]),
      Option(
          name: ['-m', '--main'],
          description: 'Call the -main function from a namespace with args',
          args: [
            Arg(
                name: 'ns-name',
                description: 'The namespace of the -main function'),
            Arg(
                name: 'args',
                description: 'The arguments to pass to the -main function',
                isVariadic: true)
          ]),
      Option(name: ['-r', '--repl'], description: 'Run a REPL'),
      Option(name: ['-h', '-?', '--help'], description: 'Show help for clojure')
    ]);
