// Auto-generated from TypeScript source: nest.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `nest` CLI
final FigSpec nestSpec = FigSpec(
  name: 'nest',
  description: 'Nest CLI',
  subcommands: [
    Subcommand(
      name: ['new', 'n'],
      description: 'Creates a new nest project',
      args: [
        Arg(
        name: 'project',
        description: 'The name of the project'
      )
      ]
    ),
    Subcommand(
      name: ['generate', 'g'],
      description: 'Generate and/or modifies files based on a schematic',
      subcommands: [
        Subcommand(
          name: 'application',
          description: 'Generate a new application workspace',
          args: [
            Arg(
            name: 'application',
            description: 'The name of the application'
          )
          ]
        ),
        Subcommand(
          name: ['class', 'cl'],
          description: 'Generate a new class',
          args: [
            Arg(
            name: 'class',
            description: 'The name of the class'
          )
          ]
        ),
        Subcommand(
          name: ['configuration', 'config'],
          description: 'Generate a CLI configuration file',
          args: [
            Arg(
            name: 'configuration',
            description: 'The name of the configuration'
          )
          ]
        ),
        Subcommand(
          name: ['controller', 'co'],
          description: 'Generate a controller declaration',
          args: [
            Arg(
            name: 'controller',
            description: 'The name of the controller'
          )
          ]
        ),
        Subcommand(
          name: ['decorator', 'd'],
          description: 'Generate a custom decorator',
          args: [
            Arg(
            name: 'decorator',
            description: 'The name of the decorator'
          )
          ]
        ),
        Subcommand(
          name: ['filter', 'f'],
          description: 'Generate a filter declaration',
          args: [
            Arg(
            name: 'filter',
            description: 'The name of the filter'
          )
          ]
        ),
        Subcommand(
          name: ['gateway', 'ga'],
          description: 'Generate a gateway declaration',
          args: [
            Arg(
            name: 'gateway',
            description: 'The name of the gateway'
          )
          ]
        ),
        Subcommand(
          name: ['guard', 'gu'],
          description: 'Generate a guard declaration',
          args: [
            Arg(
            name: 'guard',
            description: 'The name of the guard'
          )
          ]
        ),
        Subcommand(
          name: ['interceptor', 'in'],
          description: 'Generate an interceptor declaration',
          args: [
            Arg(
            name: 'interceptor',
            description: 'The name of the interceptor'
          )
          ]
        ),
        Subcommand(
          name: 'interface',
          description: 'Generate an interface',
          args: [
            Arg(
            name: 'interface',
            description: 'The name of the interface'
          )
          ]
        ),
        Subcommand(
          name: ['middleware', 'mi'],
          description: 'Generate a middleware declaration',
          args: [
            Arg(
            name: 'middleware',
            description: 'The name of the middleware'
          )
          ]
        ),
        Subcommand(
          name: ['module', 'mo'],
          description: 'Generate a module declaration',
          args: [
            Arg(
            name: 'module',
            description: 'The name of the module'
          )
          ]
        ),
        Subcommand(
          name: ['pipe', 'p'],
          description: 'Generate a pipe declaration',
          args: [
            Arg(
            name: 'pipe',
            description: 'The name of the pipe'
          )
          ]
        ),
        Subcommand(
          name: ['provider', 'pr'],
          description: 'Generate a provider declaration',
          args: [
            Arg(
            name: 'provider',
            description: 'The name of the provider'
          )
          ]
        ),
        Subcommand(
          name: ['resolver', 'r'],
          description: 'Generate a GraphQL resolver declaration',
          args: [
            Arg(
            name: 'resolver',
            description: 'The name of the resolver'
          )
          ]
        ),
        Subcommand(
          name: ['service', 's'],
          description: 'Generate a service declaration',
          args: [
            Arg(
            name: 'service',
            description: 'The name of the service'
          )
          ]
        ),
        Subcommand(
          name: ['library', 'lib'],
          description: 'Generate a new library within a monorepo',
          args: [
            Arg(
            name: 'library',
            description: 'The name of the library'
          )
          ]
        ),
        Subcommand(
          name: ['sub-app', 'app'],
          description: 'Generate a new application within a monorepo',
          args: [
            Arg(
            name: 'sub-app',
            description: 'The name of the sub-app'
          )
          ]
        ),
        Subcommand(
          name: ['resource', 'res'],
          description: 'Generate a new CRUD resource',
          args: [
            Arg(
            name: 'resource',
            description: 'The name of the resource'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Builds Nest application',
      args: [
        Arg(
        name: 'app',
        description: 'The name of the app',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'start',
      description: 'Run Nest application',
      args: [
        Arg(
        name: 'app',
        description: 'The name of the app',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: ['info', 'i'],
      description: 'Display Nest project details'
    ),
    Subcommand(
      name: ['update', 'u'],
      description: 'Update Nest dependencies'
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for nest'
    )
  ]
);
