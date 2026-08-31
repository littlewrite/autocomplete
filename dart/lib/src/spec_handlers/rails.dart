// Hand-written dynamic handlers migrated from src/rails.ts.
//
// The focused rails JSON export kept only the root `generateSpec`. At runtime
// it probes whether the current tree is a Rails app (a Gemfile declaring the
// rails gem). When it is not, it returns a minimal spec exposing just `new`;
// when it is, it returns the full rails command tree (console, server,
// db:*, generate, routes, test, new) reconstructed from src/rails.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/rails.ts.
const railsGenerateSpecHandler = 'manual.src_rails.spec.generatespec';

/// The exact `bash -c` probe from src/rails.ts that walks up looking for a
/// Gemfile that declares the rails gem.
const _gemfileProbeScript =
    'until [[ -f Gemfile ]] || [[ \$PWD = \'/\' ]]; do cd ..; done; '
    'if [ -f Gemfile ]; then cat Gemfile | grep "gem [\'"]rails[\'"]"; fi';

/// `generate`'s generator postProcess from src/rails.ts: splits `rails g
/// --help` output at `Rails:` into plugin groups and returns one suggestion per
/// generator named `name (plugin)`.
List<FigSuggestion> _generateGeneratorPostProcess(String out,
    [List<String>? tokens]) {
  tokens;
  final parts = out.split('Rails:');
  if (parts.length < 2) return const [];
  final lines = parts[1].trim().split('\n');
  final groups = <List<String>>[['Rails']];
  for (final rawLine in lines) {
    if (rawLine.endsWith(':')) {
      groups.add([rawLine.substring(0, rawLine.length - 1)]);
    } else {
      final trimmed = rawLine.trim();
      if (trimmed.isEmpty) continue;
      groups.last.add(trimmed);
    }
  }
  final suggestions = <FigSuggestion>[];
  for (final group in groups) {
    final plugin = group.first;
    for (final name in group.skip(1)) {
      suggestions.add(FigSuggestion(
        name: '$name ($plugin)',
        insertValue: name,
      ));
    }
  }
  return suggestions;
}

/// `generate`'s arg generator from src/rails.ts.
FigGenerator _generateGenerator() => FigGenerator(
      script: ['rails', 'g', '--help'],
      cache: const FigCache(
        cacheByDirectory: true,
        strategy: 'stale-while-revalidate',
      ),
      postProcess: _generateGeneratorPostProcess,
    );

/// `test` subcommand's generateSpec from src/rails.ts: parses `rails test
/// --help` into options.
Future<FigSubcommand?> _railsTestGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
) async {
  tokens;
  if (executeCommand == null) return null;
  final result = await executeCommand(
    const ExecuteCommandInput(command: 'rails', args: ['test', '--help']),
  );
  final options = <FigOption>[];
  final argRegex =
      RegExp(r'(?:(-[a-zA-Z]), )?(--[^ ]+?)[ =]([A-Z_]+)?[ \r\n]+([^\n]+)');
  for (final match in argRegex.allMatches(result.stdout)) {
    final long = match.group(2) ?? '';
    options.add(FigOption(
      name: long.replaceAll(RegExp(r'\[.+\]'), ''),
      description: match.group(4),
      args: [
        FigArg(name: match.group(3)),
      ],
    ));
  }
  return FigSubcommand(name: 'test', options: options);
}

/// `railsCommandsGenerator` from src/rails.ts: searches for more rails commands
/// by running `rails --tasks` and filtering out the built-in ones.
Future<List<FigSuggestion>> _railsCommandsGenerator(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  tokens;
  context;
  if (executeCommand == null) return const [];
  final defaultNames = <dynamic>[];
  for (final subcommand in _defaultCommands()) {
    defaultNames.add(subcommand.name);
  }
  final result = await executeCommand(
    const ExecuteCommandInput(command: 'rails', args: ['--tasks']),
  );
  final suggestions = <FigSuggestion>[];
  for (final match in RegExp(r'rails ([^ ]+)').allMatches(result.stdout)) {
    final name = match.group(1) ?? '';
    if (defaultNames.contains(name)) continue;
    suggestions.add(FigSuggestion(name: name));
  }
  return suggestions;
}

/// `newCommand` from src/rails.ts.
FigSubcommand _newCommand() => FigSubcommand(
      name: 'new',
      description: 'Create a new rails application',
      args: [
        FigArg(
          name: 'path',
          description:
              'Path to directory to be created containing the new application',
        ),
      ],
      options: [
        FigOption(
          name: '-skip-namespace',
          description: 'Skip namespace (affects only isolated applications)',
          args: [FigArg()],
        ),
        FigOption(
          name: ['-r', '--ruby'],
          description: 'Path to the Ruby binary of your choice',
          args: [FigArg()],
        ),
        FigOption(
          name: '-m',
          description:
              'Path to some application template (can be a filesystem path or URL)',
        ),
        FigOption(
          name: '-d',
          description: 'Preconfigure for selected database - defaults to sqlite3',
          args: [
            FigArg(
              name: 'database',
              suggestions: [
                'mysql',
                'postgresql',
                'sqlite3',
                'oracle',
                'frontbase',
                'ibm_db',
                'sqlserver',
                'jdbcmysql',
                'jdbcsqlite3',
                'jdbcpostgresql',
                'jdbc',
              ],
            ),
          ],
        ),
        FigOption(name: '--skip-gemfile', description: "Don't create a Gemfile"),
        FigOption(name: '-G', description: 'Skip .gitignore file'),
        FigOption(
            name: '--skip-keeps', description: 'Skip source control .keep files'),
        FigOption(name: '-M', description: 'Skip Action Mailer files'),
        FigOption(name: '--skip-action-mailbox', description: 'Skip Action Mailbox gem'),
        FigOption(name: '--skip-action-text', description: 'Skip Action Text gem'),
        FigOption(name: '-O', description: 'Skip Active Record files'),
        FigOption(name: '--skip-active-storage', description: 'Skip Active Storage files'),
        FigOption(name: '-P', description: 'Skip Puma related files'),
        FigOption(name: '-C', description: 'Skip Action Cable files'),
        FigOption(name: '-S', description: 'Skip Sprockets files'),
        FigOption(
            name: '--skip-spring',
            description: "Don't install Spring application preloader"),
        FigOption(
            name: '--skip-listen',
            description:
                "Don't generate configuration that depends on the listen gem"),
        FigOption(name: '-J', description: 'Skip JavaScript files'),
        FigOption(name: '--skip-turbolinks', description: 'Skip turbolinks gem'),
        FigOption(name: '-T', description: 'Skip test files'),
        FigOption(name: '--skip-system-test', description: 'Skip system test files'),
        FigOption(name: '--skip-bootsnap', description: 'Skip bootsnap gem'),
        FigOption(
            name: '--dev',
            description:
                'Setup the application with Gemfile pointing to your Rails checkout'),
        FigOption(
            name: '--edge',
            description:
                'Setup the application with Gemfile pointing to Rails repository'),
        FigOption(
          name: '--rc',
          description:
              'Path to file containing extra configuration options for rails command',
          args: [
            FigArg(name: 'path'),
          ],
        ),
        FigOption(
            name: '--no-rc',
            description:
                'Skip loading of extra configuration options from .railsrc file'),
        FigOption(
            name: '--api', description: 'Preconfigure smaller stack for API only apps'),
        FigOption(name: '-B', description: "Don't run bundle install"),
        FigOption(
          name: '--webpacker',
          description: 'Preconfigure Webpack with a particular framework',
          args: [
            FigArg(
              name: 'framework',
              suggestions: ['react', 'vue', 'angular', 'elm', 'stimulus'],
            ),
          ],
        ),
        FigOption(
            name: '--skip-webpack-install]', description: "Don't run Webpack install"),
        FigOption(name: ['--f', '--force'], description: 'Overwrite files that already exist'),
        FigOption(name: ['--p', '--pretend'], description: 'Run but do not make any changes'),
        FigOption(name: ['--q', '--quiet'], description: 'Suppress status output'),
        FigOption(name: ['--s', '--skip'], description: 'Skip files that already exist'),
        FigOption(name: ['--h', '--help'], description: 'Show this help message and quit'),
        FigOption(
            name: ['--v', '--version'], description: 'Show Rails version number and quit'),
      ],
    );

/// `dbOptions` from src/rails.ts, shared by `db:create` and `db:migrate`.
List<FigOption> _dbOptions() => [
      FigOption(
        name: '--backtrace',
        description:
            'Enable full backtrace.  OUT can be stderr (default) or stdout',
      ),
      FigOption(name: '--comments', description: 'Show commented tasks only'),
      FigOption(
        name: '--job-stats',
        description:
            'Display job statistics. LEVEL=history displays a complete job list',
      ),
      FigOption(name: '--rules', description: 'Trace the rules resolution'),
      FigOption(
        name: '--suppress-backtrace',
        description:
            'Suppress backtrace lines matching regexp PATTERN. Ignored if --trace is on',
        args: [
          FigArg(name: 'pattern'),
        ],
      ),
      FigOption(
        name: ['-A', '--all'],
        description:
            'Show all tasks, even uncommented ones (in combination with -T or -D)',
      ),
      FigOption(
        name: ['-B', '--build-all'],
        description:
            'Build all prerequisites, including those which are up-to-date',
      ),
      FigOption(
        name: ['-D', '--describe'],
        description: 'Describe the tasks (matching optional PATTERN), then exit',
        args: [
          FigArg(name: 'pattern', isOptional: true),
        ],
      ),
      FigOption(
        name: ['-e', '--execute'],
        description: 'Execute some Ruby code and exit',
        args: [
          FigArg(name: 'code'),
        ],
      ),
      FigOption(
        name: ['-E', '--execute-continue'],
        description:
            'Execute some Ruby code, then continue with normal task processing',
        args: [
          FigArg(name: 'code'),
        ],
      ),
      FigOption(
        name: ['-f', '--rakefile'],
        description: 'Use FILENAME as the rakefile to search for',
        args: [
          FigArg(name: 'filename'),
        ],
      ),
      FigOption(
        name: '-G',
        description:
            'Use standard project Rakefile search paths, ignore system wide rakefiles',
      ),
      FigOption(
        name: ['-g', '--system'],
        description:
            "Using system wide (global) rakefiles (usually '~/.rake/*.rake')",
      ),
      FigOption(
        name: ['-I', '--libdir'],
        description: 'Include LIBDIR in the search path for required modules',
        args: [
          FigArg(name: 'libdir'),
        ],
      ),
      FigOption(
        name: ['-j', '--jobs'],
        description:
            'Specifies the maximum number of tasks to execute in parallel. (default is number of CPU cores + 4)',
        args: [
          FigArg(name: 'number'),
        ],
      ),
      FigOption(name: ['-m', '--multitask'], description: 'Treat all tasks as multitasks', args: [FigArg()]),
      FigOption(name: ['-n', '--dry-run'], description: 'Do a dry run without executing actions', args: [FigArg()]),
      FigOption(
          name: '-N',
          description: 'Do not search parent directories for the Rakefile',
          args: [FigArg()]),
      FigOption(
          name: ['-P', '--prereqs'],
          description: 'Display the tasks and dependencies, then exit',
          args: [FigArg()]),
      FigOption(
          name: ['-p', '--execute-print'],
          description: 'Execute some Ruby code, print the result, then exit',
          args: [FigArg()]),
      FigOption(
          name: ['-q', '--quiet'],
          description: 'Do not log messages to standard output',
          args: [FigArg()]),
      FigOption(
        name: ['-r', '--require'],
        description: 'Require MODULE before executing rakefile',
        args: [
          FigArg(name: 'module'),
        ],
      ),
      FigOption(
        name: ['-R', '--rakelibdir'],
        description:
            "Auto-import any .rake files in RAKELIBDIR. (default is 'rakelib')",
        args: [
          FigArg(name: 'rakelibdir'),
        ],
      ),
      FigOption(
        name: '--rakelib',
        description:
            "-s, --silent                     Like --quiet, but also suppresses the 'in directory' announcement",
        args: [FigArg()],
      ),
      FigOption(
        name: ['-t', '--trace'],
        description:
            'Turn on invoke/execute tracing, enable full backtrace. OUT can be stderr (default) or stdout',
        args: [FigArg()],
      ),
      FigOption(
        name: ['-T', '--tasks'],
        description:
            'Display the tasks (matching optional PATTERN) with descriptions, then exit. -AT combination displays all of tasks contained no description',
        args: [FigArg()],
      ),
      FigOption(
          name: ['-v', '--verbose'],
          description: 'Log message to standard output',
          args: [FigArg()]),
      FigOption(
          name: ['-V', '--version'],
          description: 'Display the program version',
          args: [FigArg()]),
      FigOption(
        name: ['-W', '--where'],
        description: 'Describe the tasks (matching optional PATTERN), then exit',
        args: [
          FigArg(name: 'pattern'),
        ],
      ),
      FigOption(
          name: ['-X', '--no-deprecation-warnings'],
          description: 'Disable the deprecation warnings',
          args: [FigArg()]),
      FigOption(
          name: ['-h', '--help'],
          description: 'Display this help message',
          args: [FigArg()]),
    ];

/// `defaultCommands` from src/rails.ts.
List<FigSubcommand> _defaultCommands() => [
      FigSubcommand(
        name: ['c', 'console'],
        description:
            'Interact with your Rails application from the command line',
        options: [
          FigOption(
            name: ['-s', '--sandbox'],
            description: 'Rollback database modifications on exit',
          ),
          FigOption(
            name: ['-e', '--environment'],
            description: 'Specifies the environment to run this console under',
            args: [
              FigArg(name: 'environment'),
            ],
          ),
        ],
      ),
      FigSubcommand(
        name: 'server',
        description:
            'Launch a web server to access your application through a browser',
        options: [
          FigOption(
            name: ['-e', '--environment'],
            description:
                'Specifies the environment to run this server under (e.g. test/development/production)',
            args: [
              FigArg(name: 'environment'),
            ],
          ),
          FigOption(
            name: ['-p', '--port'],
            description: 'Runs Rails on the specified port - defaults to 3000',
            args: [
              FigArg(name: 'port'),
            ],
          ),
          FigOption(
            name: ['-b', '--binding'],
            description:
                "Binds Rails to the specified IP - defaults to 'localhost' in development and '0.0.0.0' in other environments'",
            args: [
              FigArg(name: 'IP'),
            ],
          ),
          FigOption(
            name: ['-c', '--config'],
            description:
                'Uses a custom rackup configuration - defaults to config.ru',
            args: [
              FigArg(name: 'file'),
            ],
          ),
          FigOption(name: ['-d', '--daemon'], description: 'Runs server as a Daemon'),
          FigOption(
            name: ['-u', '--using'],
            description:
                'Specifies the Rack server used to run the application (thin/puma/webrick)',
            args: [
              FigArg(name: 'server'),
            ],
          ),
          FigOption(
            name: ['-P', '--pid'],
            description:
                'Specifies the PID file - defaults to tmp/pids/server.pid',
            args: [
              FigArg(name: 'PID'),
            ],
          ),
          FigOption(
            name: ['-C', '--dev-caching'],
            description: 'Specifies whether to perform caching in development',
          ),
          FigOption(name: '--early-hints', description: 'Enables HTTP/2 early hints'),
          FigOption(
            name: '--log-to-stdout',
            description:
                'Whether to log to stdout. Enabled by default in development when not daemonized',
          ),
        ],
      ),
      FigSubcommand(
        name: 'db:create',
        description: 'Create your database',
        options: _dbOptions(),
      ),
      FigSubcommand(
        name: 'db:migrate',
        description: 'Run any pending database migrations',
        options: _dbOptions(),
      ),
      FigSubcommand(
        name: 'dbconsole',
        description:
            'Opens a console to your database (supports MySQL, PostgreSQL, and SQLite3)',
        options: [
          FigOption(
            name: '-e',
            description:
                'Specifies the environment to run this dbconsole under (e.g. test/development/production)',
            args: [FigArg()],
          ),
          FigOption(
            name: '--mode',
            description:
                'Automatically put the sqlite3 database in the specified mode',
            args: [
              FigArg(
                name: 'mode',
                suggestions: ['html', 'list', 'line', 'column'],
              ),
            ],
          ),
          FigOption(
            name: '-p',
            description: 'Automatically provide the password from database.yml',
            args: [FigArg()],
          ),
          FigOption(
            name: '-c',
            description: 'Specifies the connection to use',
            args: [
              FigArg(name: 'connection'),
            ],
          ),
          FigOption(
              name: ['-db', '--database'], description: 'Specifies the database to use'),
        ],
      ),
      FigSubcommand(
        name: 'notes',
        description: 'Enumerate all annotations',
        options: [
          FigOption(
            name: ['-a', '--annotations'],
            requiresSeparator: true,
            args: [
              FigArg(
                name: 'annotations',
                isVariadic: true,
                description: 'Filter by specific annotations, e.g. Foobar TODO',
              ),
            ],
          ),
        ],
      ),
      FigSubcommand(
        name: 'generate',
        description: 'Use templates to generate Rails resources',
        args: [
          FigArg(
            name: 'generator',
            filterStrategy: 'fuzzy',
            suggestions: [
              'model',
              'resource',
              'scaffold',
              'controller',
              'migration',
            ],
            generators: [
              _generateGenerator(),
            ],
          ),
          FigArg(name: 'args', isVariadic: true),
        ],
        options: [
          FigOption(
              name: '-h',
              description: "Print generator's options and usage",
              args: [FigArg()]),
          FigOption(
              name: '-p', description: 'Run but do not make any changes', args: [FigArg()]),
          FigOption(
              name: '-f', description: 'Overwrite files that already exist', args: [FigArg()]),
          FigOption(
              name: '-s', description: 'Skip files that already exist', args: [FigArg()]),
          FigOption(
              name: '-q', description: 'Suppress status output', args: [FigArg()]),
        ],
      ),
      FigSubcommand(
        name: 'routes',
        description: 'List all of the routes defined in your application',
        options: [
          FigOption(
            name: '-c',
            description:
                'Filter by a specific controller, e.g. PostsController or Admin::PostsController',
            args: [FigArg()],
          ),
          FigOption(
              name: '-g', description: 'Grep routes by a specific pattern', args: [FigArg()]),
          FigOption(
              name: '-E',
              description: 'Print routes expanded vertically with parts explained',
              args: [FigArg()]),
        ],
      ),
      FigSubcommand(
        name: 'test',
        description: 'Run your test suite',
        args: [
          FigArg(
            name: 'files or directories',
            template: {
              'name': 'filepaths',
              'extensions': ['rb'],
            },
            isOptional: true,
          ),
        ],
        generateSpec: _railsTestGenerateSpec,
      ),
      _newCommand(),
    ];

/// Root `generateSpec` from src/rails.ts: probes for a Rails app and returns
/// the full rails tree when one is found, otherwise just `new`.
Future<FigSpec?> _railsGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  tokens;
  final probe = await executeCommand(
    const ExecuteCommandInput(
      command: 'bash',
      args: ['-c', _gemfileProbeScript],
    ),
  );
  if (probe.status != 0) {
    return FigSpec(name: 'rails', subcommands: [_newCommand()]);
  }
  return FigSpec(
    name: 'rails',
    subcommands: _defaultCommands(),
    args: [
      FigArg(
        isOptional: true,
        generators: [
          FigGenerator(
            custom: _railsCommandsGenerator,
            cache: const FigCache(
              strategy: 'stale-while-revalidate',
              ttl: 1000 * 60 * 60 * 24 * 3,
              cacheByDirectory: true,
            ),
          ),
        ],
      ),
    ],
  );
}

/// Registers the dynamic handler referenced by the shipped rails JSON.
void registerRailsHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(railsGenerateSpecHandler, _railsGenerateSpec);
}
