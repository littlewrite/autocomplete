// Auto-generated from TypeScript source: tangram.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `tangram` CLI
final FigSpec tangramSpec = FigSpec(
  name: 'tangram',
  description: '',
  subcommands: [
    Subcommand(
      name: 'app',
      description: 'Run the app',
      options: [
        Option(
          name: ['-c', '--config'],
          description: 'The path to a config file',
          args: [
            Arg(
            name: 'CONFIG',
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'migrate',
      description: 'Migrate your app database',
      options: [
        Option(
          name: '--database-url',
          args: [
            Arg(
            name: 'DATABASE_URL'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'predict',
      description: 'Make predictions with a model',
      options: [
        Option(
          name: ['-f', '--file'],
          description: 'The path to read examples from, defaults to stdin',
          args: [
            Arg(
            name: 'FILE',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: ['-m', '--model'],
          description: 'The path to the model to make predictions with',
          args: [
            Arg(
            name: 'MODEL',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: ['-o', '--output'],
          description: 'The path to write the predictions to, defaults to stdout',
          args: [
            Arg(
            name: 'OUTPUT',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: ['-p', '--probabilities'],
          description: 'Output probabilities instead of class labels, only relevant for classifier models',
          args: [
            Arg(
            name: 'PROBABILITIE'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'train',
      description: 'Train a model',
      options: [
        Option(
          name: ['-c', '--config'],
          description: 'The path to a config file',
          args: [
            Arg(
            name: 'CONFIG',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-f', '--file'],
          description: 'The path to your .csv file',
          args: [
            Arg(
            name: 'FILE',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--file-test',
          description: 'The path to your .csv file used for testing',
          args: [
            Arg(
            name: 'FILE_TEST',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: '--file-train',
          description: 'The path to your .csv file used for training',
          args: [
            Arg(
            name: 'FILE_TRAIN',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: ['-o', '--output'],
          description: 'The path to write the .tangram file to',
          args: [
            Arg(
            name: 'OUTPUT',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: ['-t', '--target'],
          description: 'The name of the column to predict',
          args: [
            Arg(
            name: 'TARGE'
          )
          ]
        )
      ]
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Print help information'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Print version information'
    )
  ]
);
