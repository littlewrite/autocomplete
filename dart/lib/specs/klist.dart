// Auto-generated from TypeScript source: klist.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `klist` CLI
final FigSpec klistSpec = FigSpec(
  name: 'klist',
  description: 'Reads and displays the current tickets in the credential cache (also known as the ticket file)',
  options: [

    Option(
      name: '-c',
      description: 'Credential cache to list',
      args: [
        Arg(
        name: 'cache'
      )
      ]
    ),
    Option(
      name: '--cache',
      description: 'Credential cache to list',
      args: [
        Arg(
        name: 'cache'
      )
      ]
    ),
    Option(
      name: ['-s', '-t', '--test'],
      description: 'Test for there being an active and valid TGT for the local realm of the user in the credential cache'
    ),
    Option(
      name: ['-T', '--tokens'],
      description: 'Display AFS tokens'
    ),
    Option(
      name: ['-5', '--v5'],
      description: 'Display v5 cred cache (this is the default)'
    ),
    Option(
      name: '-f',
      description: 'Include ticket flags in short form, each character stands for a specific flag'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Verbose output. Include all possible information'
    ),
    Option(
      name: ['-l', '--list-all'],
      description: 'List the credential caches for the current users, not all cache types supports listing multiple caches'
    ),
    Option(
      name: '--json',
      description: 'JSON formatted output'
    ),
    Option(
      name: '--hidden',
      description: 'Verbose output'
    )
  ]
);
