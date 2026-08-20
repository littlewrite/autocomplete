// Auto-generated from TypeScript source: doas.ts
// Generated at: 2026-08-19
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `doas` CLI
final FigSpec doasSpec = FigSpec(
    name: 'doas',
    description: 'Execute a command as another user',
    options: [
      Option(
          name: '-a',
          description: 'Use the specified authentication style',
          args: [Arg(name: 'auth_style')]),
      Option(name: '-C', description: 'Check the configuration file and exit'),
      Option(name: '-L', description: 'Clear the persisted authentication'),
      Option(
          name: '-n',
          description: 'Non-interactive mode; fail instead of prompting'),
      Option(
          name: '-s',
          description: 'Execute the shell specified by the target user'),
      Option(
          name: '-u',
          description: 'Run the command as the specified user',
          args: [Arg(name: 'user')]),
      Option(name: '--', description: 'End of options')
    ],
    args: [
      Arg(
          name: 'command',
          isCommand: true,
          suggestCommands: true,
          isVariadic: true)
    ]);
