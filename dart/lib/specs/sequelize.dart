// Auto-generated from TypeScript source: sequelize.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> commonOptions = [

  Option(
    name: '--env',
    description: 'The environment to run the command in',
    args: [
      Arg(
      name: 'environmen'
    )
    ]
  ),
  Option(
    name: '--config',
    description: 'The path to the config file',
    args: [
      Arg(
      name: 'file path',
      template: 'filepath'
    )
    ]
  ),
  Option(
    name: '--options-path',
    description: 'The path to a JSON file with additional options',
    args: [
      Arg(
      name: 'file path',
      template: 'filepath'
    )
    ]
  ),
  Option(
    name: '--migrations-path',
    description: 'The path to the migrations folder',
    args: [
      Arg(
      name: 'folder path',
      template: 'folder'
    )
    ]
  ),
  Option(
    name: '--seeders-path',
    description: 'The path to the seeders folder',
    args: [
      Arg(
      name: 'folder path',
      template: 'folder'
    )
    ]
  ),
  Option(
    name: '--models-path',
    description: 'The path to the models folder',
    args: [
      Arg(
      name: 'folder path',
      template: 'folder'
    )
    ]
  ),
  Option(
    name: '--url',
    description: 'The database connection string to use',
    args: [
      Arg(
      name: 'connection strin'
    )
    ]
  ),
  Option(
    name: '--debug',
    description: 'When available show various debug information'
  ),
  Option(
    name: '--help',
    description: 'Show help'
  ),
  Option(
    name: '--version',
    description: 'Show version number'
  )
];

final List<Option> databaseOptions = [

  Option(
    name: '--charset',
    description: 'Pass charset option to dialect, MYSQL only',
    args: [
      Arg(
      name: 'charset option'
    )
    ]
  ),
  Option(
    name: '--collate',
    description: 'Pass collate option to dialect',
    args: [
      Arg(
      name: 'collate option'
    )
    ]
  ),
  Option(
    name: '--encoding',
    description: 'Pass encoding option to dialect, PostgreSQL only',
    args: [
      Arg(
      name: 'encoding option'
    )
    ]
  ),
  Option(
    name: '--ctype',
    description: 'Pass ctype option to dialect, PostgreSQL only',
    args: [
      Arg(
      name: 'ctype optio'
    )
    ]
  ),
  Option(
    name: '--template',
    description: 'Pass template option to dialect, PostgreSQL only',
    args: [
      Arg(
      name: 'template optio'
    )
    ]
  )
];

final List<Option> initOptions = [

  Option(
    name: '--force',
    description: 'Will drop the existing config folder and re-create it',
    isDangerous: true
  )
];

final List<Option> migrateOptions = [

  Option(
    name: '--to',
    description: 'Migration name to run migrations until',
    args: [
      Arg(
      name: 'migration nam'
    )
    ]
  ),
  Option(
    name: '--from',
    description: 'Migration name to start migrations from (excluding)',
    args: [
      Arg(
      name: 'migration nam'
    )
    ]
  )
];

final List<Option> seedOneOptions = [

  Option(
    name: '--seed',
    description: 'List of seed files',
    args: [
      Arg(
      name: 'file path',
      template: 'filepaths'
    )
    ]
  )
];

/// Completion spec for `sequelize` CLI
final FigSpec sequelizeSpec = FigSpec(
  name: 'sequelize',
  description: 'The Sequelize Command Line Interface',
  options: [

    Option(
      name: '--help',
      description: 'Show help'
    ),
    Option(
      name: '--version',
      description: 'Show version number'
    )
  ]
);
