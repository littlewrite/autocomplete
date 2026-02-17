// Auto-generated from TypeScript source: managementpartner.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `managementpartner` CLI
final FigSpec managementpartnerSpec = FigSpec(
  name: 'managementpartner',
  description: 'Allows the partners to associate a Microsoft Partner Network(MPN) ID to a user or service principal in the customer\'s Azure directory',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Associates a Microsoft Partner Network(MPN) ID to the current authenticated user or service principal',
      options: [

        Option(
          name: '--partner-id',
          description: 'Microsoft partner network ID',
          args: [
            Arg(
            name: 'partner-i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete the Microsoft Partner Network(MPN) ID of the current authenticated user or service principal',
      options: [

        Option(
          name: '--partner-id',
          description: 'Microsoft partner network ID',
          args: [
            Arg(
            name: 'partner-i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Gets the Microsoft Partner Network(MPN) ID of the current authenticated user or service principal',
      options: [

        Option(
          name: '--partner-id',
          description: 'Microsoft partner network ID',
          args: [
            Arg(
            name: 'partner-i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Updates the Microsoft Partner Network(MPN) ID of the current authenticated user or service principal',
      options: [

        Option(
          name: '--partner-id',
          description: 'Microsoft partner network ID',
          args: [
            Arg(
            name: 'partner-i'
          )
          ]
        )
      ]
    )
  ]
);
