// Auto-generated from TypeScript source: gron.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `gron` CLI
final FigSpec gronSpec = FigSpec(
  name: 'gron',
  description: 'Gron is a tool to make it easier to understand big blobs of JSON',
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for gron'
    ),
    Option(
      name: ['-u', '--ungron'],
      description: 'Reverse the operation (turn assignments back into JSON)'
    ),
    Option(
      name: ['-v', '--values'],
      description: 'Print just the values of provided assignments'
    ),
    Option(
      name: ['-c', '--colorize'],
      description: 'Colorize output (default on tty)'
    ),
    Option(
      name: ['-m', '--monochrome'],
      description: 'Monochrome (don\'t colorize output)'
    ),
    Option(
      name: ['-s', '--stream'],
      description: 'Treat each line of input as a separate JSON object'
    ),
    Option(
      name: ['-k', '--insecure'],
      description: 'Disable certificate validation'
    ),
    Option(
      name: ['-j', '--json'],
      description: 'Represent gron data as JSON stream'
    ),
    Option(
      name: '--no-sort',
      description: 'Don\'t sort output (faster)'
    ),
    Option(
      name: '--version',
      description: 'Print version information'
    )
  ]
);
