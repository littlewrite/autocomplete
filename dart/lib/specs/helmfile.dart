// Auto-generated from TypeScript source: helmfile.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `helmfile` CLI
final FigSpec helmfileSpec = FigSpec(
  name: 'helmfile',
  description: 'Deploy helm charts',
  subcommands: [

    Subcommand(
      name: 'apply',
      description: 'Apply all resources from state file only when there are changes'
    ),
    Subcommand(
      name: 'build',
      description: 'Build all resources from state file'
    ),
    Subcommand(
      name: 'cache',
      description: 'Cache management'
    ),
    Subcommand(
      name: 'charts',
      description: 'DEPRECATED: sync releases from state file (helm upgrade --install)'
    ),
    Subcommand(
      name: 'completion',
      description: 'Generate the autocompletion script for the specified shell'
    ),
    Subcommand(
      name: 'delete',
      description: 'The helmfile delete sub-command deletes all the releases defined in the manifests'
    ),
    Subcommand(
      name: 'deps',
      description: 'Update charts based on their requirements, it locks your helmfile state and local charts dependencies'
    ),
    Subcommand(
      name: 'destroy',
      description: 'Destroys and then purges releases'
    ),
    Subcommand(
      name: 'diff',
      description: 'Diff releases defined in state file, it executes the helm-diff plugin across all of the charts/releases defined in the manifest'
    ),
    Subcommand(
      name: 'fetch',
      description: 'Fetch charts from state file, it downloads or copies local charts to a local directory for debug purpose'
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command'
    ),
    Subcommand(
      name: 'init',
      description: 'Initialize the helmfile, includes version checking and installation of helm and plug-ins'
    ),
    Subcommand(
      name: 'lint',
      description: 'Lint charts from state file (helm lint)'
    ),
    Subcommand(
      name: 'list',
      description: 'List releases defined in state file'
    ),
    Subcommand(
      name: 'repos',
      description: 'Repos releases defined in state file'
    ),
    Subcommand(
      name: 'secrets',
      description: 'Causes the helm-secrets plugin to be executed to decrypt the file'
    ),
    Subcommand(
      name: 'status',
      description: 'Retrieve status of releases in state file'
    ),
    Subcommand(
      name: 'sync',
      description: 'Sync releases defined in state file'
    ),
    Subcommand(
      name: 'template',
      description: 'Template releases defined in state file'
    ),
    Subcommand(
      name: 'test',
      description: 'Test charts from state file (helm test)'
    ),
    Subcommand(
      name: 'version',
      description: 'Print the CLI version'
    ),
    Subcommand(
      name: ' write-values',
      description: 'Write values files for releases. Similar to `helmfile template`, write values files instead of manifests'
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Do not exit with an error code if the provided selector has no matching releases',
      isPersistent: true
    ),
    Option(
      name: '--allow-no-matching-release',
      description: 'Show help for helmfile',
      isPersistent: true
    ),
    Option(
      name: ['--chart', '-c'],
      description: 'Set chart. Uses the chart set in release by default, and is available in template as {{ .Chart }}',
      isPersistent: true,
      args: [
        Arg(
        name: 'string'
      )
      ]
    ),
    Option(
      name: '--color',
      description: 'Output with color',
      isPersistent: true
    ),
    Option(
      name: '--debug',
      description: 'Enable verbose output for Helm and set log-level to debug, this disables --quiet/-q effect',
      isPersistent: true
    ),
    Option(
      name: '--enable-live-output',
      description: 'Show live output from the Helm binary Stdout/Stderr into Helmfile own Stdout/Stderr. It only applies for the Helm CLI commands, Stdout/Stderr for Hooks are still displayed only when it\'s execution finishes',
      isPersistent: true
    ),
    Option(
      name: ['--environment', '-e'],
      description: 'Specify the environment name. defaults to default',
      isPersistent: true,
      args: [
        Arg(
        name: 'environmen'
      )
      ]
    ),
    Option(
      name: ['--file', '-f'],
      description: 'Load config from file or directory. defaults to helmfile.yaml or `helmfile.d`(means `helmfile.d/*.yaml`) in this preference',
      isPersistent: true,
      args: [
        Arg(
        name: 'file',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: ['--helm-binary', '-b'],
      description: 'Path to the helm binary (default "helm")',
      isPersistent: true,
      args: [
        Arg(
        name: 'binar'
      )
      ]
    ),
    Option(
      name: ['--interactive', '-i'],
      description: 'Request confirmation before attempting to modify clusters',
      isPersistent: true
    ),
    Option(
      name: '--kube-context',
      description: 'Set kubectl context. Uses current context by default',
      isPersistent: true,
      args: [
        Arg(
        name: 'kube-contex'
      )
      ]
    ),
    Option(
      name: '--log-level',
      description: 'Set log level, default info (default info)',
      isPersistent: true,
      args: [
        Arg(
        name: 'log-leve'
      )
      ]
    ),
    Option(
      name: ['--namespace', '-n'],
      description: 'Set namespace. Uses the namespace set in the context by default, and is available in templates as {{ .Namespace }}',
      isPersistent: true,
      args: [
        Arg(
        name: 'namespac'
      )
      ]
    ),
    Option(
      name: '--no-color',
      description: 'Output without color',
      isPersistent: true
    ),
    Option(
      name: ['--quiet', '-q'],
      description: 'Silence output. Equivalent to log-level warn',
      isPersistent: true
    ),
    Option(
      name: ['--selector', '-l'],
      description: 'Only run using the releases that match labels. Labels can take the form of foo=bar or foo!=bar',
      isPersistent: true,
      args: [
        Arg(
        name: ' selecto'
      )
      ]
    ),
    Option(
      name: '--state-values-file',
      description: 'Specify state values in a YAML file',
      isPersistent: true,
      args: [
        Arg(
        name: 'state-values-file',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: '--state-values-set',
      description: 'Set state values on the command line (can specify multiple or separate values with commas: key1=val1,key2=val2)',
      isPersistent: true,
      args: [
        Arg(
        name: 'state-values-=se'
      )
      ]
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Version for helmfile',
      isPersistent: true
    )
  ]
);
