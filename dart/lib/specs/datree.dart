// Auto-generated from TypeScript source: datree.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> testOptions = [

  Option(
    name: ['--help', '-h'],
    description: 'Help for \'test\''
  ),
  Option(
    name: '--ignore-missing-schemas',
    description: 'Ignore missing schemas when executing schema validation step'
  ),
  Option(
    name: '--no-record',
    description: 'Do not send policy checks metadata to the backend'
  ),
  Option(
    name: '--only-k8s-files',
    description: 'Evaluate only valid yaml files with the properties \'apiVersion\' and \'kind\'. Ignore everything else'
  ),
  Option(
    name: ['-o', '--output'],
    description: 'Define output format (simple, yaml, json, xml, JUnit)',
    args: [
      Arg(
      name: 'output',
      description: 'Output format',
      suggestions: [

        FigSuggestion(
          name: 'simple',
          description: 'Simple output without colors'
        ),
        FigSuggestion(
          name: 'yaml',
          description: 'YAML output'
        ),
        FigSuggestion(
          name: 'json',
          description: 'JSON output'
        ),
        FigSuggestion(
          name: 'xml',
          description: 'XML output'
        ),
        FigSuggestion(
          name: 'junit',
          description: 'JUnit output'
        )
      ]
    )
    ]
  ),
  Option(
    name: ['-p', '--policy'],
    description: 'Policy name to run against',
    args: [
      Arg(
      name: 'policy',
      description: 'String'
    )
    ]
  ),
  Option(
    name: '--policy-config',
    description: 'Path for local policies configuration file',
    args: [
      Arg(
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: '--schema-location',
    description: 'Override schemas location search path (can be specified multiple times)',
    args: [
      Arg(
      name: 'stringArray',
      description: 'String array'
    )
    ]
  ),
  Option(
    name: ['-s', '--schema-version'],
    description: 'Set kubernetes version to validate against. Defaults to 1.19.0'
  ),
  Option(
    name: '--verbose',
    description: 'Display \'How to Fix\' link'
  )
];

/// Completion spec for `datree` CLI
final FigSpec datreeSpec = FigSpec(
  name: 'datree',
  description: 'Datree can be used on the command line to run policies against Kubernetes manifests YAML files or Helm charts',
  subcommands: [

    Subcommand(
      name: 'completion',
      description: 'Generate completion script for bash,zsh,fish,powershell'
    ),
    Subcommand(
      name: 'config',
      description: 'Internal configuration management for datree config file',
      subcommands: [

        Subcommand(
          name: 'get',
          description: 'Get configuration value',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Get value for specific key from datree config.yaml file. Defaults to \$HOME/.datree/config.yaml'
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Set configuration value',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Apply value for specific key in datree config.yaml file. Defaults to \$HOME/.datree/config.yaml'
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Help for config'
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      args: [
        Arg(
        template: 'help'
      )
      ]
    ),
    Subcommand(
      name: 'kustomize',
      description: 'Generate kustomization files from manifests',
      subcommands: [

        Subcommand(
          name: 'test',
          description: 'Test kustomization files',
          options: testOptions
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Help for kustomize'
        )
      ]
    ),
    Subcommand(
      name: 'publish',
      description: 'Publish policies configuration for given <fileName>. Input should be the path to the Policy-as-Code yaml configuration file. ## Note You need to first enable Policy-as-Code (PaC) on the settings page in the dashboard',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Help for publish'
        )
      ],
      args: [
        Arg(
        name: 'file path',
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Trigger a policy check, provide a Kubernetes configuration file path or a glob pattern',
      args: [
        Arg(
        name: 'file path',
        template: 'filepaths'
      )
      ],
      options: testOptions
    ),
    Subcommand(
      name: 'version',
      description: 'Print the version number'
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for datree'
    )
  ]
);
