// Auto-generated from TypeScript source: nohup.ts
// Generated at: 2026-08-19
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `nohup` CLI
final FigSpec nohupSpec = FigSpec(
    name: 'nohup',
    description: 'Run a command immune to hangups',
    options: [
      Option(name: '--', description: 'End of options')
    ],
    args: [
      Arg(name: 'utility', isCommand: true, suggestCommands: true),
      Arg(name: 'arguments', isVariadic: true, isOptional: true)
    ]);
