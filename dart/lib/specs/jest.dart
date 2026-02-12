// Auto-generated from TypeScript source: jest.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `jest` CLI
final FigSpec jestSpec = FigSpec(
  name: 'jest',
  description: 'A delightful JavaScript Testing Framework with a focus on simplicity',
  args: [
    Arg(
  )
  ],
  options: [
    Option(
      name: ['--bail', '-b'],
      description: 'Exit the test suite immediately upon n number of failing test suite. Defaults to 1',
      args: [
        Arg(
        name: 'n'
      )
      ]
    ),
    Option(
      name: '--cache',
      description: 'Whether to use the cache'
    ),
    Option(
      name: '--no-cache',
      description: 'Whether to use the cache'
    ),
    Option(
      name: '--changedFilesWithAncestor',
      description: 'Runs tests related to the current changes and the changes made in the last commit'
    ),
    Option(
      name: '--changedSince',
      description: 'Runs tests related to the changes since the provided branch or commit hash',
      args: [
        Arg(
        name: 'since'
      )
      ]
    ),
    Option(
      name: '--ci',
      description: 'Instead of the regular behavior of storing a new snapshot automatically, will fail the test and require Jest to be run with --updateSnapshot'
    ),
    Option(
      name: '--clearCache',
      description: 'Deletes the Jest cache directory and then exits without running tests',
      args: [
        Arg(
        name: 'cacheDirectory'
      )
      ]
    ),
    Option(
      name: '--collectCoverageFrom',
      description: 'A glob pattern relative to rootDir matching the files that coverage info needs to be collected from',
      args: [
        Arg(
        name: 'glob'
      )
      ]
    ),
    Option(
      name: '--colors',
      description: 'Forces test results output highlighting even if stdout is not a TTY'
    ),
    Option(
      name: ['--config', '-c'],
      description: 'The path to a Jest config file specifying how to find and execute tests',
      args: [
        Arg(
        name: 'path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--coverage',
      description: 'Enable or disable coverage, disabled by default',
      args: [
        Arg(
        name: 'true|false',
        suggestions: [
          FigSuggestion(
            name: 'true'
          ),
          FigSuggestion(
            name: 'false'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--coverageProvider',
      description: 'Indicates which provider should be used to instrument code for coverage',
      args: [
        Arg(
        name: 'babel|v8',
        suggestions: [
          FigSuggestion(
            name: 'babel'
          ),
          FigSuggestion(
            name: 'v8'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--debug',
      description: 'Print debugging info about your Jest config'
    ),
    Option(
      name: '--detectOpenHandles',
      description: 'Attempt to collect and print open handles preventing Jest from exiting cleanly'
    ),
    Option(
      name: '--env',
      description: 'The test environment used for all tests',
      args: [
        Arg(
        name: 'jsdom|node|path/to/env.js',
        template: 'filepaths',
        suggestions: [
          FigSuggestion(
            name: 'jsdom'
          ),
          FigSuggestion(
            name: 'node'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--errorOnDeprecated',
      description: 'Make calling deprecated APIs throw helpful error messages'
    ),
    Option(
      name: ['--expand', '-e'],
      description: 'Use this flag to show full diffs and errors instead of a patch'
    ),
    Option(
      name: '--findRelatedTests',
      description: 'Find and run the tests that cover a space separated list of source files that were passed in as arguments',
      args: [
        Arg(
        name: '<path1> ... <pathN>'
      )
      ]
    ),
    Option(
      name: '--forceExit',
      description: 'Force Jest to exit after all tests have completed running'
    ),
    Option(
      name: '--help',
      description: 'Show the help information'
    ),
    Option(
      name: '--init',
      description: 'Generate a basic configuration file'
    ),
    Option(
      name: '--injectGlobals',
      description: 'Insert Jest\'s globals (expect, test, describe, beforeEach etc.) into the global environment'
    ),
    Option(
      name: '--json',
      description: 'Prints the test results in JSON'
    ),
    Option(
      name: '--outputFile',
      description: 'Write test results to a file when the --json option is also specified',
      args: [
        Arg(
        name: 'filename'
      )
      ]
    ),
    Option(
      name: '--lastCommit',
      description: 'Run all tests affected by file changes in the last commit made'
    ),
    Option(
      name: '--listTests',
      description: 'Lists all tests as JSON that Jest will run given the arguments, and exits'
    ),
    Option(
      name: '--logHeapUsage',
      description: 'Logs the heap usage after every test'
    ),
    Option(
      name: '--maxConcurrency',
      description: 'Prevents Jest from executing more than the specified amount of tests at the same time',
      args: [
        Arg(
        name: 'num'
      )
      ]
    ),
    Option(
      name: ['--maxWorkers', '-w'],
      description: 'Specifies the maximum number of workers the worker-pool will spawn for running tests',
      args: [
        Arg(
        name: '<num>|<string>'
      )
      ]
    ),
    Option(
      name: '--noStackTrace',
      description: 'Disables stack trace in test results output'
    ),
    Option(
      name: '--notify',
      description: 'Activates notifications for test results'
    ),
    Option(
      name: ['--onlyChanged', '-o'],
      description: 'Attempts to identify which tests to run based on which files have changed in the current repository'
    ),
    Option(
      name: '--passWithNoTests',
      description: 'Allows the test suite to pass when no files are found'
    ),
    Option(
      name: '--projects',
      description: 'Run tests from one or more projects, found in the specified paths; also takes path globs',
      args: [
        Arg(
        name: '<path1> ... <pathN>',
        isVariadic: true,
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--reporters',
      description: 'Run tests with specified reporters',
      args: [
        Arg(
        name: 'reporter'
      )
      ]
    ),
    Option(
      name: '--roots',
      description: 'A list of paths to directories that Jest should use to search for files in',
      args: [
        Arg(
        name: '<path1> ... <pathN>',
        isVariadic: true,
        template: 'folders'
      )
      ]
    ),
    Option(
      name: ['--runInBand', '-i'],
      description: 'Run all tests serially in the current process, rather than creating a worker pool of child processes that run tests'
    ),
    Option(
      name: '--selectProjects',
      description: 'Run only the tests of the specified projects',
      args: [
        Arg(
        name: '<project1> ... <projectN>'
      )
      ]
    ),
    Option(
      name: '--runTestsByPath',
      description: 'Run only the tests that were specified with their exact paths'
    ),
    Option(
      name: '--setupTestFrameworkScriptFile',
      description: 'The path to a module that runs some code to configure or set up the testing framework before each test',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--showConfig',
      description: 'Print your Jest config and then exits'
    ),
    Option(
      name: '--silent',
      description: 'Prevent tests from printing messages through the console'
    ),
    Option(
      name: ['--testNamePattern', '-t'],
      description: 'Run only tests with a name that matches the regex',
      args: [
        Arg(
        name: 'regex'
      )
      ]
    ),
    Option(
      name: '--testLocationInResults',
      description: 'Adds a location field to test results'
    ),
    Option(
      name: '--testPathPattern',
      description: 'A regexp pattern string that is matched against all tests paths before executing the test',
      args: [
        Arg(
        name: 'regex'
      )
      ]
    ),
    Option(
      name: '--testPathIgnorePatterns',
      description: 'An array of regexp pattern strings that are tested against all tests paths before executing the test',
      args: [
        Arg(
        name: '[array]'
      )
      ]
    ),
    Option(
      name: '--testRunner',
      description: 'Lets you specify a custom test runner',
      args: [
        Arg(
        name: 'path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--testSequencer',
      description: 'Lets you specify a custom test sequencer',
      args: [
        Arg(
        name: 'path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--testTimeout',
      description: 'Default timeout of a test in milliseconds',
      args: [
        Arg(
        name: 'timeout in ms'
      )
      ]
    ),
    Option(
      name: ['--updateSnapshot', '-u'],
      description: 'Use this flag to re-record every snapshot that fails during this test run'
    ),
    Option(
      name: '--useStderr',
      description: 'Divert all output to stderr'
    ),
    Option(
      name: '--verbose',
      description: 'Display individual test results with the test suite hierarchy'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Print the version and exit'
    ),
    Option(
      name: '--watch',
      description: 'Watch files for changes and rerun tests related to changed files'
    ),
    Option(
      name: '--watchAll',
      description: 'Watch files for changes and rerun all tests when something changes'
    ),
    Option(
      name: '--watchman',
      description: 'Whether to use watchman for file crawling'
    ),
    Option(
      name: '--no-watchman',
      description: 'Whether to use watchman for file crawling'
    )
  ]
);
