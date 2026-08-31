// Hand-written dynamic handlers migrated from src/sequelize.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `spec.subcommands` handler from src/sequelize.ts: every subcommand's
/// own options followed by the shared `commonOptions` list
/// (`subCommands.map((sc) => ({ ...sc, options: [...(sc.options || []), ...commonOptions] }))`).
const sequelizeSubcommandsHandler = 'manual.src_sequelize.spec.subcommands';

/// The shared `commonOptions` list in src/sequelize.ts, appended to EVERY
/// subcommand's options (after the subcommand's own options).
final _commonOptions = <FigOption>[
  FigOption(
    name: '--env',
    description: 'The environment to run the command in',
    args: FigArg(name: 'environment'),
  ),
  FigOption(
    name: '--config',
    description: 'The path to the config file',
    args: FigArg(name: 'file path', template: 'filepaths'),
  ),
  FigOption(
    name: '--options-path',
    description: 'The path to a JSON file with additional options',
    args: FigArg(name: 'file path', template: 'filepaths'),
  ),
  FigOption(
    name: '--migrations-path',
    description: 'The path to the migrations folder',
    args: FigArg(name: 'folder path', template: 'folders'),
  ),
  FigOption(
    name: '--seeders-path',
    description: 'The path to the seeders folder',
    args: FigArg(name: 'folder path', template: 'folders'),
  ),
  FigOption(
    name: '--models-path',
    description: 'The path to the models folder',
    args: FigArg(name: 'folder path', template: 'folders'),
  ),
  FigOption(
    name: '--url',
    description: 'The database connection string to use',
    args: FigArg(name: 'connection string'),
  ),
  FigOption(
    name: '--debug',
    description: 'When available show various debug information',
  ),
  FigOption(
    name: '--help',
    description: 'Show help',
  ),
  FigOption(
    name: '--version',
    description: 'Show version number',
  ),
];

/// The `databaseOptions` list in src/sequelize.ts.
final _databaseOptions = <FigOption>[
  FigOption(
    name: '--charset',
    description: 'Pass charset option to dialect, MYSQL only',
    args: FigArg(name: 'charset options'),
  ),
  FigOption(
    name: '--collate',
    description: 'Pass collate option to dialect',
    args: FigArg(name: 'collate options'),
  ),
  FigOption(
    name: '--encoding',
    description: 'Pass encoding option to dialect, PostgreSQL only',
    args: FigArg(name: 'encoding options'),
  ),
  FigOption(
    name: '--ctype',
    description: 'Pass ctype option to dialect, PostgreSQL only',
    args: FigArg(name: 'ctype option'),
  ),
  FigOption(
    name: '--template',
    description: 'Pass template option to dialect, PostgreSQL only',
    args: FigArg(name: 'template option'),
  ),
];

/// The `initOptions` list in src/sequelize.ts.
final _initOptions = <FigOption>[
  FigOption(
    name: '--force',
    description: 'Will drop the existing config folder and re-create it',
    isDangerous: true,
  ),
];

/// The `migrateOptions` list in src/sequelize.ts.
final _migrateOptions = <FigOption>[
  FigOption(
    name: '--to',
    description: 'Migration name to run migrations until',
    args: FigArg(name: 'migration name'),
  ),
  FigOption(
    name: '--from',
    description: 'Migration name to start migrations from (excluding)',
    args: FigArg(name: 'migration name'),
  ),
];

/// The `seedOneOptions` list in src/sequelize.ts.
final _seedOneOptions = <FigOption>[
  FigOption(
    name: '--seed',
    description: 'List of seed files',
    args: FigArg(name: 'file path', template: 'filepaths', isVariadic: true),
  ),
];

/// Appends the shared `commonOptions` after a subcommand's own options
/// (mirrors `[...(sc.options || []), ...commonOptions]`).
List<FigOption> _withCommonOptions(List<FigOption> own) =>
    <FigOption>[...own, ..._commonOptions];

/// Root `spec.subcommands` handler: the `subCommands` list from src/sequelize.ts,
/// each keeping its own `name`/`description`/`options` with the shared
/// `commonOptions` appended to its options.
List<FigSubcommand> _subcommands(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  return [
    FigSubcommand(
      name: 'db:migrate',
      description: 'Run pending migrations',
      options: _withCommonOptions(_migrateOptions),
    ),
    FigSubcommand(
      name: 'db:migrate:schema:timestamps:add',
      description: 'Update migration table to have timestamps',
      options: _withCommonOptions(_migrateOptions),
    ),
    FigSubcommand(
      name: 'db:migrate:status',
      description: 'List the status of all migrations',
      options: _withCommonOptions(_migrateOptions),
    ),
    FigSubcommand(
      name: 'db:migrate:undo',
      description: 'Reverts a migration',
      options: _withCommonOptions(<FigOption>[
        FigOption(
          name: '--name',
          description: 'Name of the migration to undo',
          args: FigArg(name: 'migration name'),
        ),
      ]),
    ),
    FigSubcommand(
      name: 'db:migrate:undo:all',
      description: 'Revert all migrations ran',
      options: _withCommonOptions(<FigOption>[
        FigOption(
          name: '--to',
          description: 'Revert to the provided migration',
          args: FigArg(name: 'migration name'),
        ),
      ]),
    ),
    FigSubcommand(
      name: 'db:seed',
      description: 'Run specified seeder',
      options: _withCommonOptions(_seedOneOptions),
    ),
    FigSubcommand(
      name: 'db:seed:undo',
      description: 'Deletes data from the database',
      options: _withCommonOptions(_seedOneOptions),
    ),
    FigSubcommand(
      name: 'db:seed:all',
      description: 'Run every seeder',
      options: _withCommonOptions(<FigOption>[]),
    ),
    FigSubcommand(
      name: 'db:seed:undo:all',
      description: 'Deletes data from the database',
      options: _withCommonOptions(<FigOption>[]),
    ),
    FigSubcommand(
      name: 'db:create',
      description: 'Create database specified by configuration',
      options: _withCommonOptions(_databaseOptions),
    ),
    FigSubcommand(
      name: 'db:drop',
      description: 'Drop database specified by configuration',
      options: _withCommonOptions(_databaseOptions),
    ),
    FigSubcommand(
      name: 'init',
      description: 'Initializes project',
      options: _withCommonOptions(_initOptions),
    ),
    FigSubcommand(
      name: 'init:config',
      description: 'Initializes configuration',
      options: _withCommonOptions(_initOptions),
    ),
    FigSubcommand(
      name: 'init:migrations',
      description: 'Initializes migrations',
      options: _withCommonOptions(_initOptions),
    ),
    FigSubcommand(
      name: 'init:models',
      description: 'Initializes models',
      options: _withCommonOptions(_initOptions),
    ),
    FigSubcommand(
      name: 'init:seeders',
      description: 'Initializes seeders',
      options: _withCommonOptions(_initOptions),
    ),
    FigSubcommand(
      name: <String>['migration:generate', 'migration:create'],
      description: 'Generates a new migration file',
      options: _withCommonOptions(<FigOption>[
        FigOption(
          name: '--name',
          description: 'Defines the name of the migration',
          args: FigArg(name: 'migration name'),
        ),
      ]),
    ),
    FigSubcommand(
      name: <String>['model:generate', 'model:create'],
      description: 'Generates a model and its migration',
      options: _withCommonOptions(<FigOption>[
        FigOption(
          name: '--name',
          description: 'Defines the name of the new model',
          args: FigArg(name: 'model name'),
        ),
        FigOption(
          name: '--attributes',
          description: 'A list of attributes',
          args: FigArg(name: 'attributes string'),
        ),
        FigOption(
          name: '--force',
          description: 'Forcefully re-creates model with the same name',
        ),
        FigOption(
          name: '--underscored',
          description: "Use snake case for the timestamp's attribute names",
        ),
      ]),
    ),
    FigSubcommand(
      name: <String>['seed:generate', 'seed:create'],
      description: 'Generates a new seed file',
      options: _withCommonOptions(<FigOption>[
        FigOption(
          name: '--name',
          description: 'Defines the name of the seed',
          args: FigArg(name: 'seed name'),
        ),
      ]),
    ),
  ];
}

/// Registers the sequelize handlers referenced by the shipped sequelize JSON.
void registerSequelizeHandlers(JsonHandlerRegistry registry) {
  registry.registerSubcommands(sequelizeSubcommandsHandler, _subcommands);
}
