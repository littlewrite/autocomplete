// Auto-generated from TypeScript source: typeorm.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final Map<String, Option> cliOptions = {
  "help": Option(name: "--help", description: "Show help for command"),
  "version": Option(name: ["-v", "--version"], description: "Show the version"),
  "connection": Option(
    name: ["-c", "--connection"],
    args: [Arg(name: "connection")],
    description: "Name of the connection on which to run a query",
  ),
  "config": Option(
    name: ["-f", "--config"],
    description: "Name of the file with connection configuration",
    args: [Arg(name: "file", template: "filepaths")],
  ),
};

/// Completion spec for `typeorm` CLI
final FigSpec typeormSpec = FigSpec(
  name: 'typeorm',
  description: 'TypeORM CLI',
  options: [cliOptions["help"]!, cliOptions["version"]!],
  subcommands: [
    Subcommand(
      name: 'schema:sync',
      description: 'Synchronizes your entities with database schema',
      options: [
        cliOptions["help"]!,
        Option(
          name: ["-c", "--connection"],
          args: [Arg(name: "connection")],
          description:
              'Name of the connection on which schema synchronization needs to to run',
        ),
        cliOptions["config"]!,
        cliOptions["version"]!,
      ],
    ),
    Subcommand(
      name: 'schema:log',
      description: 'Shows sql to be executed by schema:sync command',
      options: [
        cliOptions["help"]!,
        Option(
          name: ["-c", "--connection"],
          args: [Arg(name: "connection")],
          description:
              'Name of the connection of which schema sync log should be shown',
        ),
        cliOptions["config"]!,
        cliOptions["version"]!,
      ],
    ),
    Subcommand(
      name: 'schema:drop',
      description:
          'Drops all tables in the database on your default connection',
      options: [
        cliOptions["help"]!,
        Option(
          name: ["-c", "--connection"],
          args: [Arg(name: "connection")],
          description: 'Name of the connection on which to drop all tables',
        ),
        cliOptions["config"]!,
        cliOptions["version"]!,
      ],
    ),
    Subcommand(
      name: 'query',
      description: 'Executes given SQL query on a default connection',
      args: [Arg(name: 'query', description: 'The SQL Query to run')],
      options: [
        cliOptions["help"]!,
        cliOptions["connection"]!,
        cliOptions["config"]!,
        cliOptions["version"]!,
      ],
    ),
    Subcommand(
      name: 'entity:create',
      description: 'Generates a new entity',
      options: [
        cliOptions["help"]!,
        cliOptions["connection"]!,
        Option(
          name: ['-n', '--name'],
          description: 'Name of the entity class',
          args: [Arg(name: 'entity')],
          isRequired: true,
        ),
        Option(
          name: ['-d', '--dir'],
          description: 'Directory where entity should be created',
          args: [Arg(name: 'directory', template: 'folders')],
        ),
        cliOptions["config"]!,
        cliOptions["version"]!,
      ],
    ),
    Subcommand(
      name: 'subscriber:create',
      description: 'Generates a new subscriber',
      options: [
        cliOptions["help"]!,
        cliOptions["connection"]!,
        Option(
          name: ['-n', '--name'],
          description: 'Name of the subscriber class',
          args: [Arg(name: 'subscriber')],
          isRequired: true,
        ),
        Option(
          name: ['-d', '--dir'],
          description: 'Directory where subscriber should be created',
          args: [Arg(name: 'directory', template: 'folders')],
        ),
        cliOptions["config"]!,
        cliOptions["version"]!,
      ],
    ),
    Subcommand(
      name: 'migration:create',
      description: 'Creates a new migration file',
      options: [
        cliOptions["help"]!,
        cliOptions["connection"]!,
        Option(
          name: ['-n', '--name'],
          description: 'Name of the migration class',
          args: [Arg(name: 'migration')],
          isRequired: true,
        ),
        Option(
          name: ['-d', '--dir'],
          description: 'Directory where migration should be created',
          args: [Arg(name: 'directory', template: 'folders')],
        ),
        cliOptions["config"]!,
        Option(
          name: ['-o', '--outputJs'],
          description:
              'Generate a migration file on Javascript instead of Typescript',
        ),
        cliOptions["version"]!,
      ],
    ),
    Subcommand(
      name: 'migration:generate',
      description:
          'Generates a new migration file with sql needs to be executed to update schema',
      options: [
        cliOptions["help"]!,
        cliOptions["connection"]!,
        Option(
          name: ['-n', '--name'],
          description: 'Name of the migration class',
          args: [Arg(name: 'migration')],
          isRequired: true,
        ),
        Option(
          name: ['-d', '--dir'],
          description: 'Directory where migration should be created',
          args: [Arg(name: 'directory', template: 'folders')],
        ),
        Option(
          name: ['-p', '--pretty'],
          description: 'Pretty-print generated SQL',
        ),
        cliOptions["config"]!,
        Option(
          name: ['-o', '--outputJs'],
          description:
              'Generate a migration file on Javascript instead of Typescript',
        ),
        Option(
          name: ['--dr', '--dryrun'],
          description:
              'Prints out the contents of the migration instead of writing it to a file',
        ),
        Option(
          name: ['--ch', '--check'],
          description:
              'Verifies that the current database is up to date and that no migrations are needed',
        ),
        cliOptions["version"]!,
      ],
    ),
    Subcommand(
      name: 'migration:run',
      description: 'Runs all pending migrations',
      options: [
        cliOptions["help"]!,
        cliOptions["connection"]!,
        Option(
          name: ['-t', '--transaction'],
          description:
              'Indicates if transaction should be used or not for migration run',
        ),
        cliOptions["config"]!,
        cliOptions["version"]!,
      ],
    ),
    Subcommand(
      name: 'migration:show',
      description: 'Show all migrations and whether they have been run or not',
      options: [
        cliOptions["help"]!,
        cliOptions["connection"]!,
        cliOptions["config"]!,
        cliOptions["version"]!,
      ],
    ),
    Subcommand(
      name: 'migration:revert',
      description: 'Reverts last executed migration',
      options: [
        cliOptions["help"]!,
        cliOptions["connection"]!,
        Option(
          name: ['-t', '--transaction'],
          description:
              'Indicates if transaction should be used or not for migration revert',
        ),
        cliOptions["config"]!,
        cliOptions["version"]!,
      ],
    ),
    Subcommand(
      name: 'version',
      description: 'Prints TypeORM version this project uses',
      options: [cliOptions["help"]!, cliOptions["version"]!],
    ),
    Subcommand(
      name: 'cache:clear',
      description: 'Clears all data stored in query runner cache',
      options: [
        cliOptions["help"]!,
        cliOptions["connection"]!,
        cliOptions["config"]!,
        cliOptions["version"]!,
      ],
    ),
    Subcommand(
      name: 'init',
      description: 'Generates initial TypeORM project structure',
      options: [
        cliOptions["help"]!,
        cliOptions["connection"]!,
        Option(
          name: ['-n', '--name'],
          description: 'Name of the project directory',
          args: [Arg(name: 'name')],
        ),
        Option(
          name: ['--db', '--database'],
          description: "Database type you'll use in your project",
          args: [
            Arg(name: 'database', suggestions: [
              FigSuggestion(name: 'mysql'),
              FigSuggestion(name: 'mariadb'),
              FigSuggestion(name: 'postgres'),
              FigSuggestion(name: 'cockroachdb'),
              FigSuggestion(name: 'sqlite'),
              FigSuggestion(name: 'mssql'),
              FigSuggestion(name: 'oracle'),
              FigSuggestion(name: 'cordova'),
              FigSuggestion(name: 'nativescript'),
              FigSuggestion(name: 'react-native'),
              FigSuggestion(name: 'expo'),
              FigSuggestion(name: 'mongodb'),
            ])
          ],
        ),
        Option(
          name: '--express',
          description:
              'Indicates if express should be included in the project',
        ),
        Option(
          name: '--docker',
          description:
              'Set to true if docker-compose must be generated as well',
        ),
        Option(
          name: ['--pm', '--manager'],
          description: 'Install packages',
          args: [
            Arg(name: 'manager', suggestions: [
              FigSuggestion(name: 'npm'),
              FigSuggestion(name: 'yarn'),
            ])
          ],
        ),
        cliOptions["version"]!,
      ],
    ),
  ],
);
