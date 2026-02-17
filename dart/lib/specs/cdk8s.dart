// Auto-generated from TypeScript source: cdk8s.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cdk8s` CLI
final FigSpec cdk8sSpec = FigSpec(
  name: 'cdk8s',
  description: 'CDK for K8s',
  subcommands: [

    Subcommand(
      name: 'init',
      description: 'Create a new, empty CDK8S project',
      args: [
        Arg(
        name: 'type',
        description: 'Select language you are using',
        suggestions: [

          FigSuggestion(
            name: 'go-app'
          ),
          FigSuggestion(
            name: 'java-app'
          ),
          FigSuggestion(
            name: 'python-app'
          ),
          FigSuggestion(
            name: 'typescript-app'
          )
        ]
      )
      ]
    ),
    Subcommand(
      name: 'import',
      description: 'Import a CRD schema to generate generate resources',
      args: [
        Arg(
        name: 'spec',
        description: 'Path to the CRD schema',
        template: 'filepaths'
      )
      ],
      options: [

        Option(
          name: ['--language', '-l'],
          description: 'Output programming language',
          args: [
            Arg(
            name: 'language',
            suggestions: [

              FigSuggestion(
                name: 'typescript'
              ),
              FigSuggestion(
                name: 'python'
              ),
              FigSuggestion(
                name: 'java'
              ),
              FigSuggestion(
                name: 'go'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--class-prefix',
          description: 'A prefix to add to all generated class names',
          exclusiveOn: ['--no-class-prefix']
        ),
        Option(
          name: '--no-class-prefix',
          description: 'Does not add a prefix to generated class names',
          exclusiveOn: ['--class-prefix']
        ),
        Option(
          name: '--exclude',
          description: 'Do not import types that match these regular expressions',
          args: [
            Arg(
            name: 'regexp'
          )
          ]
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Output directory',
          args: [
            Arg(
            template: 'folders'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'synth',
      description: 'Synthesizes Kubernetes manifests for all charts in your app',
      options: [

        Option(
          name: ['--app', '-a'],
          description: 'Command to use in order to execute cdk8s app'
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Output directory',
          args: [
            Arg(
            template: 'folders'
          )
          ]
        ),
        Option(
          name: ['--stdout', '-s'],
          description: 'Write synthesized manifests to STDOUT instead of the output directory'
        ),
        Option(
          name: '--plugins-dir',
          description: 'Directory to store cdk8s plugins'
        ),
        Option(
          name: '--validate',
          description: 'Apply validation plugins on the resulting manifests',
          exclusiveOn: ['--no-validate']
        ),
        Option(
          name: '--no-validate',
          description: 'Disable validation',
          exclusiveOn: ['--validate']
        ),
        Option(
          name: '--validation-reports-output-file',
          description: 'File to write a JSON representation of the validation reports to',
          args: [
            Arg(
            template: 'filepaths'
          )
          ]
        )
      ]
    )
  ],
  options: [

    Option(
      name: '--version',
      description: 'The current version'
    ),
    Option(
      name: '--help',
      description: 'Show help'
    ),
    Option(
      name: '--check-upgrade',
      description: 'Check for cdk8s-cli upgrade'
    )
  ]
);
