// Auto-generated from TypeScript source: adr.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `adr` CLI
final FigSpec adrSpec = FigSpec(
  name: 'adr',
  description: 'Manage Architectural Design Records',
  subcommands: [

    Subcommand(
      name: 'init',
      description: 'Create an ADR directory in the root of your project, example usage: \' adr init doc/architecture/decisions\'',
      args: [
        Arg(
        name: 'Location where to create the ADR, example \'adr init doc/architecture/decisions\''
      )
      ]
    ),
    Subcommand(
      name: 'new',
      description: 'Create a new, numbered ADR file',
      options: [

        Option(
          name: '-s',
          description: 'Create a new ADR that supercedes a previous one (ADR 9, for example), use the -s option',
          args: [
            Arg(
            name: 'number',
            description: 'Which ADR to supercede'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'ADR name',
        description: 'Name for the ADR separated with \'-\''
      )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Built in help'
    )
  ]
);
