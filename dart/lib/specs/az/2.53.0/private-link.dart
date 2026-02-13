// Auto-generated from TypeScript source: private-link.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `private-link` CLI
final FigSpec privateLinkSpec = FigSpec(
  name: 'private-link',
  description: 'Private-link association CLI command group',
  subcommands: [

    Subcommand(
      name: 'association',
      description: 'Private-link association management on a resource',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a PrivateLinkAssociation',
          options: [

            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the private link association',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--privatelink', '-p'],
              description: 'The name of the private link',
              args: [
                Arg(
                name: 'privatelin'
              )
              ]
            ),
            Option(
              name: ['--public-network-access', '-a'],
              description: 'Restrict traffic to private link',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'disabled'),
                  FigSuggestion(name: 'enabled')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a PrivateLinkAssociation',
          options: [

            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the private link association',
              args: [
                Arg(
                name: 'nam'
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
          description: 'Get a private link association for a management group scope',
          options: [

            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a private link association',
          options: [

            Option(
              name: ['--management-group-id', '-m'],
              description: 'The management group id',
              args: [
                Arg(
                name: 'management-group-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the private link association',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
