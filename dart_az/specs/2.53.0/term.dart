// Auto-generated from TypeScript source: term.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `term` CLI
final FigSpec termSpec = FigSpec(
  name: 'term',
  description: 'Manage marketplace agreement with marketplaceordering',
  subcommands: [

    Subcommand(
      name: 'accept',
      description: 'Accept marketplace terms',
      options: [

        Option(
          name: '--plan',
          description: 'Plan identifier string of image being deployed',
          args: [
            Arg(
            name: 'pla'
          )
          ]
        ),
        Option(
          name: '--product',
          description: 'Offer identifier string of image being deployed',
          args: [
            Arg(
            name: 'produc'
          )
          ]
        ),
        Option(
          name: '--publisher',
          description: 'Publisher identifier string of image being deployed',
          args: [
            Arg(
            name: 'publishe'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get marketplace terms',
      options: [

        Option(
          name: '--plan',
          description: 'Plan identifier string of image being deployed',
          args: [
            Arg(
            name: 'pla'
          )
          ]
        ),
        Option(
          name: '--product',
          description: 'Offeridentifier string of image being deployed',
          args: [
            Arg(
            name: 'produc'
          )
          ]
        ),
        Option(
          name: '--publisher',
          description: 'Publisher identifier string of image being deployed',
          args: [
            Arg(
            name: 'publishe'
          )
          ]
        )
      ]
    )
  ]
);
