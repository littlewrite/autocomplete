// Auto-generated from TypeScript source: nest.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> options = [

  Option(
    name: ['-d', '--dry-run'],
    description: 'Report actions that would be taken without writing out results'
  ),
  Option(
    name: ['-p', '--project'],
    description: 'Project in which to generate files',
    args: [
      Arg(
      name: 'project',
      description: 'Project in which to generate files'
    )
    ]
  ),
  Option(
    name: '--flat',
    description: 'Enforce flat structure of generated element'
  ),
  Option(
    name: '--spec',
    description: 'Enforce spec files generation (default: true)',
    exclusiveOn: ['--no-spec']
  ),
  Option(
    name: '--no-spec',
    description: 'Disable spec files generation',
    exclusiveOn: ['--spec']
  ),
  Option(
    name: ['-c', '--collection'],
    description: 'Schematics collection to use',
    args: [
      Arg(
      name: 'collection',
      description: 'The collection name'
    )
    ]
  )
];

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
          ],
          options: options
        ),
        Subcommand(
          name: ['class', 'cl'],
          description: 'Generate a new class',
          args: [
            Arg(
            name: 'class',
            description: 'The name of the class'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['configuration', 'config'],
          description: 'Generate a CLI configuration file',
          args: [
            Arg(
            name: 'configuration',
            description: 'The name of the configuration'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['controller', 'co'],
          description: 'Generate a controller declaration',
          args: [
            Arg(
            name: 'controller',
            description: 'The name of the controller'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['decorator', 'd'],
          description: 'Generate a custom decorator',
          args: [
            Arg(
            name: 'decorator',
            description: 'The name of the decorator'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['filter', 'f'],
          description: 'Generate a filter declaration',
          args: [
            Arg(
            name: 'filter',
            description: 'The name of the filter'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['gateway', 'ga'],
          description: 'Generate a gateway declaration',
          args: [
            Arg(
            name: 'gateway',
            description: 'The name of the gateway'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['guard', 'gu'],
          description: 'Generate a guard declaration',
          args: [
            Arg(
            name: 'guard',
            description: 'The name of the guard'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['interceptor', 'in'],
          description: 'Generate an interceptor declaration',
          args: [
            Arg(
            name: 'interceptor',
            description: 'The name of the interceptor'
          )
          ],
          options: options
        ),
        Subcommand(
          name: 'interface',
          description: 'Generate an interface',
          args: [
            Arg(
            name: 'interface',
            description: 'The name of the interface'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['middleware', 'mi'],
          description: 'Generate a middleware declaration',
          args: [
            Arg(
            name: 'middleware',
            description: 'The name of the middleware'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['module', 'mo'],
          description: 'Generate a module declaration',
          args: [
            Arg(
            name: 'module',
            description: 'The name of the module'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['pipe', 'p'],
          description: 'Generate a pipe declaration',
          args: [
            Arg(
            name: 'pipe',
            description: 'The name of the pipe'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['provider', 'pr'],
          description: 'Generate a provider declaration',
          args: [
            Arg(
            name: 'provider',
            description: 'The name of the provider'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['resolver', 'r'],
          description: 'Generate a GraphQL resolver declaration',
          args: [
            Arg(
            name: 'resolver',
            description: 'The name of the resolver'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['service', 's'],
          description: 'Generate a service declaration',
          args: [
            Arg(
            name: 'service',
            description: 'The name of the service'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['library', 'lib'],
          description: 'Generate a new library within a monorepo',
          args: [
            Arg(
            name: 'library',
            description: 'The name of the library'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['sub-app', 'app'],
          description: 'Generate a new application within a monorepo',
          args: [
            Arg(
            name: 'sub-app',
            description: 'The name of the sub-app'
          )
          ],
          options: options
        ),
        Subcommand(
          name: ['resource', 'res'],
          description: 'Generate a new CRUD resource',
          args: [
            Arg(
            name: 'resource',
            description: 'The name of the resource'
          )
          ],
          options: options
        )
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Builds Nest application',
      options: options,
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
      options: options,
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
      description: 'Update Nest dependencies',
      options: options
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for nest'
    )
  ]
);
