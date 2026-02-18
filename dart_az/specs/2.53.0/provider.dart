// Auto-generated from TypeScript source: provider.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `provider` CLI
final FigSpec providerSpec = FigSpec(
  name: 'provider',
  description: 'Manage resource providers',
  subcommands: [

    Subcommand(
      name: 'list',
      description: 'Gets all resource providers for a subscription',
      options: [

        Option(
          name: '--expand',
          description: 'The properties to include in the results. For example, use &\$expand=metadata in the query string to retrieve resource provider metadata. To include property aliases in response, use \$expand=resourceTypes/aliases. Default value is None',
          args: [
            Arg(
            name: 'expan'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'register',
      description: 'Register a provider',
      options: [

        Option(
          name: ['--namespace', '-n'],
          description: 'The resource namespace, aka \'provider\'',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--consent-to-permissions', '-c'],
          description: 'A value indicating whether authorization is consented or not'
        ),
        Option(
          name: ['--management-group-id', '-m'],
          description: 'The management group id to register',
          args: [
            Arg(
            name: 'management-group-i'
          )
          ]
        ),
        Option(
          name: '--wait',
          description: 'Wait for the registration to finish'
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Gets the specified resource provider',
      options: [

        Option(
          name: ['--namespace', '-n'],
          description: 'The resource namespace, aka \'provider\'',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: '--expand',
          description: 'The \$expand query parameter. For example, to include property aliases in response, use \$expand=resourceTypes/aliases. Default value is None',
          args: [
            Arg(
            name: 'expan'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'unregister',
      description: 'Unregister a provider',
      options: [

        Option(
          name: ['--namespace', '-n'],
          description: 'The resource namespace, aka \'provider\'',
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: '--wait',
          description: 'Wait for unregistration to finish'
        )
      ]
    ),
    Subcommand(
      name: 'operation',
      description: 'Get provider operations metadatas',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get operations from all providers'
        ),
        Subcommand(
          name: 'show',
          description: 'Get an individual provider\'s operations',
          options: [

            Option(
              name: ['--namespace', '-n'],
              description: 'The resource namespace, aka \'provider\'',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'permission',
      description: 'Manage permissions for a provider',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List permissions from a provider',
          options: [

            Option(
              name: ['--namespace', '-n'],
              description: 'The resource namespace, aka \'provider\'',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
