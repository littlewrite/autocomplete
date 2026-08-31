// Hand-written dynamic handlers migrated from src/node.ts.
//
// The focused node JSON export kept a single dynamic handler: the `generateSpec`
// callback bound to the root `node` subcommand slot
// (`manual.src_node.spec.subcommands_0_.generatespec`). At runtime it probes for
// an AdonisJS project via `bash -c isAdonisJsonPresentCommand`; when the probe
// exits 0 it promotes an `ace` subcommand with the full AdonisJS command tree,
// otherwise nothing is generated.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// `generateSpec` from src/node.ts, bound to the `node` subcommand slot.
const nodeGenerateSpecHandler = 'manual.src_node.spec.subcommands_0_.generatespec';

/// The exact `-c` probe argument from src/node.ts.
const _adonisJsonPresentProbe = 'isAdonisJsonPresentCommand';

/// `ace build` options from src/node.ts.
List<FigOption> _buildOptions() => [
      FigOption(
        name: ['-prod', '--production'],
        description: 'Build for production',
      ),
      FigOption(
        name: '--assets',
        description: 'Build frontend assets when webpack encore is installed',
      ),
      FigOption(
        name: '--no-assets',
        description: 'Disable building assets',
      ),
      FigOption(
        name: '--ignore-ts-errors',
        description: 'Ignore typescript errors and complete the build process',
      ),
      FigOption(
        name: '--tsconfig',
        description: 'Path to the TypeScript project configuration file',
        args: [
          FigArg(
            name: 'path',
            description: 'Path to tsconfig.json',
          ),
        ],
      ),
      FigOption(
        name: '--encore-args',
        requiresSeparator: true,
        insertValue: "--encore-args='{cursor}'",
        description: 'CLI options to pass to the encore command line',
      ),
      FigOption(
        name: '--client',
        args: [
          FigArg(name: 'name'),
        ],
        description:
            'Select the package manager to decide which lock file to copy to the build folder',
      ),
    ];

/// `ace serve` options from src/node.ts.
List<FigOption> _serveOptions() => [
      FigOption(
        name: '--assets',
        description: 'Start webpack dev server when encore is installed',
      ),
      FigOption(
        name: '--no-assets',
        description: 'Disable webpack dev server',
      ),
      FigOption(
        name: ['-w', '--watch'],
        description:
            'Watch for file changes and re-start the HTTP server on change',
      ),
      FigOption(
        name: ['-p', '--poll'],
        description:
            'Detect file changes by polling files instead of listening to filesystem events',
      ),
      FigOption(
        name: '--node-args',
        requiresSeparator: true,
        insertValue: "--node-args='{cursor}'",
        description: 'CLI options to pass to the node command line',
      ),
      FigOption(
        name: '--encore-args',
        requiresSeparator: true,
        insertValue: "--encore-args='{cursor}'",
        description: 'CLI options to pass to the encore command line',
      ),
    ];

/// `ace db:seed` options from src/node.ts.
List<FigOption> _dbSeedOptions() => [
      FigOption(
        name: ['-c', '--connection'],
        description: 'Define a custom database connection for the seeders',
        args: [
          FigArg(name: 'name'),
        ],
      ),
      FigOption(
        name: ['-i', '--interactive'],
        description: 'Run seeders in interactive mode',
      ),
      FigOption(
        name: ['-f', '--files'],
        args: [
          FigArg(
            name: 'file',
            isVariadic: true,
            template: 'filepaths',
          ),
        ],
        description: 'Define a custom set of seeders files names to run',
      ),
    ];

/// `ace make:controller` options from src/node.ts.
List<FigOption> _makeControllerOptions() => [
      FigOption(
        name: ['-r', '--resource'],
        description: 'Add resourceful methods to the controller class',
      ),
      FigOption(
        name: ['-e', '--exact'],
        description: 'Create the controller with the exact name as provided',
      ),
    ];

/// `ace make:migration` options from src/node.ts.
List<FigOption> _makeMigrationOptions() => [
      FigOption(
        name: '--connection',
        description:
            'The connection flag is used to lookup the directory for the migration file',
        args: [
          FigArg(name: 'name'),
        ],
      ),
      FigOption(
        name: '--folder',
        description: 'Pre-select a migration directory',
        args: [
          FigArg(
            name: 'name',
            template: 'filepaths',
          ),
        ],
      ),
      FigOption(
        name: '--create',
        description: 'Define the table name for creating a new table',
        args: [
          FigArg(name: 'name'),
        ],
      ),
      FigOption(
        name: '--table',
        description: 'Define the table name for altering an existing table',
        args: [
          FigArg(name: 'name'),
        ],
      ),
    ];

/// `ace make:model` options from src/node.ts.
List<FigOption> _makeModelOptions() => [
      FigOption(
        name: ['-m', '--migration'],
        description: 'Generate the migration for the model',
      ),
      FigOption(
        name: ['-c', '--controller'],
        description: 'Generate the controller for the model',
      ),
    ];

/// `ace make:validator` options from src/node.ts.
List<FigOption> _makeValidatorOptions() => [
      FigOption(
        name: ['-e', '--exact'],
        description: 'Create the validator with the exact name as provided',
      ),
    ];

/// `ace make:view` options from src/node.ts.
List<FigOption> _makeViewOptions() => [
      FigOption(
        name: ['-e', '--exact'],
        description: 'Create the template file with the exact name as provided',
      ),
    ];

/// Shared `migration` force options from src/node.ts.
List<FigOption> _migrationForceOptions() => [
      FigOption(
        name: ['-c', '--connection'],
        description: 'Define a custom database connection',
        args: [
          FigArg(name: 'name'),
        ],
      ),
      FigOption(
        name: '--force',
        description: 'Explicitly force to run migrations in production',
        isDangerous: true,
      ),
      FigOption(
        name: '--dry-run',
        description: 'Print SQL queries, instead of running the migrations',
      ),
    ];

/// `migration:rollback` options from src/node.ts (adds `--batch`).
List<FigOption> _migrationRollbackOptions() => [
      ..._migrationForceOptions(),
      FigOption(
        name: '--batch',
        args: [
          FigArg(
            name: 'number',
            description: 'Use 0 to rollback to initial state',
          ),
        ],
        description: 'Define custom batch number for rollback',
      ),
    ];

/// The `ace` subcommand tree from src/node.ts.
FigSubcommand _aceSubcommand() => FigSubcommand(
      name: 'ace',
      description: 'Run AdonisJS command-line',
      options: [
        FigOption(
          name: ['-h', '--help'],
          description: 'Display AdonisJS Ace help',
        ),
        FigOption(
          name: ['-v', '--version'],
          description: 'Display AdonisJS version',
        ),
      ],
      subcommands: [
        FigSubcommand(
          name: 'build',
          description:
              'Compile project from Typescript to Javascript. Also compiles the frontend assets if using webpack encore',
          options: _buildOptions(),
        ),
        FigSubcommand(
          name: ['configure', 'invoke'],
          description: 'Configure a given AdonisJS package',
          args: [
            FigArg(
              name: 'name',
              description: 'Name of the package you want to configure',
            ),
          ],
          subcommands: [
            FigSubcommand(
              name: '@adonisjs/auth',
              description: 'Trigger auto configuring auth package',
            ),
            FigSubcommand(
              name: '@adonisjs/shield',
              description: 'Trigger auto configuring shield package',
            ),
            FigSubcommand(
              name: '@adonisjs/redis',
              description: 'Trigger auto configuring redis package',
            ),
            FigSubcommand(
              name: '@adonisjs/mail',
              description: 'Trigger auto configuring mail package',
            ),
          ],
        ),
        FigSubcommand(
          name: 'repl',
          description: 'Start a new REPL session',
        ),
        FigSubcommand(
          name: 'serve',
          description:
              'Start the AdonisJS HTTP server, along with the file watcher. Also starts the webpack dev server when webpack encore is installed',
          options: _serveOptions(),
        ),
        FigSubcommand(
          name: 'db:seed',
          description: 'Execute database seeder files',
          options: _dbSeedOptions(),
        ),
        FigSubcommand(
          name: 'dump:rcfile',
          description: 'Dump contents of .adonisrc.json file along with defaults',
        ),
        FigSubcommand(
          name: 'generate:key',
          description: 'Generate a new APP_KEY secret',
        ),
        FigSubcommand(
          name: 'generate:manifest',
          description:
              'Generate ace commands manifest file. Manifest file speeds up commands lookup',
        ),
        FigSubcommand(
          name: 'list:routes',
          description: 'List application routes',
        ),
        FigSubcommand(
          name: 'make:command',
          description: 'Make a new ace command',
        ),
        FigSubcommand(
          name: 'make:controller',
          description: 'Make a new HTTP controller',
          args: [
            FigArg(
              name: 'name',
              description: 'Name of the controller class',
            ),
          ],
          options: _makeControllerOptions(),
        ),
        FigSubcommand(
          name: 'make:exception',
          description: 'Make a new custom exception class',
        ),
        FigSubcommand(
          name: 'make:listener',
          description: 'Make a new event listener class',
        ),
        FigSubcommand(
          name: 'make:mailer',
          description: 'Make a new mailer class',
          args: [
            FigArg(
              name: 'name',
              description: 'Mailer class name',
            ),
          ],
        ),
        FigSubcommand(
          name: 'make:middleware',
          description: 'Make a new middleware',
          args: [
            FigArg(
              name: 'name',
              description: 'Middleware class name',
            ),
          ],
        ),
        FigSubcommand(
          name: 'make:migration',
          description: 'Make a new migration file',
          args: [
            FigArg(
              name: 'name',
              description: 'Name of the migration file',
            ),
          ],
          options: _makeMigrationOptions(),
        ),
        FigSubcommand(
          name: 'make:model',
          description: 'Make a new Lucid model',
          args: [
            FigArg(
              name: 'name',
              description: 'Name of the model class',
            ),
          ],
          options: _makeModelOptions(),
        ),
        FigSubcommand(
          name: 'make:prldfile',
          description: 'Make a new preload file',
          subcommands: [
            FigSubcommand(
              name: 'events',
              description: 'Make events preload file',
            ),
          ],
        ),
        FigSubcommand(
          name: 'make:provider',
          description: 'Make a new provider class',
        ),
        FigSubcommand(
          name: 'make:seeder',
          description: 'Make a new Seeder file',
          args: [
            FigArg(
              name: 'name',
              description: 'Name of the seeder class',
            ),
          ],
        ),
        FigSubcommand(
          name: 'make:validator',
          description: 'Make a new validator',
          args: [
            FigArg(
              name: 'name',
              description: 'Name of the validator class',
            ),
          ],
          options: _makeValidatorOptions(),
        ),
        FigSubcommand(
          name: 'make:view',
          description: 'Make a new view template',
          args: [
            FigArg(
              name: 'name',
              description: 'Name of the view',
            ),
          ],
          options: _makeViewOptions(),
        ),
        FigSubcommand(
          name: 'migration:rollback',
          description: 'Rollback migrations to a given batch number',
          options: _migrationRollbackOptions(),
        ),
        FigSubcommand(
          name: 'migration:run',
          description: 'Run pending migrations',
          options: _migrationForceOptions(),
        ),
        FigSubcommand(
          name: 'migration:status',
          description: 'Check migrations current status',
        ),
      ],
    );

/// `generateSpec` from src/node.ts. Runs the AdonisJS probe; when it exits 0
/// the generated subcommand carries the `ace` command tree, otherwise null.
Future<FigSubcommand?> _nodeGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
) async {
  tokens;
  if (executeCommand == null) return null;
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'bash',
    args: ['-c', _adonisJsonPresentProbe],
  ));
  if (result.status != 0) return null;
  return FigSubcommand(
    name: 'node',
    subcommands: [_aceSubcommand()],
  );
}

/// Registers the dynamic handler referenced by the shipped node JSON.
void registerNodeHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSubcommand(nodeGenerateSpecHandler, _nodeGenerateSpec);
}
