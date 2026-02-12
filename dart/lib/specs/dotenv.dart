// Auto-generated from TypeScript source: dotenv.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dotenv` CLI
final FigSpec dotenvSpec = FigSpec(
  name: 'dotenv',
  description: 'Loads environment variables from .env',
  args: [
    Arg(
  )
  ],
  options: [
    Option(
      name: '-f',
      exclusiveOn: ['-h', '-v', '-t'],
      description: 'List of env files to parse',
      args: [
        Arg(
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      exclusiveOn: ['-f', '-v', '-t'],
      description: 'Display help'
    ),
    Option(
      name: ['-v', '--version'],
      exclusiveOn: ['-f', '-h', '-t'],
      description: 'Show version'
    ),
    Option(
      name: ['-t', '--template'],
      exclusiveOn: ['-f', '-h', '-v'],
      description: 'Create a template env file',
      args: [
        Arg(
        template: 'filepaths'
      )
      ]
    )
  ]
);
