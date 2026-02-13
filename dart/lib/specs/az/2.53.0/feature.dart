// Auto-generated from TypeScript source: feature.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `feature` CLI
final FigSpec featureSpec = FigSpec(
  name: 'feature',
  description: 'Manage resource provider features',
  subcommands: [

    Subcommand(
      name: 'list',
      description: 'List preview features',
      options: [

        Option(
          name: '--namespace',
          description: 'The resource namespace, aka \'provider\'',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'register',
      description: 'Register a preview feature',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The feature name',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'The resource namespace, aka \'provider\'',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Gets the preview feature with the specified name',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The feature name',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'The resource namespace, aka \'provider\'',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'unregister',
      description: 'Unregister a preview feature',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The feature name',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--namespace',
          description: 'The resource namespace, aka \'provider\'',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'registration',
      description: 'Manage resource provider feature registrations',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a feature registration',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The feature name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'The resource namespace, aka \'provider\'',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a feature registration',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The feature name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'The resource namespace, aka \'provider\'',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List feature registrations',
          options: [

            Option(
              name: '--namespace',
              description: 'The resource namespace, aka \'provider\'',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Returns a feature registration',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The feature name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--provider-namespace',
              description: 'The provider namespace. Required',
              args: [
                Arg(
                name: 'provider-namespac'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
