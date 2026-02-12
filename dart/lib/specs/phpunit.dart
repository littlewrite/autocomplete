// Auto-generated from TypeScript source: phpunit.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `phpunit` CLI
final FigSpec phpunitSpec = FigSpec(
  name: 'phpunit',
  description: 'The PHPUnit is a command-line test runner that can be invoked through the phpunit command',
  options: [
    Option(
      name: '--coverage-clover',
      description: 'Generate code coverage report in Clover XML format,',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--coverage-crap4j',
      description: 'Generate code coverage report in Crap4J XML format',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--coverage-html',
      description: 'Generate code coverage report in HTML format',
      args: [
        Arg(
        name: 'dir',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--coverage-php',
      description: 'Export PHP_CodeCoverage object to file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--coverage-text',
      description: 'Generate code coverage report in text format [default: standard output]',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--coverage-xml',
      description: 'Generate code coverage report in PHPUnit XML format',
      args: [
        Arg(
        name: 'dir',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--coverage-cache',
      description: 'Cache static analysis results',
      args: [
        Arg(
        name: 'dir',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--warm-coverage-cache',
      description: 'Warm static analysis cache'
    ),
    Option(
      name: '--coverage-filter',
      description: 'Include <dir> in code coverage analysis',
      args: [
        Arg(
        name: 'dir',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--path-coverage',
      description: 'Perform path coverage analysis'
    ),
    Option(
      name: '--disable-coverage-ignore',
      description: 'Disable annotations for ignoring code coverage'
    ),
    Option(
      name: '--no-coverage',
      description: 'Ignore code coverage configuration'
    ),
    Option(
      name: '--dont-report-useless-tests',
      description: 'Do not report tests that do not test anything'
    ),
    Option(
      name: '--strict-coverage',
      description: 'Be strict about @covers annotation usage'
    ),
    Option(
      name: '--strict-global-state',
      description: 'Be strict about changes to global state'
    ),
    Option(
      name: '--disallow-test-output',
      description: 'Be strict about output during tests'
    ),
    Option(
      name: '--disallow-resource-usage',
      description: 'Be strict about resource usage during small tests'
    ),
    Option(
      name: '--enforce-time-limit',
      description: 'Enforce time limit based on test size'
    ),
    Option(
      name: '--default-time-limit',
      description: 'Timeout in seconds for tests without @small, @medium or @large',
      args: [
        Arg(
        name: 'seconds'
      )
      ]
    ),
    Option(
      name: '--disallow-todo-tests',
      description: 'Disallow @todo-annotated tests'
    ),
    Option(
      name: '--log-junit',
      description: 'Log test execution in JUnit XML format to file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--log-teamcity',
      description: 'Log test execution in TeamCity format to file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--testdox-html',
      description: 'Write agile documentation in HTML format to file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--testdox-text',
      description: 'Write agile documentation in Text format to file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--testdox-xml',
      description: 'Write agile documentation in HTML format to file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--reverse-list',
      description: 'Print defects in reverse order'
    ),
    Option(
      name: '--no-logging',
      description: 'Ignore logging configuration'
    ),
    Option(
      name: '--prepend',
      description: 'A PHP script that is included as early as possible',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--bootstrap',
      description: 'A PHP script that is included before the tests run',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-c', '--configuration'],
      description: 'Read configuration from XML file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--no-configuration',
      description: 'Ignore default configuration file (phpunit.xml)'
    ),
    Option(
      name: '--extensions',
      description: 'A comma separated list of PHPUnit extensions to load',
      args: [
        Arg(
        name: 'extensions'
      )
      ]
    ),
    Option(
      name: '--no-extensions',
      description: 'Do not load PHPUnit extensions'
    ),
    Option(
      name: '--include-path',
      description: 'Prepend PHP\'s include_path with given path(s)',
      args: [
        Arg(
        name: 'path(s)'
      )
      ]
    ),
    Option(
      name: '-d',
      description: 'Sets a php.ini value',
      args: [
        Arg(
        name: 'key[=value]'
      )
      ]
    ),
    Option(
      name: '--cache-result-file',
      description: 'Specify result cache path and filename',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--generate-configuration',
      description: 'Generate configuration file with suggested settings'
    ),
    Option(
      name: '--migrate-configuration',
      description: 'Migrate configuration file to current format'
    )
  ]
);
