// Auto-generated from TypeScript source: visudo.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `visudo` CLI
final FigSpec visudoSpec = FigSpec(
  name: 'visudo',
  description: 'Visudo edits the sudoers file, which defines the users and groups with administrator rights',
  options: [

    Option(
      name: ['--check', '-c'],
      description: 'Checking existing sudoers file for syntax errors'
    ),
    Option(
      name: ['--file', '-f'],
      description: 'Set an alternative sudoers file location',
      args: [
        Arg(
        name: 'New sudoers location',
        description: 'Specify the alternate sudoers file location',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Display a short help message'
    ),
    Option(
      name: ['--quiet', '-q'],
      description: 'Enable quiet mode (syntax error not printed)'
    ),
    Option(
      name: ['--strict', '-s'],
      description: 'Enable strict checking of the sudoers file'
    ),
    Option(
      name: ['--version', '-V'],
      description: 'Display version and exit'
    ),
    Option(
      name: ['--export', '-x'],
      description: 'Export JSON and write it to output_file',
      args: [
        Arg(
        name: 'Output file name',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['--perms', '-P'],
      description: 'Enforce default mode for the sudoers file'
    ),
    Option(
      name: ['--owner', '-O'],
      description: 'Enforce the default ownership for the sudoers file'
    )
  ]
);
