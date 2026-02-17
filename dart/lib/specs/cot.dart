// Auto-generated from TypeScript source: cot.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cot` CLI
final FigSpec cotSpec = FigSpec(
  name: 'cot',
  icon: 'https://coteditor.com/favicon@2x.png',
  description: 'Command-line utility for CotEditor',
  args: [
    Arg(
    template: 'filepaths'
  )
  ],
  options: [

    Option(
      description: 'Show help message and exit',
      name: ['-h', '--help']
    ),
    Option(
      description: 'Show program\'s version number and exit',
      name: ['-v', '--version']
    ),
    Option(
      description: 'Wait for opened file to be closed',
      name: ['-w', '--wait']
    ),
    Option(
      description: 'Do not bring the application to the foreground',
      name: ['-g', '--background']
    ),
    Option(
      description: 'Create a new blank document',
      name: ['-n', '--new']
    ),
    Option(
      description: 'Jump to specific line in opened document',
      name: ['-l', '--line'],
      args: [
        Arg(
        name: 'line'
      )
      ]
    ),
    Option(
      description: 'Jump to specific column in opened document',
      name: ['-c', '--column'],
      args: [
        Arg(
        name: 'column'
      )
      ]
    )
  ]
);
