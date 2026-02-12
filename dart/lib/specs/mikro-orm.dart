// Auto-generated from TypeScript source: mikro-orm.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mikro-orm` CLI
final FigSpec mikroOrmSpec = FigSpec(
  name: 'mikro-orm',
  description: 'TypeScript ORM for Node.js based on Data Mapper, Unit of Work and Identity Map patterns. Supports MongoDB, MySQL, MariaDB, PostgreSQL and SQLite databases',
  subcommands: [
    Subcommand(
      name: 'cache:clear',
      description: 'Clear metadata cache'
    ),
    Subcommand(
      name: 'cache:generate',
      description: 'Generate metadata cache for production'
    ),
    Subcommand(
      name: 'generate-entities',
      description: 'Generate entities based on current database schema',
      options: [
        Option(
          name: ['-s', '--save'],
          description: 'Saves entities to directory defined by --path'
        ),
        Option(
          name: ['-d', '--dump'],
          description: 'Dumps all entities to console'
        ),
        Option(
          name: ['-p', '--path'],
          description: 'Sets path to directory where to save entities',
          args: [
            Arg(
            name: 'path',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: '--schema',
          description: 'Generates entities only for given schema',
          args: [
            Arg(
            name: 'schem'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'database:create',
      description: 'Create your database if it does not exist'
    ),
    Subcommand(
      name: 'database:import',
      description: 'Imports the SQL file to the database',
      args: [
        Arg(
        name: 'file',
        template: 'filepath'
      )
      ]
    ),
    Subcommand(
      name: 'seeder:run',
      description: 'Seed the database using the seeder class'
    ),
    Subcommand(
      name: 'seeder:create',
      description: 'Create a new seeder class',
      options: [
        Option(
          name: '--class',
          description: 'Seeder class to run'
        )
      ]
    ),
    Subcommand(
      name: 'schema:create',
      description: 'Create database schema based on current metadata',
      options: [
        Option(
          name: ['-r', '--run'],
          description: 'Runs queries'
        ),
        Option(
          name: ['-d', '--dump'],
          description: 'Dumps all queries to console'
        ),
        Option(
          name: '--fk-checks',
          description: 'Do not skip foreign key checks'
        ),
        Option(
          name: '--schema',
          description: 'Set the current schema for wildcard schema entities',
          args: [
            Arg(
            name: 'schem'
          )
          ]
        ),
        Option(
          name: '--seed',
          description: 'Allows to seed the database on create or drop and recreate',
          args: [
            Arg(
            name: 'see'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'schema:drop',
      description: 'Drop database schema based on current metadata',
      options: [
        Option(
          name: ['-r', '--run'],
          description: 'Runs queries'
        ),
        Option(
          name: ['-d', '--dump'],
          description: 'Dumps all queries to console'
        ),
        Option(
          name: '--fk-checks',
          description: 'Do not skip foreign key checks'
        ),
        Option(
          name: '--schema',
          description: 'Set the current schema for wildcard schema entities',
          args: [
            Arg(
            name: 'schem'
          )
          ]
        ),
        Option(
          name: '--drop-migrations-table',
          description: 'Drop also migrations table'
        ),
        Option(
          name: '--drop-db',
          description: 'Drop the whole database'
        )
      ]
    ),
    Subcommand(
      name: 'schema:update',
      description: 'Update database schema based on current metadata',
      options: [
        Option(
          name: ['-r', '--run'],
          description: 'Runs queries'
        ),
        Option(
          name: ['-d', '--dump'],
          description: 'Dumps all queries to console'
        ),
        Option(
          name: '--fk-checks',
          description: 'Do not skip foreign key checks'
        ),
        Option(
          name: '--schema',
          description: 'Set the current schema for wildcard schema entities',
          args: [
            Arg(
            name: 'schem'
          )
          ]
        ),
        Option(
          name: '--safe',
          description: 'Allows to disable table and column dropping'
        ),
        Option(
          name: '--drop-tables',
          description: 'Allows to disable table dropping'
        )
      ]
    ),
    Subcommand(
      name: 'schema:fresh',
      description: 'Drop and recreate database schema based on current metadata',
      options: [
        Option(
          name: ['-r', '--run'],
          description: 'Runs queries'
        ),
        Option(
          name: '--schema',
          description: 'Set the current schema for wildcard schema entities',
          args: [
            Arg(
            name: 'schem'
          )
          ]
        ),
        Option(
          name: '--seed',
          description: 'Allows to seed the database on create or drop and recreate',
          args: [
            Arg(
            name: 'see'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'migration:create',
      description: 'Create new migration with current schema diff',
      options: [
        Option(
          name: ['-b', '--blank'],
          description: 'Create blank migration'
        ),
        Option(
          name: ['-i', '--initial'],
          description: 'Create initial migration'
        ),
        Option(
          name: ['-d', '--dump'],
          description: 'Dumps all queries to console'
        ),
        Option(
          name: ['-p', '--path'],
          description: 'Sets path to directory where to save entities',
          args: [
            Arg(
            name: 'path',
            template: 'folder'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'migration:up',
      description: 'Migrate up to the latest version',
      options: [
        Option(
          name: ['-t', '--to'],
          description: 'Migrate up to specific version'
        ),
        Option(
          name: ['-f', '--from'],
          description: 'Start migration from specific version'
        ),
        Option(
          name: ['-o', '--only'],
          description: 'Migrate only specified versions'
        )
      ]
    ),
    Subcommand(
      name: 'migration:down',
      description: 'Migrate one step down',
      options: [
        Option(
          name: ['-t', '--to'],
          description: 'Migrate down to specific version'
        ),
        Option(
          name: ['-f', '--from'],
          description: 'Start migration from specific version'
        ),
        Option(
          name: ['-o', '--only'],
          description: 'Migrate only specified versions'
        )
      ]
    ),
    Subcommand(
      name: 'migration:list',
      description: 'List all executed migrations'
    ),
    Subcommand(
      name: 'migration:pending',
      description: 'List all pending migrations'
    ),
    Subcommand(
      name: 'migration:fresh',
      description: 'Clear the database and rerun all migrations',
      options: [
        Option(
          name: '--seed',
          description: 'Allows to seed the database on create or drop and recreate',
          args: [
            Arg(
            name: 'see'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'debug',
      description: 'Debug CLI configuration'
    )
  ],
  options: [
    Option(
      name: ['-v', '--version'],
      description: 'Show version number'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Show help'
    )
  ]
);
