// Auto-generated from TypeScript source: blitz.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `blitz` CLI
final FigSpec blitzSpec = FigSpec(
    name: 'blitz',
    description:
        'Blitz.js CLI is your single access point for interacting with your app, from database management to code generation',
    subcommands: [
      Subcommand(
          name: ['build', 'b'], description: 'Creates a production build'),
      Subcommand(
          name: ['codegen', 'cg'], description: 'Generates Routes Manifest'),
      Subcommand(
          name: ['console', 'c'], description: 'Run the Blitz console REPL'),
      Subcommand(name: 'db', description: 'Run database commands', args: [
        Arg(
            name: 'command',
            description: 'Run specific db command',
            suggestions: [
              FigSuggestion(
                  name: 'seed',
                  description:
                      'Generates seeded data in database via Prisma 2. You need db/seeds.ts or db/seeds/index.ts')
            ])
      ]),
      Subcommand(
          name: ['dev', 'd'],
          description: 'Start a development server',
          options: [
            Option(
                name: ['-p', '--port'],
                description: 'Set port number',
                args: [Arg(name: 'port')]),
            Option(
                name: ['-H', '--hostname'],
                description: 'Set server hostname',
                args: [Arg(name: 'hostname')]),
            Option(
                name: '--inspect', description: 'Enable the Node.js inspector'),
            Option(
                name: '--no-incremental-build',
                description:
                    'Disable incremental build and start from a fresh cache')
          ]),
      Subcommand(
          name: ['export', 'e'],
          description: 'Exports a static page',
          options: [
            Option(
                name: ['-o', '--outdir'],
                description: 'Set the output dir (defaults to \'out\')',
                args: [Arg(name: 'outdir')])
          ]),
      Subcommand(
          name: ['generate', 'g'],
          description: 'Generate new files for your Blitz project',
          options: [
            Option(
                name: ['-c', '--context'],
                description:
                    'Provide a context folder within which we\'ll place the generated files for better code organization. You can also supply this in the name of the model to be generated (e.g. `blitz generate query admin/projects`). Combining the `--context` flags and supplying context via the model name in the same command is not supported',
                args: [Arg(name: 'context')]),
            Option(
                name: ['-p', '--parent'],
                description:
                    'Specify a parent model to be used for generating nested routes for dependent data when generating pages, or to create hierarchical validation in queries and mutations. The code will be generated with the nested data model in mind. Most often this should be used in conjunction with \'blitz generate all\'',
                args: [Arg(name: 'parent')]),
            Option(
                name: ['-d', '--dry-run'],
                description:
                    'Show what files will be created without writing them to disk')
          ],
          args: [
            Arg(
                name: 'type',
                description: 'What files to generate',
                suggestions: [
                  FigSuggestion(name: 'all', insertValue: 'all', priority: 100),
                  FigSuggestion(
                      name: 'crud', insertValue: 'curd', priority: 100),
                  FigSuggestion(
                      name: 'model', insertValue: 'model', priority: 100),
                  FigSuggestion(
                      name: 'pages', insertValue: 'pages', priority: 100),
                  FigSuggestion(
                      name: 'queries', insertValue: 'queries', priority: 100),
                  FigSuggestion(
                      name: 'query', insertValue: 'query', priority: 100),
                  FigSuggestion(
                      name: 'mutations',
                      insertValue: 'mutations',
                      priority: 100),
                  FigSuggestion(
                      name: 'mutation', insertValue: 'mutation', priority: 100),
                  FigSuggestion(
                      name: 'resource', insertValue: 'resource', priority: 100),
                ]),
            Arg(
                name: 'model',
                description:
                    'The name of your model, like "user". Can be singular or plural - same result')
          ]),
      Subcommand(
          name: ['help', 'h'],
          description: 'Display help for <%= config.bin %>',
          options: [
            Option(name: '--all', description: 'See all commands in CLI')
          ],
          args: [
            Arg(
                name: 'command',
                description: 'Command to show help for',
                isOptional: true)
          ]),
      Subcommand(
          name: ['install', 'i'],
          description: 'Install a Recipe into your Blitz app',
          args: [
            Arg(
                name: 'recipe',
                description:
                    'Name of a Blitz recipe from @blitzjs/blitz/recipes, or a file path to a local recipe definition'),
            Arg(
                name: 'recipe-flags',
                description:
                    'A list of flags to pass to the recipe. Blitz will only parse these in the form key=value',
                isOptional: true)
          ]),
      Subcommand(
          name: 'new',
          description: 'Create a new Blitz project',
          options: [
            Option(
                name: '--npm', description: 'Use npm as the package manager'),
            Option(
                name: '--yarn', description: 'Use yarn as the package manager'),
            Option(name: '--form', description: 'A form library', args: [
              Arg(name: 'form', suggestions: [
                FigSuggestion(name: 'react-final-form'),
                FigSuggestion(name: 'react-hook-form'),
                FigSuggestion(name: 'formik')
              ])
            ]),
            Option(
                name: ['-d', '--dry-run'],
                description:
                    'Show what files will be created without writing them to disk'),
            Option(
                name: '--no-git', description: 'Skip git repository creation'),
            Option(
                name: '--skip-upgrade',
                description: 'Skip blitz upgrade if outdated')
          ],
          args: [
            Arg(name: 'name', description: 'Name of your new project')
          ]),
      Subcommand(
          name: ['prisma', 'p'],
          description:
              'Loads env variables then proxies all args to Prisma CLI'),
      Subcommand(
          name: ['routes', 'r'], description: 'Display all Blitz URL Routes'),
      Subcommand(
          name: ['start', 's'],
          description: 'Start the production server',
          options: [
            Option(
                name: ['-p', '--port'],
                description: 'Set port number',
                args: [Arg(name: 'port')]),
            Option(
                name: ['-H', '--hostname'],
                description: 'Set server hostname',
                args: [Arg(name: 'hostname')]),
            Option(
                name: '--inspect', description: 'Enable the Node.js inspector')
          ]),
      Subcommand(
          name: 'autocomplete',
          description: 'Display autocomplete installation instructions',
          options: [
            Option(
                name: ['-r', '--refresh-cache'],
                description: 'Refresh cache (ignores displaying instructions)')
          ],
          args: [
            Arg(
                name: 'shell',
                description: 'Shell type',
                suggestions: [
                  FigSuggestion(name: 'zsh'),
                  FigSuggestion(name: 'bash')
                ],
                isOptional: true)
          ])
    ]);
