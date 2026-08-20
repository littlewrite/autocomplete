// Auto-generated from TypeScript source: watch.ts
// Generated at: 2026-08-19
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `watch` CLI
final FigSpec watchSpec = FigSpec(
    name: 'watch',
    description: 'Execute a program periodically and show its output',
    options: [
      Option(
          name: ['-b', '--beep'],
          description: 'Beep if the command exits non-zero'),
      Option(
          name: ['-c', '--color'],
          description: 'Interpret ANSI color and style sequences'),
      Option(
          name: ['-d', '--differences'],
          description: 'Highlight changes between updates',
          args: [Arg(name: 'permanent', isOptional: true)]),
      Option(
          name: ['-e', '--errexit'],
          description: 'Exit if the command has an error'),
      Option(
          name: ['-g', '--chgexit'],
          description: 'Exit when the output changes'),
      Option(
          name: ['-n', '--interval'],
          description: 'Seconds to wait between updates',
          args: [Arg(name: 'seconds')]),
      Option(
          name: ['-p', '--precise'],
          description: 'Attempt precise periodic timing'),
      Option(name: ['-t', '--no-title'], description: 'Turn off the header'),
      Option(name: ['-w', '--no-wrap'], description: 'Turn off line wrapping'),
      Option(
          name: ['-x', '--exec'],
          description: 'Pass the command to exec instead of sh -c')
    ],
    args: [
      Arg(name: 'command', isCommand: true, isVariadic: true)
    ]);
