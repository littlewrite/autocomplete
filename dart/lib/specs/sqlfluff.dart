// Auto-generated from TypeScript source: sqlfluff.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sqlfluff` CLI
final FigSpec sqlfluffSpec = FigSpec(
  name: 'sqlfluff',
  description: 'A dialect-flexible and configurable SQL linter',
  options: [

    Option(
      name: '--version',
      description: 'Show the version and exit',
      isPersistent: true
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Show help for sqlfluff',
      isPersistent: true
    )
  ],
  subcommands: [

    Subcommand(
      name: 'lint',
      description: 'Lint SQL files via passing a list of files or using stdin',
      args: [
        Arg(
        template: 'filepaths',
        isOptional: true,
        isVariadic: true
      )
      ],
      options: [

        Option(
          name: ['--nocolor', '-n'],
          description: 'No color - output will be without ANSI color codes'
        ),
        Option(
          name: ['--ignore', '-i'],
          description: 'Ignore particular families of errors so that they don’t cause a failed run. -–ignore behaves somewhat like noqa comments, except it applies globally',
          args: [
            Arg(
            name: 'erro'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-v'],
          description: 'Verbosity, how detailed should the output be. This is stackable, so -vv is more verbose than -v. For the most verbose option try -vvvv or -vvvvv',
          isRepeatable: 5
        ),
        Option(
          name: ['--exclude-rules', '-e'],
          description: 'Exclude specific rules. This could either be the allowlist, or the general set if there is no specific allowlist',
          args: [
            Arg(
            name: 'exclude_rules'
          )
          ]
        ),
        Option(
          name: ['--rules', '-r'],
          description: 'Narrow the search to only specific rules',
          args: [
            Arg(
            name: 'rules'
          )
          ]
        ),
        Option(
          name: ['--templater', '-t'],
          description: 'The templater to use (default=jinja)',
          args: [
            Arg(
            name: 'templater',
            description: 'Name of templater to use, eg. raw',
            suggestions: [

              FigSuggestion(name: 'raw'),
              FigSuggestion(name: 'jinja'),
              FigSuggestion(name: 'python'),
              FigSuggestion(name: 'placeholders')
            ]
          )
          ]
        ),
        Option(
          name: ['--dialect', '-d'],
          description: 'The dialect of SQL to lint',
          args: [
            Arg(
            name: 'dialect',
            description: 'Name of dialect, eg. ANSI',
            suggestions: [

              FigSuggestion(name: 'ansi'),
              FigSuggestion(name: 'bigquery'),
              FigSuggestion(name: 'exasol'),
              FigSuggestion(name: 'hive'),
              FigSuggestion(name: 'mysql'),
              FigSuggestion(name: 'oracle'),
              FigSuggestion(name: 'postgres'),
              FigSuggestion(name: 'redshift'),
              FigSuggestion(name: 'snowflake'),
              FigSuggestion(name: 'spark3'),
              FigSuggestion(name: 'sqllite'),
              FigSuggestion(name: 'teradata'),
              FigSuggestion(name: 'tsql')
            ]
          )
          ]
        ),
        Option(
          name: ['--format', '-f'],
          description: 'What format to return the lint result in (default=human)',
          args: [
            Arg(
            name: 'format',
            suggestions: [

              FigSuggestion(name: 'human'),
              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'yaml'),
              FigSuggestion(name: 'github-annotation'),
              FigSuggestion(name: 'github-annotation-native')
            ]
          )
          ]
        ),
        Option(
          name: ['--processes', '-p'],
          description: 'The number of parallel processes to run. Positive numbers work as expected. Zero and negative numbers will work as number_of_cpus - number. e.g -1 means all cpus except one. 0 means all cpus',
          args: [
            Arg(
            name: 'processes'
          )
          ]
        ),
        Option(
          name: '--disable-noqa',
          description: 'Set this flag to ignore inline noqa comments'
        ),
        Option(
          name: '--bench',
          description: 'Set this flag to engage the benchmarking tool output'
        ),
        Option(
          name: '--logger',
          description: 'Choose to limit the logging to one of the loggers',
          args: [
            Arg(
            name: 'logger',
            description: 'Name of logger to limit to, eg. templater',
            suggestions: [

              FigSuggestion(name: 'templater'),
              FigSuggestion(name: 'lexer'),
              FigSuggestion(name: 'parser'),
              FigSuggestion(name: 'linter'),
              FigSuggestion(name: 'rules')
            ]
          )
          ]
        ),
        Option(
          name: '--encoding',
          description: 'Specify encoding to use when reading and writing files. Defaults to autodetect',
          args: [
            Arg(
            name: 'encoding'
          )
          ]
        ),
        Option(
          name: '--ignore-local-config',
          description: 'Ignore config files in default search path locations. This option allows the user to lint with the default config or can be used in conjunction with –config to only reference the custom config file'
        ),
        Option(
          name: '--config',
          description: 'Include additional config file. By default the config is generated from the standard configuration files described in the documentation. This argument allows you to specify an additional configuration file that overrides the standard configuration files. N.B. cfg format is required',
          args: [
            Arg(
            name: 'extra_config_path',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--write-output',
          description: 'Optionally provide a filename to write the results to, mostly used in tandem with –format. NB: Setting an output file re-enables normal stdout logging',
          args: [
            Arg(
            name: 'write_output',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--annotation-level',
          description: 'When format is set to github-annotation or github-annotation-native, default annotation level (default=notice). failure and error are equivalent',
          args: [
            Arg(
            name: 'annotation-level',
            description: 'Level of annotation, eg. notice',
            suggestions: [

              FigSuggestion(name: 'notice'),
              FigSuggestion(name: 'warning'),
              FigSuggestion(name: 'failure'),
              FigSuggestion(name: 'error')
            ]
          )
          ]
        ),
        Option(
          name: '--disregard-sqlfluffignores',
          description: 'Perform the operation regardless of .sqlfluffignore configurations'
        ),
        Option(
          name: '--disable-progress-bar',
          description: 'Disables progress bars'
        ),
        Option(
          name: '--nofail',
          description: 'If set, the exit code will always be zero, regardless of violations found. This is potentially useful during rollout'
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Show help for sqlfluff'
        )
      ]
    ),
    Subcommand(
      name: 'fix',
      description: 'Fix SQL files',
      args: [
        Arg(
        template: 'filepaths',
        isOptional: true,
        isVariadic: true
      )
      ],
      options: [

        Option(
          name: ['--nocolor', '-n'],
          description: 'No color - output will be without ANSI color codes'
        ),
        Option(
          name: ['--ignore', '-i'],
          description: 'Ignore particular families of errors so that they don’t cause a failed run. -–ignore behaves somewhat like noqa comments, except it applies globally',
          args: [
            Arg(
            name: 'errors'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-v'],
          description: 'Verbosity, how detailed should the output be. This is stackable, so -vv is more verbose than -v. For the most verbose option try -vvvv or -vvvvv',
          isRepeatable: 5
        ),
        Option(
          name: ['--exclude-rules', '-e'],
          description: 'Exclude specific rules. This could either be the allowlist, or the general set if there is no specific allowlist',
          args: [
            Arg(
            name: 'exclude_rules'
          )
          ]
        ),
        Option(
          name: ['--rules', '-r'],
          description: 'Narrow the search to only specific rules',
          args: [
            Arg(
            name: 'rules'
          )
          ]
        ),
        Option(
          name: ['--templater', '-t'],
          description: 'The templater to use (default=jinja)',
          args: [
            Arg(
            name: 'templater',
            description: 'Name of templater to use, eg. raw',
            suggestions: [

              FigSuggestion(name: 'raw'),
              FigSuggestion(name: 'jinja'),
              FigSuggestion(name: 'python'),
              FigSuggestion(name: 'placeholders')
            ]
          )
          ]
        ),
        Option(
          name: ['--dialect', '-d'],
          description: 'The dialect of SQL to lint',
          args: [
            Arg(
            name: 'dialect',
            description: 'Name of dialect, eg. ANSI',
            suggestions: [

              FigSuggestion(name: 'ansi'),
              FigSuggestion(name: 'bigquery'),
              FigSuggestion(name: 'exasol'),
              FigSuggestion(name: 'hive'),
              FigSuggestion(name: 'mysql'),
              FigSuggestion(name: 'oracle'),
              FigSuggestion(name: 'postgres'),
              FigSuggestion(name: 'redshift'),
              FigSuggestion(name: 'snowflake'),
              FigSuggestion(name: 'spark3'),
              FigSuggestion(name: 'sqllite'),
              FigSuggestion(name: 'teradata'),
              FigSuggestion(name: 'tsql')
            ]
          )
          ]
        ),
        Option(
          name: ['--format', '-f'],
          description: 'What format to return the lint result in (default=human)',
          args: [
            Arg(
            name: 'format',
            suggestions: [

              FigSuggestion(name: 'human'),
              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'yaml'),
              FigSuggestion(name: 'github-annotation'),
              FigSuggestion(name: 'github-annotation-native')
            ]
          )
          ]
        ),
        Option(
          name: ['--processes', '-p'],
          description: 'The number of parallel processes to run. Positive numbers work as expected. Zero and negative numbers will work as number_of_cpus - number. e.g -1 means all cpus except one. 0 means all cpus',
          args: [
            Arg(
            name: 'processes'
          )
          ]
        ),
        Option(
          name: ['--fixed-suffix', '-x'],
          description: 'An optional suffix to add to fixed files',
          args: [
            Arg(
            name: 'fixed_suffix'
          )
          ]
        ),
        Option(
          name: '--disable-noqa',
          description: 'Set this flag to ignore inline noqa comments'
        ),
        Option(
          name: '--bench',
          description: 'Set this flag to engage the benchmarking tool output'
        ),
        Option(
          name: '--logger',
          description: 'Choose to limit the logging to one of the loggers',
          args: [
            Arg(
            name: 'logger',
            description: 'Name of logger to limit to, eg. templater',
            suggestions: [

              FigSuggestion(name: 'templater'),
              FigSuggestion(name: 'lexer'),
              FigSuggestion(name: 'parser'),
              FigSuggestion(name: 'linter'),
              FigSuggestion(name: 'rules')
            ]
          )
          ]
        ),
        Option(
          name: '--encoding',
          description: 'Specify encoding to use when reading and writing files. Defaults to autodetect',
          args: [
            Arg(
            name: 'encoding'
          )
          ]
        ),
        Option(
          name: '--ignore-local-config',
          description: 'Ignore config files in default search path locations. This option allows the user to lint with the default config or can be used in conjunction with –config to only reference the custom config file'
        ),
        Option(
          name: '--config',
          description: 'Include additional config file. By default the config is generated from the standard configuration files described in the documentation. This argument allows you to specify an additional configuration file that overrides the standard configuration files. N.B. cfg format is required',
          args: [
            Arg(
            name: 'extra_config_path',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--write-output',
          description: 'Optionally provide a filename to write the results to, mostly used in tandem with –format. NB: Setting an output file re-enables normal stdout logging',
          args: [
            Arg(
            name: 'write_output',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--disable-progress-bar',
          description: 'Disables progress bars'
        ),
        Option(
          name: '--FIX-EVEN-UNPARSABLE',
          description: 'Enables fixing of files that have templating or parse errors'
        ),
        Option(
          name: '--show-lint-violations',
          description: 'Show lint violations'
        )
      ]
    ),
    Subcommand(
      name: 'parse',
      description: 'Parse SQL files and just spit out the result',
      args: [
        Arg(
        template: 'filepaths'
      )
      ],
      options: [

        Option(
          name: ['--nocolor', '-n'],
          description: 'No color - output will be without ANSI color codes'
        ),
        Option(
          name: ['--ignore', '-i'],
          description: 'Ignore particular families of errors so that they don’t cause a failed run. -–ignore behaves somewhat like noqa comments, except it applies globally',
          args: [
            Arg(
            name: 'errors'
          )
          ]
        ),
        Option(
          name: ['--verbose', '-v'],
          description: 'Verbosity, how detailed should the output be. This is stackable, so -vv is more verbose than -v. For the most verbose option try -vvvv or -vvvvv',
          isRepeatable: 5
        ),
        Option(
          name: ['--exclude-rules', '-e'],
          description: 'Exclude specific rules. This could either be the allowlist, or the general set if there is no specific allowlist',
          args: [
            Arg(
            name: 'exclude_rules'
          )
          ]
        ),
        Option(
          name: ['--rules', '-r'],
          description: 'Narrow the search to only specific rules',
          args: [
            Arg(
            name: 'rules'
          )
          ]
        ),
        Option(
          name: ['--templater', '-t'],
          description: 'The templater to use (default=jinja)',
          args: [
            Arg(
            name: 'templater',
            description: 'Name of templater to use, eg. raw',
            suggestions: [

              FigSuggestion(name: 'raw'),
              FigSuggestion(name: 'jinja'),
              FigSuggestion(name: 'python'),
              FigSuggestion(name: 'placeholders')
            ]
          )
          ]
        ),
        Option(
          name: ['--dialect', '-d'],
          description: 'The dialect of SQL to lint',
          args: [
            Arg(
            name: 'dialect',
            description: 'Name of dialect, eg. ANSI',
            suggestions: [

              FigSuggestion(name: 'ansi'),
              FigSuggestion(name: 'bigquery'),
              FigSuggestion(name: 'exasol'),
              FigSuggestion(name: 'hive'),
              FigSuggestion(name: 'mysql'),
              FigSuggestion(name: 'oracle'),
              FigSuggestion(name: 'postgres'),
              FigSuggestion(name: 'redshift'),
              FigSuggestion(name: 'snowflake'),
              FigSuggestion(name: 'spark3'),
              FigSuggestion(name: 'sqllite'),
              FigSuggestion(name: 'teradata'),
              FigSuggestion(name: 'tsql')
            ]
          )
          ]
        ),
        Option(
          name: ['--code-only', '-c'],
          description: 'Output only the code elements of the parse tree'
        ),
        Option(
          name: ['--include-meta', '-m'],
          description: 'Include meta segments (indents, dedents and placeholders) in the output. This only applies when outputting json or yaml'
        ),
        Option(
          name: ['--format', '-f'],
          description: 'What format to return the lint result in (default=human)',
          args: [
            Arg(
            name: 'format',
            suggestions: [

              FigSuggestion(name: 'human'),
              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'yaml'),
              FigSuggestion(name: 'github-annotation'),
              FigSuggestion(name: 'github-annotation-native')
            ]
          )
          ]
        ),
        Option(
          name: '--disable-noqa',
          description: 'Set this flag to ignore inline noqa comments'
        ),
        Option(
          name: '--bench',
          description: 'Set this flag to engage the benchmarking tool output'
        ),
        Option(
          name: '--recurse',
          description: 'The depth to recursively parse to (0 for unlimited)',
          args: [
            Arg(
            name: 'recurse'
          )
          ]
        ),
        Option(
          name: '--logger',
          description: 'Choose to limit the logging to one of the loggers',
          args: [
            Arg(
            name: 'logger',
            description: 'Name of logger to limit to, eg. templater',
            suggestions: [

              FigSuggestion(name: 'templater'),
              FigSuggestion(name: 'lexer'),
              FigSuggestion(name: 'parser'),
              FigSuggestion(name: 'linter'),
              FigSuggestion(name: 'rules')
            ]
          )
          ]
        ),
        Option(
          name: '--encoding',
          description: 'Specify encoding to use when reading and writing files. Defaults to autodetect',
          args: [
            Arg(
            name: 'encoding'
          )
          ]
        ),
        Option(
          name: '--ignore-local-config',
          description: 'Ignore config files in default search path locations. This option allows the user to lint with the default config or can be used in conjunction with –config to only reference the custom config file'
        ),
        Option(
          name: '--config',
          description: 'Include additional config file. By default the config is generated from the standard configuration files described in the documentation. This argument allows you to specify an additional configuration file that overrides the standard configuration files. N.B. cfg format is required',
          args: [
            Arg(
            name: 'extra_config_path',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--write-output',
          description: 'Optionally provide a filename to write the results to, mostly used in tandem with –format. NB: Setting an output file re-enables normal stdout logging',
          args: [
            Arg(
            name: 'write_output',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--profiler',
          description: 'Set this flag to engage the python profiler'
        ),
        Option(
          name: '--nofail',
          description: 'If set, the exit code will always be zero, regardless of violations found. This is potentially useful during rollout'
        )
      ]
    ),
    Subcommand(
      name: 'dialects',
      description: 'Show the current dialects available',
      options: [

        Option(
          name: ['--nocolor', '-n'],
          description: 'No color - output will be without ANSI color codes'
        ),
        Option(
          name: ['--verbose', '-v'],
          description: 'Verbosity, how detailed should the output be. This is stackable, so -vv is more verbose than -v. For the most verbose option try -vvvv or -vvvvv',
          isRepeatable: 5
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Show the version of sqlfluff',
      options: [

        Option(
          name: ['--nocolor', '-n'],
          description: 'No color - output will be without ANSI color codes'
        ),
        Option(
          name: ['--verbose', '-v'],
          description: 'Verbosity, how detailed should the output be. This is stackable, so -vv is more verbose than -v. For the most verbose option try -vvvv or -vvvvv',
          isRepeatable: 5
        )
      ]
    ),
    Subcommand(
      name: 'rules',
      description: 'Show the current rules in use',
      options: [

        Option(
          name: ['--nocolor', '-n'],
          description: 'No color - output will be without ANSI color codes'
        ),
        Option(
          name: ['--verbose', '-v'],
          description: 'Verbosity, how detailed should the output be. This is stackable, so -vv is more verbose than -v. For the most verbose option try -vvvv or -vvvvv',
          isRepeatable: 5
        )
      ]
    )
  ]
);
