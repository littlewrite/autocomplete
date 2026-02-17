// Auto-generated from TypeScript source: elm-review.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `elm-review` CLI
final FigSpec elmReviewSpec = FigSpec(
  name: 'elm-review',
  description: '',
  subcommands: [

    Subcommand(
      name: 'init',
      description: 'Initialize Elm Review in this directory',
      options: [

        Option(
          name: ['--help', '-h'],
          description: 'Show help for elm-review init'
        ),
        Option(
          name: '--config',
          description: 'Create the configuration files in the specified directory instead of in the review/ directory',
          args: [
            Arg(
            name: '<path-to-review-directory>',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--template',
          description: 'Copy the review configuration from a GitHub repository, at the root or in a folder',
          args: [
            Arg(
            name: '<author>/<repo>[/path-to-the-config-folder][#branch-or-commit]'
          )
          ]
        ),
        Option(
          name: '--compiler',
          description: 'Specify the path to the elm compiler',
          args: [
            Arg(
            name: '<path-to-elm>',
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'suppress',
      description: 'Generate suppression files for rules that report many errors',
      options: [

        Option(
          name: ['--help', '-h'],
          description: 'Show help for elm-review suppress'
        ),
        Option(
          name: '--check-after-tests',
          description: 'Checks whether there are uncommitted suppression files'
        ),
        Option(
          name: '--unsuppress',
          description: 'Include suppressed errors in the error report for all rules'
        ),
        Option(
          name: '--unsuppress-rules',
          description: 'Include suppressed errors in the error report for all rules',
          args: [
            Arg(
            name: '<rule1,rule2,...>',
            isVariadic: true
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'new-package',
      description: 'Creates an new project aimed to contain rules and to be published later',
      options: [

        Option(
          name: ['--help', '-h'],
          description: 'Show help for elm-review new-package'
        ),
        Option(
          name: '--compiler',
          description: 'Specify the path to the elm compiler',
          args: [
            Arg(
            name: '<path-to-elm>',
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'new-rule',
      description: 'Adds a new rule to your review configuration or review package',
      options: [

        Option(
          name: ['--help', '-h'],
          description: 'Show help for elm-review new-package'
        )
      ],
      args: [
        Arg(
        name: 'rule name',
        description: 'Add a rule file in src/ and a corresponding test file in tests/. Should be formatted just like an Elm module name, such as NoDoingThis or No.Doing.This'
      )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for elm-review'
    ),
    Option(
      name: '--unsuppress',
      description: 'Include suppressed errors in the error report for all rules'
    ),
    Option(
      name: '--rules',
      description: 'Run with a subsection of the rules in the configuration. Specify them by their name, and separate them by commas',
      args: [
        Arg(
        name: '<rule1,rule2,...>',
        description: 'Run with a subsection of the rules in the configuration',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--watch',
      description: 'Re-run elm-review automatically when your project or configuration changes'
    ),
    Option(
      name: '--watch-code',
      description: 'Re-run elm-review automatically when your project changes'
    ),
    Option(
      name: '--elmjson',
      description: 'Specify the path to the elm.json file of the project',
      args: [
        Arg(
        name: '<path-to-elm.json>',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--config',
      description: 'Use the review configuration in the specified directory',
      args: [
        Arg(
        name: '<path-to-review-directory>',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--template',
      description: 'Use the review configuration from a GitHub repository',
      args: [
        Arg(
        name: '<author>/<repo>[/path-to-the-config-folder][#branch-or-commit]'
      )
      ]
    ),
    Option(
      name: '--compiler',
      description: 'Specify the path to the elm compiler',
      args: [
        Arg(
        name: '<path-to-elm>',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Print the version of the elm-review CLI'
    ),
    Option(
      name: '--debug',
      description: 'Add helpful information to debug your configuration or rules'
    ),
    Option(
      name: '--report',
      description: 'Error reports will be in JSON format',
      args: [
        Arg(
        name: 'json or ndjson'
      )
      ]
    ),
    Option(
      name: '--no-details',
      description: 'Hide the details from error reports for a more compact view'
    ),
    Option(
      name: '--ignore-dirs',
      description: 'Ignore the reports of all rules for the specified directories',
      args: [
        Arg(
        name: '<dir1,dir2,...>',
        template: 'folders',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--ignore-files',
      description: 'Ignore the reports of all rules for the specified files',
      args: [
        Arg(
        name: '<file1,file2,...>',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--fix',
      description: 'Elm Review will present fixes for the errors that offer an automatic fix, which you can then accept or refuse one by one'
    ),
    Option(
      name: '--fix-all',
      description: 'Elm Review will present a single fix containing the application of all available automatic fixes, which you can then accept or refuse'
    ),
    Option(
      name: '--elm-format-path',
      description: 'Specify the path to elm-format',
      args: [
        Arg(
        name: '<path-to-elm-format>',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--fix-limit',
      description: 'Limit the number of fixes applied in a single batch to N',
      args: [
        Arg(
        name: 'N',
        description: 'The number of fixes to apply before prompting the user'
      )
      ]
    ),
    Option(
      name: '--extract',
      description: 'Enable extracting data from the project for the rules that have a data extractor. Requires running with --report=json. Learn more by reading the section about "Extracting information" at https://bit.ly/3UmNr0V'
    ),
    Option(
      name: '--benchmark-info',
      description: 'Print out how much time it took for rules and phases of the process to run. This is meant for benchmarking purposes'
    ),
    Option(
      name: '--no-color',
      description: 'Disable colors in the output'
    )
  ],
  args: [
    Arg(
    name: 'files or directories to review',
    isVariadic: true,
    template: ['filepaths', 'folders']
  )
  ]
);
