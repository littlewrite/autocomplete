// AI-generated from TypeScript source: node.ts
import 'package:autocomplete/src/spec.dart';

final FigSubcommand _aceSubcommand = FigSubcommand(
  name: 'ace',
  description: 'Run AdonisJS command-line',
  options: [
    Option(
      name: ['-h', '--help'],
      description: 'Display AdonisJS Ace help',
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Display AdonisJS version',
    ),
  ],
  subcommands: [
    Subcommand(
      name: 'build',
      description:
          'Compile project from Typescript to Javascript. Also compiles the frontend assets if using webpack encore',
      options: [
        Option(
          name: ['-prod', '--production'],
          description: 'Build for production',
        ),
        Option(
          name: '--assets',
          description: 'Build frontend assets when webpack encore is installed',
        ),
        Option(
          name: '--no-assets',
          description: 'Disable building assets',
        ),
        Option(
          name: '--ignore-ts-errors',
          description: 'Ignore typescript errors and complete the build process',
        ),
        Option(
          name: '--tsconfig',
          description: 'Path to the TypeScript project configuration file',
          args: [
            Arg(
              name: 'path',
              description: 'Path to tsconfig.json',
            )
          ],
        ),
        Option(
          name: '--encore-args',
          requiresSeparator: true,
          insertValue: '--encore-args=\'{cursor}\'',
          description: 'CLI options to pass to the encore command line',
        ),
        Option(
          name: '--client',
          args: [
            Arg(
              name: 'name',
            )
          ],
          description:
              'Select the package manager to decide which lock file to copy to the build folder',
        ),
      ],
    ),
    Subcommand(
      name: ['configure', 'invoke'],
      description: 'Configure a given AdonisJS package',
      args: [
        Arg(
          name: 'name',
          description: 'Name of the package you want to configure',
        )
      ],
      subcommands: [
        Subcommand(
          name: '@adonisjs/auth',
          description: 'Trigger auto configuring auth package',
        ),
        Subcommand(
          name: '@adonisjs/shield',
          description: 'Trigger auto configuring shield package',
        ),
        Subcommand(
          name: '@adonisjs/redis',
          description: 'Trigger auto configuring redis package',
        ),
        Subcommand(
          name: '@adonisjs/mail',
          description: 'Trigger auto configuring mail package',
        ),
      ],
    ),
    Subcommand(
      name: 'repl',
      description: 'Start a new REPL session',
    ),
    Subcommand(
      name: 'serve',
      description:
          'Start the AdonisJS HTTP server, along with the file watcher. Also starts the webpack dev server when webpack encore is installed',
      options: [
        Option(
          name: '--assets',
          description: 'Start webpack dev server when encore is installed',
        ),
        Option(
          name: '--no-assets',
          description: 'Disable webpack dev server',
        ),
        Option(
          name: ['-w', '--watch'],
          description:
              'Watch for file changes and re-start the HTTP server on change',
        ),
        Option(
          name: ['-p', '--poll'],
          description:
              'Detect file changes by polling files instead of listening to filesystem events',
        ),
        Option(
          name: '--node-args',
          requiresSeparator: true,
          insertValue: '--node-args=\'{cursor}\'',
          description: 'CLI options to pass to the node command line',
        ),
        Option(
          name: '--encore-args',
          requiresSeparator: true,
          insertValue: '--encore-args=\'{cursor}\'',
          description: 'CLI options to pass to the encore command line',
        ),
      ],
    ),
    Subcommand(
      name: 'db:seed',
      description: 'Execute database seeder files',
      options: [
        Option(
          name: ['-c', '--connection'],
          description: 'Define a custom database connection for the seeders',
          args: [
            Arg(
              name: 'name',
            )
          ],
        ),
        Option(
          name: ['-i', '--interactive'],
          description: 'Run seeders in interactive mode',
        ),
        Option(
          name: ['-f', '--files'],
          args: [
            Arg(
              name: 'file',
              isVariadic: true,
              template: 'filepaths',
            )
          ],
          description: 'Define a custom set of seeders files names to run',
        ),
      ],
    ),
    Subcommand(
      name: 'dump:rcfile',
      description: 'Dump contents of .adonisrc.json file along with defaults',
    ),
    Subcommand(
      name: 'generate:key',
      description: 'Generate a new APP_KEY secret',
    ),
    Subcommand(
      name: 'generate:manifest',
      description:
          'Generate ace commands manifest file. Manifest file speeds up commands lookup',
    ),
    Subcommand(
      name: 'list:routes',
      description: 'List application routes',
    ),
    Subcommand(
      name: 'make:command',
      description: 'Make a new ace command',
    ),
    Subcommand(
      name: 'make:controller',
      description: 'Make a new HTTP controller',
      args: [
        Arg(
          name: 'name',
          description: 'Name of the controller class',
        )
      ],
      options: [
        Option(
          name: ['-r', '--resource'],
          description: 'Add resourceful methods to the controller class',
        ),
        Option(
          name: ['-e', '--exact'],
          description: 'Create the controller with the exact name as provided',
        ),
      ],
    ),
    Subcommand(
      name: 'make:exception',
      description: 'Make a new custom exception class',
    ),
    Subcommand(
      name: 'make:listener',
      description: 'Make a new event listener class',
    ),
    Subcommand(
      name: 'make:mailer',
      description: 'Make a new mailer class',
      args: [
        Arg(
          name: 'name',
          description: 'Mailer class name',
        )
      ],
    ),
    Subcommand(
      name: 'make:middleware',
      description: 'Make a new middleware',
      args: [
        Arg(
          name: 'name',
          description: 'Middleware class name',
        )
      ],
    ),
    Subcommand(
      name: 'make:migration',
      description: 'Make a new migration file',
      args: [
        Arg(
          name: 'name',
          description: 'Name of the migration file',
        )
      ],
      options: [
        Option(
          name: '--connection',
          description:
              'The connection flag is used to lookup the directory for the migration file',
          args: [
            Arg(
              name: 'name',
            )
          ],
        ),
        Option(
          name: '--folder',
          description: 'Pre-select a migration directory',
          args: [
            Arg(
              name: 'name',
              template: 'filepaths',
            )
          ],
        ),
        Option(
          name: '--create',
          description: 'Define the table name for creating a new table',
          args: [
            Arg(
              name: 'name',
            )
          ],
        ),
        Option(
          name: '--table',
          description: 'Define the table name for altering an existing table',
          args: [
            Arg(
              name: 'name',
            )
          ],
        ),
      ],
    ),
    Subcommand(
      name: 'make:model',
      description: 'Make a new Lucid model',
      args: [
        Arg(
          name: 'name',
          description: 'Name of the model class',
        )
      ],
      options: [
        Option(
          name: ['-m', '--migration'],
          description: 'Generate the migration for the model',
        ),
        Option(
          name: ['-c', '--controller'],
          description: 'Generate the controller for the model',
        ),
      ],
    ),
    Subcommand(
      name: 'make:prldfile',
      description: 'Make a new preload file',
      subcommands: [
        Subcommand(
          name: 'events',
          description: 'Make events preload file',
        ),
      ],
    ),
    Subcommand(
      name: 'make:provider',
      description: 'Make a new provider class',
    ),
    Subcommand(
      name: 'make:seeder',
      description: 'Make a new Seeder file',
      args: [
        Arg(
          name: 'name',
          description: 'Name of the seeder class',
        )
      ],
    ),
    Subcommand(
      name: 'make:validator',
      description: 'Make a new validator',
      args: [
        Arg(
          name: 'name',
          description: 'Name of the validator class',
        )
      ],
      options: [
        Option(
          name: ['-e', '--exact'],
          description: 'Create the validator with the exact name as provided',
        ),
      ],
    ),
    Subcommand(
      name: 'make:view',
      description: 'Make a new view template',
      args: [
        Arg(
          name: 'name',
          description: 'Name of the view',
        )
      ],
      options: [
        Option(
          name: ['-e', '--exact'],
          description: 'Create the template file with the exact name as provided',
        ),
      ],
    ),
    Subcommand(
      name: 'migration:rollback',
      description: 'Rollback migrations to a given batch number',
      options: [
        Option(
          name: ['-c', '--connection'],
          description: 'Define a custom database connection',
          args: [
            Arg(
              name: 'name',
            )
          ],
        ),
        Option(
          name: '--force',
          description: 'Explicitly force to run migrations in production',
          isDangerous: true,
        ),
        Option(
          name: '--dry-run',
          description: 'Print SQL queries, instead of running the migrations',
        ),
        Option(
          name: '--batch',
          args: [
            Arg(
              name: 'number',
              description: 'Use 0 to rollback to initial state',
            )
          ],
          description: 'Define custom batch number for rollback',
        ),
      ],
    ),
    Subcommand(
      name: 'migration:run',
      description: 'Run pending migrations',
      options: [
        Option(
          name: ['-c', '--connection'],
          description: 'Define a custom database connection',
          args: [
            Arg(
              name: 'name',
            )
          ],
        ),
        Option(
          name: '--force',
          description: 'Explicitly force to run migrations in production',
          isDangerous: true,
        ),
        Option(
          name: '--dry-run',
          description: 'Print SQL queries, instead of running the migrations',
        ),
      ],
    ),
    Subcommand(
      name: 'migration:status',
      description: 'Check migrations current status',
    ),
  ],
);

/// Completion spec for `node` CLI
final FigSpec nodeSpec = FigSpec(
  name: 'node',
  description: 'Run the node interpreter',
  args: [
    Arg(
      name: 'node script',
      isScript: true,
      generators: [
        FigGenerator(
          template: 'filepaths',
          filterTemplateSuggestions: (suggestions) {
            return suggestions
                .where((suggestion) {
                  final name = suggestion.nameSingle;
                  if (name == null) return false;
                  return name.endsWith('.mjs') ||
                      name.endsWith('.js') ||
                      name.endsWith('.cjs');
                })
                .map((s) => FigSuggestion(
                      name: s.name,
                      type: s.type,
                      description: s.description,
                      icon: s.icon,
                      priority: 76,
                    ))
                .toList();
          },
        ),
      ],
    )
  ],
  options: [
    Option(
      name: ['-e', '--eval=...'],
      insertValue: '-e \'{cursor}\'',
      description: 'Evaluate script',
      args: [
        Arg(
          name: 'script',
        )
      ],
    ),
    Option(
      name: '--watch',
      description: 'Watch input files',
    ),
    Option(
      name: '--watch-path',
      description: 'Specify a watch directory or file',
      args: [
        Arg(
          name: 'path',
          template: 'filepaths',
        )
      ],
      isRepeatable: true,
    ),
    Option(
      name: '--watch-preserve-output',
      description:
          'Disable the clearing of the console when watch mode restarts the process',
      dependsOn: ['--watch', '--watch-path'],
    ),
    Option(
      name: '--env-file',
      description: 'Specify a file containing environment variables',
      args: [
        Arg(
          name: 'path',
          template: 'filepaths',
        )
      ],
      isRepeatable: true,
    ),
    Option(
      name: ['-p', '--print'],
      description: 'Evaluate script and print result',
    ),
    Option(
      name: ['-c', '--check'],
      description: 'Syntax check script without executing',
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Print Node.js version',
    ),
    Option(
      name: ['-i', '--interactive'],
      description:
          'Always enter the REPL even if stdin does not appear to be a terminal',
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print node command line options (currently set)',
    ),
    Option(
      name: '--inspect',
      requiresSeparator: true,
      args: [
        Arg(
          name: '[host:]port',
          isOptional: true,
        )
      ],
      description: 'Activate inspector on host:port (default: 127.0.0.1:9229)',
    ),
    Option(
      name: '--preserve-symlinks',
      description:
          'Follows symlinks to directories when examining source code and templates for translation strings',
    ),
  ],
  // Note: The original spec used generateSpec to conditionally add 'ace' subcommand
  // based on the presence of an Adonis project.
  // We include it unconditionally here as a subcommand.
  subcommands: [
    _aceSubcommand,
  ],
);
