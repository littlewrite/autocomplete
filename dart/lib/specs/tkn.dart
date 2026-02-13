// Auto-generated from TypeScript source: tkn.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `tkn` CLI
final FigSpec tknSpec = FigSpec(
  name: 'tkn',
  description: 'CLI for tekton pipelines',
  subcommands: [

    Subcommand(
      name: ['tkb', 'bundles', 'bundle'],
      description: 'Manage Tekton Bundles',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List and print a Tekton bundle\'s contents',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: '--cache-dir',
              description: 'A directory to cache Tekton bundles in',
              args: [
                Arg(
                name: 'cache-dir',
                defaultValue: '~/.tekton/bundle'
              )
              ]
            ),
            Option(
              name: '--no-cache',
              description: 'If set to true, pulls a Tekton bundle from the remote even its exact digest is available in the cache'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--remote-bearer',
              description: 'A Bearer token to authenticate against the repository',
              args: [
                Arg(
                name: 'remote-beare'
              )
              ]
            ),
            Option(
              name: '--remote-password',
              description: 'A password to pass to the registry for basic auth. Must be used with --remote-username',
              args: [
                Arg(
                name: 'remote-passwor'
              )
              ]
            ),
            Option(
              name: '--remote-skip-tls',
              description: 'If set to true, skips TLS check when connecting to the registry'
            ),
            Option(
              name: '--remote-username',
              description: 'A username to pass to the registry for basic auth. Must be used with --remote-password',
              args: [
                Arg(
                name: 'remote-usernam'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'push',
          description: 'Create or replace a Tekton bundle',
          options: [

            Option(
              name: ['--filenames', '-f'],
              description: 'List of fully-qualified file paths containing YAML or JSON defined Tekton objects to include in this bundle',
              isRepeatable: true,
              args: [
                Arg(
                name: 'filename'
              )
              ]
            ),
            Option(
              name: '--remote-bearer',
              description: 'A Bearer token to authenticate against the repository',
              args: [
                Arg(
                name: 'remote-beare'
              )
              ]
            ),
            Option(
              name: '--remote-password',
              description: 'A password to pass to the registry for basic auth. Must be used with --remote-username',
              args: [
                Arg(
                name: 'remote-passwor'
              )
              ]
            ),
            Option(
              name: '--remote-skip-tls',
              description: 'If set to true, skips TLS check when connecting to the registry'
            ),
            Option(
              name: '--remote-username',
              description: 'A username to pass to the registry for basic auth. Must be used with --remote-password',
              args: [
                Arg(
                name: 'remote-usernam'
              )
              ]
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['--context', '-c'],
          description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
          isPersistent: true,
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--kubeconfig', '-k'],
          description: 'Kubectl config file (default: \$HOME/.kube/config)',
          isPersistent: true,
          args: [
            Arg(
            name: 'kubeconfi'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace to use (default: from \$KUBECONFIG)',
          isPersistent: true,
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--no-color', '-C'],
          description: 'Disable coloring (default: false)',
          isPersistent: true
        ),
        Option(
          name: '--nocolour',
          description: 'Disable colouring (default: false)',
          isPersistent: true
        )
      ]
    ),
    Subcommand(
      name: ['chains', 'chain'],
      description: 'Manage Chains',
      subcommands: [

        Subcommand(
          name: 'payload',
          description: 'Print Tekton Chains\' payload for a specific taskrun',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: ['--skip-verify', '-S'],
              description: 'Skip verifying the payload\'signature'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'signature',
          description: 'Print Tekton Chains\' signature for a specific taskrun'
        )
      ],
      options: [

        Option(
          name: '--chains-namespace',
          description: 'Namespace in which chains is installed',
          isPersistent: true,
          args: [
            Arg(
            name: 'chains-namespace',
            defaultValue: 'tekton-chain'
          )
          ]
        ),
        Option(
          name: ['--context', '-c'],
          description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
          isPersistent: true,
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--kubeconfig', '-k'],
          description: 'Kubectl config file (default: \$HOME/.kube/config)',
          isPersistent: true,
          args: [
            Arg(
            name: 'kubeconfi'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace to use (default: from \$KUBECONFIG)',
          isPersistent: true,
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--no-color', '-C'],
          description: 'Disable coloring (default: false)',
          isPersistent: true
        ),
        Option(
          name: '--nocolour',
          description: 'Disable colouring (default: false)',
          isPersistent: true
        )
      ]
    ),
    Subcommand(
      name: ['ct', 'clustertasks', 'clustertask'],
      description: 'Manage ClusterTasks',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a ClusterTask from Task',
          options: [

            Option(
              name: '--from',
              description: 'Create a ClusterTask from Task in a particular namespace',
              args: [
                Arg(
                name: 'fro'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['rm', 'delete'],
          description: 'Delete ClusterTasks in a cluster',
          options: [

            Option(
              name: '--all',
              description: 'Delete all ClusterTasks (default: false)'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--force', '-f'],
              description: 'Whether to force deletion (default: false)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            ),
            Option(
              name: '--trs',
              description: 'Whether to delete ClusterTask(s) and related resources (TaskRuns) (default: false)'
            )
          ]
        ),
        Subcommand(
          name: ['desc', 'describe'],
          description: 'Describe a ClusterTask',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'Lists ClusterTasks',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: '--no-headers',
              description: 'Do not print column headers with output (default print column headers with output)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'logs',
          description: 'Show ClusterTask logs',
          options: [

            Option(
              name: ['--all', '-a'],
              description: 'Show all logs including init steps injected by tekton'
            ),
            Option(
              name: ['--follow', '-f'],
              description: 'Stream live logs'
            ),
            Option(
              name: ['--last', '-L'],
              description: 'Show logs for last TaskRun'
            ),
            Option(
              name: '--limit',
              description: 'Lists number of TaskRuns',
              args: [
                Arg(
                name: 'limit',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: ['--timestamps', '-t'],
              description: 'Show logs with timestamp'
            )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Start ClusterTasks',
          options: [

            Option(
              name: '--dry-run',
              description: 'Preview TaskRun without running it'
            ),
            Option(
              name: ['--inputresource', '-i'],
              description: 'Pass the input resource name and ref as name=ref',
              isRepeatable: true,
              args: [
                Arg(
                name: 'inputresourc'
              )
              ]
            ),
            Option(
              name: ['--labels', '-l'],
              description: 'Pass labels as label=value',
              isRepeatable: true,
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: ['--last', '-L'],
              description: 'Re-run the ClusterTask using last TaskRun values'
            ),
            Option(
              name: '--output',
              description: 'Format of TaskRun (yaml or json)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: ['--outputresource', '-o'],
              description: 'Pass the output resource name and ref as name=ref',
              isRepeatable: true,
              args: [
                Arg(
                name: 'outputresourc'
              )
              ]
            ),
            Option(
              name: ['--param', '-p'],
              description: 'Pass the param as key=value for string type, or key=value1,value2,... for array type',
              isRepeatable: true,
              args: [
                Arg(
                name: 'para'
              )
              ]
            ),
            Option(
              name: '--pod-template',
              description: 'Local or remote file containing a PodTemplate definition',
              args: [
                Arg(
                name: 'pod-templat'
              )
              ]
            ),
            Option(
              name: '--prefix-name',
              description: 'Specify a prefix for the TaskRun name (must be lowercase alphanumeric characters)',
              args: [
                Arg(
                name: 'prefix-nam'
              )
              ]
            ),
            Option(
              name: ['--serviceaccount', '-s'],
              description: 'Pass the serviceaccount name',
              args: [
                Arg(
                name: 'serviceaccoun'
              )
              ]
            ),
            Option(
              name: '--showlog',
              description: 'Show logs right after starting the ClusterTask'
            ),
            Option(
              name: '--skip-optional-workspace',
              description: 'Skips the prompt for optional workspaces'
            ),
            Option(
              name: '--timeout',
              description: 'Timeout for TaskRun',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--use-param-defaults',
              description: 'Use default parameter values without prompting for input'
            ),
            Option(
              name: '--use-taskrun',
              description: 'Specify a TaskRun name to use its values to re-run the TaskRun',
              args: [
                Arg(
                name: 'use-taskru'
              )
              ]
            ),
            Option(
              name: ['--workspace', '-w'],
              description: 'Pass one or more workspaces to map to the corresponding physical volumes',
              isRepeatable: true,
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['--context', '-c'],
          description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
          isPersistent: true,
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--kubeconfig', '-k'],
          description: 'Kubectl config file (default: \$HOME/.kube/config)',
          isPersistent: true,
          args: [
            Arg(
            name: 'kubeconfi'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace to use (default: from \$KUBECONFIG)',
          isPersistent: true,
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--no-color', '-C'],
          description: 'Disable coloring (default: false)',
          isPersistent: true
        ),
        Option(
          name: '--nocolour',
          description: 'Disable colouring (default: false)',
          isPersistent: true
        )
      ]
    ),
    Subcommand(
      name: ['ctb', 'clustertriggerbindings', 'clustertriggerbinding'],
      description: 'Manage ClusterTriggerBindings',
      subcommands: [

        Subcommand(
          name: ['rm', 'delete'],
          description: 'Delete ClusterTriggerBindings',
          options: [

            Option(
              name: '--all',
              description: 'Delete all ClusterTriggerBindings (default: false)'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--force', '-f'],
              description: 'Whether to force deletion (default: false)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['desc', 'describe'],
          description: 'Describes a ClusterTriggerBinding',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'Lists ClusterTriggerBindings in a namespace',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: '--no-headers',
              description: 'Do not print column headers with output (default print column headers with output)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['--context', '-c'],
          description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
          isPersistent: true,
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--kubeconfig', '-k'],
          description: 'Kubectl config file (default: \$HOME/.kube/config)',
          isPersistent: true,
          args: [
            Arg(
            name: 'kubeconfi'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace to use (default: from \$KUBECONFIG)',
          isPersistent: true,
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--no-color', '-C'],
          description: 'Disable coloring (default: false)',
          isPersistent: true
        ),
        Option(
          name: '--nocolour',
          description: 'Disable colouring (default: false)',
          isPersistent: true
        )
      ]
    ),
    Subcommand(
      name: 'completion',
      description: 'Prints shell completion scripts'
    ),
    Subcommand(
      name: ['el', 'eventlisteners', 'eventlistener'],
      description: 'Manage EventListeners',
      subcommands: [

        Subcommand(
          name: ['rm', 'delete'],
          description: 'Delete EventListeners in a namespace',
          options: [

            Option(
              name: '--all',
              description: 'Delete all EventListeners in a namespace (default: false)'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--force', '-f'],
              description: 'Whether to force deletion (default: false)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['desc', 'describe'],
          description: 'Describe EventListener in a namespace',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'Lists EventListeners in a namespace',
          options: [

            Option(
              name: ['--all-namespaces', '-A'],
              description: 'List EventListeners from all namespaces'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: '--no-headers',
              description: 'Do not print column headers with output (default print column headers with output)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'logs',
          description: 'Show EventListener logs',
          options: [

            Option(
              name: ['--tail', '-t'],
              description: 'Number of most recent log lines to show. Specify -1 for all logs from each pod',
              args: [
                Arg(
                name: 'tail',
                defaultValue: '1'
              )
              ]
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['--context', '-c'],
          description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
          isPersistent: true,
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--kubeconfig', '-k'],
          description: 'Kubectl config file (default: \$HOME/.kube/config)',
          isPersistent: true,
          args: [
            Arg(
            name: 'kubeconfi'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace to use (default: from \$KUBECONFIG)',
          isPersistent: true,
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--no-color', '-C'],
          description: 'Disable coloring (default: false)',
          isPersistent: true
        ),
        Option(
          name: '--nocolour',
          description: 'Disable colouring (default: false)',
          isPersistent: true
        )
      ]
    ),
    Subcommand(
      name: 'hub',
      description: 'Interact with tekton hub',
      subcommands: [

        Subcommand(
          name: 'check-upgrade',
          description: 'Check for upgrades of resources if present',
          subcommands: [

            Subcommand(
              name: 'task',
              description: 'Check updates for Task installed via Hub CLI'
            )
          ],
          options: [

            Option(
              name: ['--context', '-c'],
              description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
              isPersistent: true,
              args: [
                Arg(
                name: 'contex'
              )
              ]
            ),
            Option(
              name: ['--kubeconfig', '-k'],
              description: 'Kubectl config file (default: \$HOME/.kube/config)',
              isPersistent: true,
              args: [
                Arg(
                name: 'kubeconfi'
              )
              ]
            ),
            Option(
              name: ['--namespace', '-n'],
              description: 'Namespace to use (default: from \$KUBECONFIG)',
              isPersistent: true,
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'downgrade',
          description: 'Downgrade an installed resource',
          subcommands: [

            Subcommand(
              name: 'task',
              description: 'Downgrade an installed Task by its name to a lower version'
            )
          ],
          options: [

            Option(
              name: ['--context', '-c'],
              description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
              isPersistent: true,
              args: [
                Arg(
                name: 'contex'
              )
              ]
            ),
            Option(
              name: ['--kubeconfig', '-k'],
              description: 'Kubectl config file (default: \$HOME/.kube/config)',
              isPersistent: true,
              args: [
                Arg(
                name: 'kubeconfi'
              )
              ]
            ),
            Option(
              name: ['--namespace', '-n'],
              description: 'Namespace to use (default: from \$KUBECONFIG)',
              isPersistent: true,
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--to',
              description: 'Version of Resource',
              isPersistent: true,
              args: [
                Arg(
                name: 't'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Get resource manifest by its name, kind, catalog, and version',
          subcommands: [

            Subcommand(
              name: 'pipeline',
              description: 'Get Pipeline by name, catalog and version'
            ),
            Subcommand(
              name: 'task',
              description: 'Get Task by name, catalog and version',
              options: [

                Option(
                  name: '--as-clustertask',
                  description: 'Get the Task as ClusterTask'
                )
              ]
            )
          ],
          options: [

            Option(
              name: '--from',
              description: 'Name of Catalog to which resource belongs to',
              isPersistent: true,
              args: [
                Arg(
                name: 'fro'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Version of Resource',
              isPersistent: true,
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'info',
          description: 'Display info of resource by its name, kind, catalog, and version',
          subcommands: [

            Subcommand(
              name: 'task',
              description: 'Display info of Task by its name, catalog and version'
            )
          ],
          options: [

            Option(
              name: '--from',
              description: 'Name of Catalog to which resource belongs',
              isPersistent: true,
              args: [
                Arg(
                name: 'fro'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Version of Resource',
              isPersistent: true,
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'install',
          description: 'Install a resource from a catalog by its kind, name and version',
          subcommands: [

            Subcommand(
              name: 'task',
              description: 'Install Task from a catalog by its name and version'
            )
          ],
          options: [

            Option(
              name: ['--context', '-c'],
              description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
              isPersistent: true,
              args: [
                Arg(
                name: 'contex'
              )
              ]
            ),
            Option(
              name: '--from',
              description: 'Name of Catalog to which resource belongs',
              isPersistent: true,
              args: [
                Arg(
                name: 'from',
                defaultValue: 'tekto'
              )
              ]
            ),
            Option(
              name: ['--kubeconfig', '-k'],
              description: 'Kubectl config file (default: \$HOME/.kube/config)',
              isPersistent: true,
              args: [
                Arg(
                name: 'kubeconfi'
              )
              ]
            ),
            Option(
              name: ['--namespace', '-n'],
              description: 'Namespace to use (default: from \$KUBECONFIG)',
              isPersistent: true,
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Version of Resource',
              isPersistent: true,
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reinstall',
          description: 'Reinstall a resource by its kind and name',
          subcommands: [

            Subcommand(
              name: 'task',
              description: 'Reinstall a Task by its name'
            )
          ],
          options: [

            Option(
              name: ['--context', '-c'],
              description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
              isPersistent: true,
              args: [
                Arg(
                name: 'contex'
              )
              ]
            ),
            Option(
              name: '--from',
              description: 'Name of Catalog to which resource belongs',
              isPersistent: true,
              args: [
                Arg(
                name: 'from',
                defaultValue: 'tekto'
              )
              ]
            ),
            Option(
              name: ['--kubeconfig', '-k'],
              description: 'Kubectl config file (default: \$HOME/.kube/config)',
              isPersistent: true,
              args: [
                Arg(
                name: 'kubeconfi'
              )
              ]
            ),
            Option(
              name: ['--namespace', '-n'],
              description: 'Namespace to use (default: from \$KUBECONFIG)',
              isPersistent: true,
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Version of Resource',
              isPersistent: true,
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'search',
          description: 'Search resource by a combination of name, kind, categories, platforms, and tags',
          options: [

            Option(
              name: '--categories',
              description: 'Accepts a comma separated list of categories',
              isRepeatable: true,
              args: [
                Arg(
                name: 'categorie'
              )
              ]
            ),
            Option(
              name: '--kinds',
              description: 'Accepts a comma separated list of kinds',
              isRepeatable: true,
              args: [
                Arg(
                name: 'kind'
              )
              ]
            ),
            Option(
              name: ['--limit', '-l'],
              description: 'Max number of resources to fetch',
              args: [
                Arg(
                name: 'limit',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--match',
              description: 'Accept type of search. \'exact\' or \'contains\'',
              args: [
                Arg(
                name: 'match',
                defaultValue: 'contain'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Accepts output format: [table, json, wide]',
              args: [
                Arg(
                name: 'output',
                defaultValue: 'tabl'
              )
              ]
            ),
            Option(
              name: '--platforms',
              description: 'Accepts a comma separated list of platforms',
              isRepeatable: true,
              args: [
                Arg(
                name: 'platform'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Accepts a comma separated list of tags',
              isRepeatable: true,
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade an installed resource',
          subcommands: [

            Subcommand(
              name: 'task',
              description: 'Upgrade a Task by its name'
            )
          ],
          options: [

            Option(
              name: ['--context', '-c'],
              description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
              isPersistent: true,
              args: [
                Arg(
                name: 'contex'
              )
              ]
            ),
            Option(
              name: ['--kubeconfig', '-k'],
              description: 'Kubectl config file (default: \$HOME/.kube/config)',
              isPersistent: true,
              args: [
                Arg(
                name: 'kubeconfi'
              )
              ]
            ),
            Option(
              name: ['--namespace', '-n'],
              description: 'Namespace to use (default: from \$KUBECONFIG)',
              isPersistent: true,
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--to',
              description: 'Version of Resource',
              isPersistent: true,
              args: [
                Arg(
                name: 't'
              )
              ]
            )
          ]
        )
      ],
      options: [

        Option(
          name: '--api-server',
          description: 'Hub API Server URL (default \'https://api.hub.tekton.dev\' for \'tekton\' type; default \'https://artifacthub.io\' for \'artifact\' type). URL can also be defined in a file \'\$HOME/.tekton/hub-config\' with a variable \'TEKTON_HUB_API_SERVER\'/\'ARTIFACT_HUB_API_SERVER\'',
          isPersistent: true,
          args: [
            Arg(
            name: 'api-serve'
          )
          ]
        ),
        Option(
          name: '--type',
          description: 'The type of Hub from where to pull the resource. Either \'artifact\' or \'tekton\' (default \'tekton\')',
          isPersistent: true,
          args: [
            Arg(
            name: 'type',
            defaultValue: 'tekto'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['p', 'pipelines', 'pipeline'],
      description: 'Manage pipelines',
      subcommands: [

        Subcommand(
          name: ['rm', 'delete'],
          description: 'Delete Pipelines in a namespace',
          options: [

            Option(
              name: '--all',
              description: 'Delete all Pipelines in a namespace (default: false)'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--force', '-f'],
              description: 'Whether to force deletion (default: false)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--prs',
              description: 'Whether to delete Pipeline(s) and related resources (PipelineRuns) (default: false)'
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['desc', 'describe'],
          description: 'Describes a Pipeline in a namespace',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Export Pipeline',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'Lists Pipelines in a namespace',
          options: [

            Option(
              name: ['--all-namespaces', '-A'],
              description: 'List Pipelines from all namespaces'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: '--no-headers',
              description: 'Do not print column headers with output (default print column headers with output)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'logs',
          description: 'Show Pipeline logs',
          options: [

            Option(
              name: ['--all', '-a'],
              description: 'Show all logs including init steps injected by tekton'
            ),
            Option(
              name: ['--follow', '-f'],
              description: 'Stream live logs'
            ),
            Option(
              name: ['--last', '-L'],
              description: 'Show logs for last PipelineRun'
            ),
            Option(
              name: '--limit',
              description: 'Lists number of PipelineRuns',
              args: [
                Arg(
                name: 'limit',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: ['--timestamps', '-t'],
              description: 'Show logs with timestamp'
            )
          ]
        ),
        Subcommand(
          name: 'sign',
          description: 'Sign Tekton Pipeline',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--file-name', '-f'],
              description: 'Fle name of the signed pipeline, using the original file name will overwrite the file',
              args: [
                Arg(
                name: 'file-nam'
              )
              ]
            ),
            Option(
              name: ['--key-file', '-K'],
              description: 'Key file',
              args: [
                Arg(
                name: 'key-fil'
              )
              ]
            ),
            Option(
              name: ['--kms-key', '-m'],
              description: 'KMS key url',
              args: [
                Arg(
                name: 'kms-ke'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Start Pipelines',
          options: [

            Option(
              name: '--dry-run',
              description: 'Preview PipelineRun without running it'
            ),
            Option(
              name: ['--filename', '-f'],
              description: 'Local or remote file name containing a Pipeline definition to start a PipelineRun',
              args: [
                Arg(
                name: 'filenam'
              )
              ]
            ),
            Option(
              name: '--finally-timeout',
              description: 'Timeout for Finally TaskRuns',
              args: [
                Arg(
                name: 'finally-timeou'
              )
              ]
            ),
            Option(
              name: ['--labels', '-l'],
              description: 'Pass labels as label=value',
              isRepeatable: true,
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: ['--last', '-L'],
              description: 'Re-run the Pipeline using last PipelineRun values'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Format of PipelineRun (yaml, json or name)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: ['--param', '-p'],
              description: 'Pass the param as key=value for string type, or key=value1,value2,... for array type',
              isRepeatable: true,
              args: [
                Arg(
                name: 'para'
              )
              ]
            ),
            Option(
              name: '--pipeline-timeout',
              description: 'Timeout for PipelineRun',
              args: [
                Arg(
                name: 'pipeline-timeou'
              )
              ]
            ),
            Option(
              name: '--pod-template',
              description: 'Local or remote file containing a PodTemplate definition',
              args: [
                Arg(
                name: 'pod-templat'
              )
              ]
            ),
            Option(
              name: '--prefix-name',
              description: 'Specify a prefix for the PipelineRun name (must be lowercase alphanumeric characters)',
              args: [
                Arg(
                name: 'prefix-nam'
              )
              ]
            ),
            Option(
              name: ['--resource', '-r'],
              description: 'Pass the resource name and ref as name=ref',
              isRepeatable: true,
              args: [
                Arg(
                name: 'resourc'
              )
              ]
            ),
            Option(
              name: ['--serviceaccount', '-s'],
              description: 'Pass the serviceaccount name',
              args: [
                Arg(
                name: 'serviceaccoun'
              )
              ]
            ),
            Option(
              name: '--showlog',
              description: 'Show logs right after starting the Pipeline'
            ),
            Option(
              name: '--skip-optional-workspace',
              description: 'Skips the prompt for optional workspaces'
            ),
            Option(
              name: '--task-serviceaccount',
              description: 'Pass the service account corresponding to the task',
              isRepeatable: true,
              args: [
                Arg(
                name: 'task-serviceaccoun'
              )
              ]
            ),
            Option(
              name: '--tasks-timeout',
              description: 'Timeout for Pipeline TaskRuns',
              args: [
                Arg(
                name: 'tasks-timeou'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Timeout for PipelineRun',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--use-param-defaults',
              description: 'Use default parameter values without prompting for input'
            ),
            Option(
              name: '--use-pipelinerun',
              description: 'Use this pipelinerun values to re-run the pipeline',
              args: [
                Arg(
                name: 'use-pipelineru'
              )
              ]
            ),
            Option(
              name: ['--workspace', '-w'],
              description: 'Pass one or more workspaces to map to the corresponding physical volumes',
              isRepeatable: true,
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'verify',
          description: 'Verify Tekton Pipeline',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--key-file', '-K'],
              description: 'Key file',
              args: [
                Arg(
                name: 'key-fil'
              )
              ]
            ),
            Option(
              name: ['--kms-key', '-m'],
              description: 'KMS key url',
              args: [
                Arg(
                name: 'kms-ke'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['--context', '-c'],
          description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
          isPersistent: true,
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--kubeconfig', '-k'],
          description: 'Kubectl config file (default: \$HOME/.kube/config)',
          isPersistent: true,
          args: [
            Arg(
            name: 'kubeconfi'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace to use (default: from \$KUBECONFIG)',
          isPersistent: true,
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--no-color', '-C'],
          description: 'Disable coloring (default: false)',
          isPersistent: true
        ),
        Option(
          name: '--nocolour',
          description: 'Disable colouring (default: false)',
          isPersistent: true
        )
      ]
    ),
    Subcommand(
      name: ['pr', 'pipelineruns', 'pipelinerun'],
      description: 'Manage PipelineRuns',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel a PipelineRun in a namespace',
          options: [

            Option(
              name: '--grace',
              description: 'Gracefully cancel a PipelineRun To use this, you need to change the feature-flags configmap enable-api-fields to alpha instead of stable. Set to \'CancelledRunFinally\' if you want to cancel the current running task and directly run the finally tasks. Set to \'StoppedRunFinally\' if you want to cancel the remaining non-final task and directly run the finally tasks',
              args: [
                Arg(
                name: 'grac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['rm', 'delete'],
          description: 'Delete PipelineRuns in a namespace',
          options: [

            Option(
              name: '--all',
              description: 'Delete all PipelineRuns in a namespace (default: false)'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--force', '-f'],
              description: 'Whether to force deletion (default: false)'
            ),
            Option(
              name: ['--ignore-running', '-i'],
              description: 'Ignore running PipelineRun (default: true)'
            ),
            Option(
              name: '--keep',
              description: 'Keep n most recent number of PipelineRuns',
              args: [
                Arg(
                name: 'keep',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--keep-since',
              description: 'When deleting all PipelineRuns keep the ones that has been completed since n minutes',
              args: [
                Arg(
                name: 'keep-since',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--label',
              description: 'A selector (label query) to filter on when running with --all, supports \'=\', \'==\', and \'!=\'',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: ['--pipeline', '-p'],
              description: 'The name of a Pipeline whose PipelineRuns should be deleted (does not delete the Pipeline)',
              args: [
                Arg(
                name: 'pipelin'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['desc', 'describe'],
          description: 'Describe a PipelineRun in a namespace',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--fzf', '-F'],
              description: 'Use fzf to select a PipelineRun to describe'
            ),
            Option(
              name: ['--last', '-L'],
              description: 'Show description for last PipelineRun'
            ),
            Option(
              name: '--limit',
              description: 'Lists number of PipelineRuns when selecting a PipelineRun to describe',
              args: [
                Arg(
                name: 'limit',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Export PipelineRun',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'Lists PipelineRuns in a namespace',
          options: [

            Option(
              name: ['--all-namespaces', '-A'],
              description: 'List PipelineRuns from all namespaces'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: '--label',
              description: 'A selector (label query) to filter on, supports \'=\', \'==\', and \'!=\'',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Limit PipelineRuns listed (default: return all PipelineRuns)',
              args: [
                Arg(
                name: 'limit',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--no-headers',
              description: 'Do not print column headers with output (default print column headers with output)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--reverse',
              description: 'List PipelineRuns in reverse order'
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'logs',
          description: 'Show the logs of a PipelineRun',
          options: [

            Option(
              name: ['--all', '-a'],
              description: 'Show all logs including init steps injected by tekton'
            ),
            Option(
              name: ['--follow', '-f'],
              description: 'Stream live logs'
            ),
            Option(
              name: ['--fzf', '-F'],
              description: 'Use fzf to select a PipelineRun'
            ),
            Option(
              name: ['--last', '-L'],
              description: 'Show logs for last PipelineRun'
            ),
            Option(
              name: '--limit',
              description: 'Lists number of PipelineRuns',
              args: [
                Arg(
                name: 'limit',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--prefix',
              description: 'Prefix each log line with the log source (task name and step name)'
            ),
            Option(
              name: ['--task', '-t'],
              description: 'Show logs for mentioned Tasks only',
              isRepeatable: true,
              args: [
                Arg(
                name: 'tas'
              )
              ]
            ),
            Option(
              name: '--timestamps',
              description: 'Show logs with timestamp'
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['--context', '-c'],
          description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
          isPersistent: true,
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--kubeconfig', '-k'],
          description: 'Kubectl config file (default: \$HOME/.kube/config)',
          isPersistent: true,
          args: [
            Arg(
            name: 'kubeconfi'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace to use (default: from \$KUBECONFIG)',
          isPersistent: true,
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--no-color', '-C'],
          description: 'Disable coloring (default: false)',
          isPersistent: true
        ),
        Option(
          name: '--nocolour',
          description: 'Disable colouring (default: false)',
          isPersistent: true
        )
      ]
    ),
    Subcommand(
      name: ['res', 'resources', 'resource'],
      description: 'Manage pipeline resources',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a pipeline resource in a namespace',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['rm', 'delete'],
          description: 'Delete pipeline resources in a namespace',
          options: [

            Option(
              name: '--all',
              description: 'Delete all PipelineResources in a namespace (default: false)'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--force', '-f'],
              description: 'Whether to force deletion (default: false)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['desc', 'describe'],
          description: 'Describes a pipeline resource in a namespace',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'Lists pipeline resources in a namespace',
          options: [

            Option(
              name: ['--all-namespaces', '-A'],
              description: 'List pipeline resources from all namespaces'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: '--no-headers',
              description: 'Do not print column headers with output (default print column headers with output)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            ),
            Option(
              name: ['--type', '-t'],
              description: 'Pipeline resource type',
              args: [
                Arg(
                name: 'typ'
              )
              ]
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['--context', '-c'],
          description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
          isPersistent: true,
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--kubeconfig', '-k'],
          description: 'Kubectl config file (default: \$HOME/.kube/config)',
          isPersistent: true,
          args: [
            Arg(
            name: 'kubeconfi'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace to use (default: from \$KUBECONFIG)',
          isPersistent: true,
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--no-color', '-C'],
          description: 'Disable coloring (default: false)',
          isPersistent: true
        ),
        Option(
          name: '--nocolour',
          description: 'Disable colouring (default: false)',
          isPersistent: true
        )
      ]
    ),
    Subcommand(
      name: ['t', 'tasks', 'task'],
      description: 'Manage Tasks',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Task from ClusterTask',
          options: [

            Option(
              name: '--from',
              description: 'Create a ClusterTask from Task in a particular namespace',
              args: [
                Arg(
                name: 'fro'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['rm', 'delete'],
          description: 'Delete Tasks in a namespace',
          options: [

            Option(
              name: '--all',
              description: 'Delete all Tasks in a namespace (default: false)'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--force', '-f'],
              description: 'Whether to force deletion (default: false)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            ),
            Option(
              name: '--trs',
              description: 'Whether to delete Task(s) and related resources (TaskRuns) (default: false)'
            )
          ]
        ),
        Subcommand(
          name: ['desc', 'describe'],
          description: 'Describe a Task in a namespace',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'Lists Tasks in a namespace',
          options: [

            Option(
              name: ['--all-namespaces', '-A'],
              description: 'List Tasks from all namespaces'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: '--no-headers',
              description: 'Do not print column headers with output (default print column headers with output)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'logs',
          description: 'Show Task logs',
          options: [

            Option(
              name: ['--all', '-a'],
              description: 'Show all logs including init steps injected by tekton'
            ),
            Option(
              name: ['--follow', '-f'],
              description: 'Stream live logs'
            ),
            Option(
              name: ['--last', '-L'],
              description: 'Show logs for last TaskRun'
            ),
            Option(
              name: '--limit',
              description: 'Lists number of TaskRuns',
              args: [
                Arg(
                name: 'limit',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: ['--timestamps', '-t'],
              description: 'Show logs with timestamp'
            )
          ]
        ),
        Subcommand(
          name: 'sign',
          description: 'Sign Tekton Task',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--file-name', '-f'],
              description: 'File name of the signed task, using the original file name will overwrite the file',
              args: [
                Arg(
                name: 'file-nam'
              )
              ]
            ),
            Option(
              name: ['--key-file', '-K'],
              description: 'Key file',
              args: [
                Arg(
                name: 'key-fil'
              )
              ]
            ),
            Option(
              name: ['--kms-key', '-m'],
              description: 'KMS key url',
              args: [
                Arg(
                name: 'kms-ke'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'start',
          description: 'Start Tasks',
          options: [

            Option(
              name: '--dry-run',
              description: 'Preview TaskRun without running it'
            ),
            Option(
              name: ['--filename', '-f'],
              description: 'Local or remote file name containing a Task definition to start a TaskRun',
              args: [
                Arg(
                name: 'filenam'
              )
              ]
            ),
            Option(
              name: ['--inputresource', '-i'],
              description: 'Pass the input resource name and ref as name=ref',
              isRepeatable: true,
              args: [
                Arg(
                name: 'inputresourc'
              )
              ]
            ),
            Option(
              name: ['--labels', '-l'],
              description: 'Pass labels as label=value',
              isRepeatable: true,
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: ['--last', '-L'],
              description: 'Re-run the Task using last TaskRun values'
            ),
            Option(
              name: '--output',
              description: 'Format of TaskRun (yaml or json)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: ['--outputresource', '-o'],
              description: 'Pass the output resource name and ref as name=ref',
              isRepeatable: true,
              args: [
                Arg(
                name: 'outputresourc'
              )
              ]
            ),
            Option(
              name: ['--param', '-p'],
              description: 'Pass the param as key=value for string type, or key=value1,value2,... for array type',
              isRepeatable: true,
              args: [
                Arg(
                name: 'para'
              )
              ]
            ),
            Option(
              name: '--pod-template',
              description: 'Local or remote file containing a PodTemplate definition',
              args: [
                Arg(
                name: 'pod-templat'
              )
              ]
            ),
            Option(
              name: '--prefix-name',
              description: 'Specify a prefix for the TaskRun name (must be lowercase alphanumeric characters)',
              args: [
                Arg(
                name: 'prefix-nam'
              )
              ]
            ),
            Option(
              name: ['--serviceaccount', '-s'],
              description: 'Pass the serviceaccount name',
              args: [
                Arg(
                name: 'serviceaccoun'
              )
              ]
            ),
            Option(
              name: '--showlog',
              description: 'Show logs right after starting the Task'
            ),
            Option(
              name: '--skip-optional-workspace',
              description: 'Skips the prompt for optional workspaces'
            ),
            Option(
              name: '--timeout',
              description: 'Timeout for TaskRun',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--use-param-defaults',
              description: 'Use default parameter values without prompting for input'
            ),
            Option(
              name: '--use-taskrun',
              description: 'Specify a TaskRun name to use its values to re-run the TaskRun',
              args: [
                Arg(
                name: 'use-taskru'
              )
              ]
            ),
            Option(
              name: ['--workspace', '-w'],
              description: 'Pass one or more workspaces to map to the corresponding physical volumes',
              isRepeatable: true,
              args: [
                Arg(
                name: 'workspac'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'verify',
          description: 'Verify Tekton Task',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--key-file', '-K'],
              description: 'Key file',
              args: [
                Arg(
                name: 'key-fil'
              )
              ]
            ),
            Option(
              name: ['--kms-key', '-m'],
              description: 'KMS key url',
              args: [
                Arg(
                name: 'kms-ke'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['--context', '-c'],
          description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
          isPersistent: true,
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--kubeconfig', '-k'],
          description: 'Kubectl config file (default: \$HOME/.kube/config)',
          isPersistent: true,
          args: [
            Arg(
            name: 'kubeconfi'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace to use (default: from \$KUBECONFIG)',
          isPersistent: true,
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--no-color', '-C'],
          description: 'Disable coloring (default: false)',
          isPersistent: true
        ),
        Option(
          name: '--nocolour',
          description: 'Disable colouring (default: false)',
          isPersistent: true
        )
      ]
    ),
    Subcommand(
      name: ['tr', 'taskruns', 'taskrun'],
      description: 'Manage TaskRuns',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Cancel a TaskRun in a namespace'
        ),
        Subcommand(
          name: ['rm', 'delete'],
          description: 'Delete TaskRuns in a namespace',
          options: [

            Option(
              name: '--all',
              description: 'Delete all TaskRuns in a namespace (default: false)'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: '--clustertask',
              description: 'The name of a ClusterTask whose TaskRuns should be deleted (does not delete the ClusterTask)',
              args: [
                Arg(
                name: 'clustertas'
              )
              ]
            ),
            Option(
              name: ['--force', '-f'],
              description: 'Whether to force deletion (default: false)'
            ),
            Option(
              name: ['--ignore-running', '-i'],
              description: 'Ignore running TaskRun (default: true)'
            ),
            Option(
              name: '--ignore-running-pipelinerun',
              description: 'Ignore deleting taskruns of a running PipelineRun (default: true)'
            ),
            Option(
              name: '--keep',
              description: 'Keep n most recent number of TaskRuns',
              args: [
                Arg(
                name: 'keep',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--keep-since',
              description: 'When deleting all TaskRuns keep the ones that has been completed since n minutes',
              args: [
                Arg(
                name: 'keep-since',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: ['--task', '-t'],
              description: 'The name of a Task whose TaskRuns should be deleted (does not delete the task)',
              args: [
                Arg(
                name: 'tas'
              )
              ]
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['desc', 'describe'],
          description: 'Describe a TaskRun in a namespace',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--fzf', '-F'],
              description: 'Use fzf to select a taskrun to describe'
            ),
            Option(
              name: ['--last', '-L'],
              description: 'Show description for last TaskRun'
            ),
            Option(
              name: '--limit',
              description: 'Lists number of TaskRuns when selecting a TaskRun to describe',
              args: [
                Arg(
                name: 'limit',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Export TaskRun',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'Lists TaskRuns in a namespace',
          options: [

            Option(
              name: ['--all-namespaces', '-A'],
              description: 'List TaskRuns from all namespaces'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: '--label',
              description: 'A selector (label query) to filter on, supports \'=\', \'==\', and \'!=\'',
              args: [
                Arg(
                name: 'labe'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Limit TaskRuns listed (default: return all TaskRuns)',
              args: [
                Arg(
                name: 'limit',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--no-headers',
              description: 'Do not print column headers with output (default print column headers with output)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--reverse',
              description: 'List TaskRuns in reverse order'
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'logs',
          description: 'Show TaskRuns logs',
          options: [

            Option(
              name: ['--all', '-a'],
              description: 'Show all logs including init steps injected by tekton'
            ),
            Option(
              name: ['--follow', '-f'],
              description: 'Stream live logs'
            ),
            Option(
              name: ['--fzf', '-F'],
              description: 'Use fzf to select a TaskRun'
            ),
            Option(
              name: ['--last', '-L'],
              description: 'Show logs for last TaskRun'
            ),
            Option(
              name: '--limit',
              description: 'Lists number of TaskRuns',
              args: [
                Arg(
                name: 'limit',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--prefix',
              description: 'Prefix each log line with the log source (step name)'
            ),
            Option(
              name: ['--step', '-s'],
              description: 'Show logs for mentioned steps only',
              isRepeatable: true,
              args: [
                Arg(
                name: 'ste'
              )
              ]
            ),
            Option(
              name: ['--timestamps', '-t'],
              description: 'Show logs with timestamp'
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['--context', '-c'],
          description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
          isPersistent: true,
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--kubeconfig', '-k'],
          description: 'Kubectl config file (default: \$HOME/.kube/config)',
          isPersistent: true,
          args: [
            Arg(
            name: 'kubeconfi'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace to use (default: from \$KUBECONFIG)',
          isPersistent: true,
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--no-color', '-C'],
          description: 'Disable coloring (default: false)',
          isPersistent: true
        ),
        Option(
          name: '--nocolour',
          description: 'Disable colouring (default: false)',
          isPersistent: true
        )
      ]
    ),
    Subcommand(
      name: ['tb', 'triggerbindings', 'triggerbinding'],
      description: 'Manage TriggerBindings',
      subcommands: [

        Subcommand(
          name: ['rm', 'delete'],
          description: 'Delete TriggerBindings in a namespace',
          options: [

            Option(
              name: '--all',
              description: 'Delete all TriggerBindings in a namespace (default: false)'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--force', '-f'],
              description: 'Whether to force deletion (default: false)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['desc', 'describe'],
          description: 'Describes a TriggerBinding in a namespace',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'Lists TriggerBindings in a namespace',
          options: [

            Option(
              name: ['--all-namespaces', '-A'],
              description: 'List TriggerBindings from all namespaces'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: '--no-headers',
              description: 'Do not print column headers with output (default print column headers with output)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['--context', '-c'],
          description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
          isPersistent: true,
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--kubeconfig', '-k'],
          description: 'Kubectl config file (default: \$HOME/.kube/config)',
          isPersistent: true,
          args: [
            Arg(
            name: 'kubeconfi'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace to use (default: from \$KUBECONFIG)',
          isPersistent: true,
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--no-color', '-C'],
          description: 'Disable coloring (default: false)',
          isPersistent: true
        ),
        Option(
          name: '--nocolour',
          description: 'Disable colouring (default: false)',
          isPersistent: true
        )
      ]
    ),
    Subcommand(
      name: ['tt', 'triggertemplates', 'triggertemplate'],
      description: 'Manage TriggerTemplates',
      subcommands: [

        Subcommand(
          name: ['rm', 'delete'],
          description: 'Delete TriggerTemplates in a namespace',
          options: [

            Option(
              name: '--all',
              description: 'Delete all TriggerTemplates in a namespace (default: false)'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--force', '-f'],
              description: 'Whether to force deletion (default: false)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['desc', 'describe'],
          description: 'Describes a TriggerTemplate in a namespace',
          options: [

            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'Lists TriggerTemplates in a namespace',
          options: [

            Option(
              name: ['--all-namespaces', '-A'],
              description: 'List TriggerTemplates from all namespaces'
            ),
            Option(
              name: '--allow-missing-template-keys',
              description: 'If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats'
            ),
            Option(
              name: '--no-headers',
              description: 'Do not print column headers with output (default print column headers with output)'
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Output format. One of: (json, yaml, name, go-template, go-template-file, template, templatefile, jsonpath, jsonpath-as-json, jsonpath-file)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--show-managed-fields',
              description: 'If true, keep the managedFields when printing objects in JSON or YAML format'
            ),
            Option(
              name: '--template',
              description: 'Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview]',
              args: [
                Arg(
                name: 'template',
                template: ['filepaths']
              )
              ]
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['--context', '-c'],
          description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
          isPersistent: true,
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--kubeconfig', '-k'],
          description: 'Kubectl config file (default: \$HOME/.kube/config)',
          isPersistent: true,
          args: [
            Arg(
            name: 'kubeconfi'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace to use (default: from \$KUBECONFIG)',
          isPersistent: true,
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--no-color', '-C'],
          description: 'Disable coloring (default: false)',
          isPersistent: true
        ),
        Option(
          name: '--nocolour',
          description: 'Disable colouring (default: false)',
          isPersistent: true
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Prints version information',
      options: [

        Option(
          name: '--check',
          description: 'Check if a newer version is available'
        ),
        Option(
          name: '--component',
          description: 'Provide a particular component name for its version (client|chains|pipeline|triggers|dashboard)',
          args: [
            Arg(
            name: 'componen'
          )
          ]
        ),
        Option(
          name: ['--context', '-c'],
          description: 'Name of the kubeconfig context to use (default: kubectl config current-context)',
          isPersistent: true,
          args: [
            Arg(
            name: 'contex'
          )
          ]
        ),
        Option(
          name: ['--kubeconfig', '-k'],
          description: 'Kubectl config file (default: \$HOME/.kube/config)',
          isPersistent: true,
          args: [
            Arg(
            name: 'kubeconfi'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace to use (default: from \$KUBECONFIG)',
          isPersistent: true,
          args: [
            Arg(
            name: 'namespac'
          )
          ]
        ),
        Option(
          name: ['--no-color', '-C'],
          description: 'Disable coloring (default: false)',
          isPersistent: true
        ),
        Option(
          name: '--nocolour',
          description: 'Disable colouring (default: false)',
          isPersistent: true
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [

        Subcommand(
          name: ['tkb', 'bundles', 'bundle'],
          description: 'Manage Tekton Bundles',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List and print a Tekton bundle\'s contents'
            ),
            Subcommand(
              name: 'push',
              description: 'Create or replace a Tekton bundle'
            )
          ]
        ),
        Subcommand(
          name: ['chains', 'chain'],
          description: 'Manage Chains',
          subcommands: [

            Subcommand(
              name: 'payload',
              description: 'Print Tekton Chains\' payload for a specific taskrun'
            ),
            Subcommand(
              name: 'signature',
              description: 'Print Tekton Chains\' signature for a specific taskrun'
            )
          ]
        ),
        Subcommand(
          name: ['ct', 'clustertasks', 'clustertask'],
          description: 'Manage ClusterTasks',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a ClusterTask from Task'
            ),
            Subcommand(
              name: ['rm', 'delete'],
              description: 'Delete ClusterTasks in a cluster'
            ),
            Subcommand(
              name: ['desc', 'describe'],
              description: 'Describe a ClusterTask'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'Lists ClusterTasks'
            ),
            Subcommand(
              name: 'logs',
              description: 'Show ClusterTask logs'
            ),
            Subcommand(
              name: 'start',
              description: 'Start ClusterTasks'
            )
          ]
        ),
        Subcommand(
          name: ['ctb', 'clustertriggerbindings', 'clustertriggerbinding'],
          description: 'Manage ClusterTriggerBindings',
          subcommands: [

            Subcommand(
              name: ['rm', 'delete'],
              description: 'Delete ClusterTriggerBindings'
            ),
            Subcommand(
              name: ['desc', 'describe'],
              description: 'Describes a ClusterTriggerBinding'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'Lists ClusterTriggerBindings in a namespace'
            )
          ]
        ),
        Subcommand(
          name: 'completion',
          description: 'Prints shell completion scripts'
        ),
        Subcommand(
          name: ['el', 'eventlisteners', 'eventlistener'],
          description: 'Manage EventListeners',
          subcommands: [

            Subcommand(
              name: ['rm', 'delete'],
              description: 'Delete EventListeners in a namespace'
            ),
            Subcommand(
              name: ['desc', 'describe'],
              description: 'Describe EventListener in a namespace'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'Lists EventListeners in a namespace'
            ),
            Subcommand(
              name: 'logs',
              description: 'Show EventListener logs'
            )
          ]
        ),
        Subcommand(
          name: 'hub',
          description: 'Interact with tekton hub',
          subcommands: [

            Subcommand(
              name: 'check-upgrade',
              description: 'Check for upgrades of resources if present',
              subcommands: [

                Subcommand(
                  name: 'task',
                  description: 'Check updates for Task installed via Hub CLI'
                )
              ]
            ),
            Subcommand(
              name: 'downgrade',
              description: 'Downgrade an installed resource',
              subcommands: [

                Subcommand(
                  name: 'task',
                  description: 'Downgrade an installed Task by its name to a lower version'
                )
              ]
            ),
            Subcommand(
              name: 'get',
              description: 'Get resource manifest by its name, kind, catalog, and version',
              subcommands: [

                Subcommand(
                  name: 'pipeline',
                  description: 'Get Pipeline by name, catalog and version'
                ),
                Subcommand(
                  name: 'task',
                  description: 'Get Task by name, catalog and version'
                )
              ]
            ),
            Subcommand(
              name: 'info',
              description: 'Display info of resource by its name, kind, catalog, and version',
              subcommands: [

                Subcommand(
                  name: 'task',
                  description: 'Display info of Task by its name, catalog and version'
                )
              ]
            ),
            Subcommand(
              name: 'install',
              description: 'Install a resource from a catalog by its kind, name and version',
              subcommands: [

                Subcommand(
                  name: 'task',
                  description: 'Install Task from a catalog by its name and version'
                )
              ]
            ),
            Subcommand(
              name: 'reinstall',
              description: 'Reinstall a resource by its kind and name',
              subcommands: [

                Subcommand(
                  name: 'task',
                  description: 'Reinstall a Task by its name'
                )
              ]
            ),
            Subcommand(
              name: 'search',
              description: 'Search resource by a combination of name, kind, categories, platforms, and tags'
            ),
            Subcommand(
              name: 'upgrade',
              description: 'Upgrade an installed resource',
              subcommands: [

                Subcommand(
                  name: 'task',
                  description: 'Upgrade a Task by its name'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['p', 'pipelines', 'pipeline'],
          description: 'Manage pipelines',
          subcommands: [

            Subcommand(
              name: ['rm', 'delete'],
              description: 'Delete Pipelines in a namespace'
            ),
            Subcommand(
              name: ['desc', 'describe'],
              description: 'Describes a Pipeline in a namespace'
            ),
            Subcommand(
              name: 'export',
              description: 'Export Pipeline'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'Lists Pipelines in a namespace'
            ),
            Subcommand(
              name: 'logs',
              description: 'Show Pipeline logs'
            ),
            Subcommand(
              name: 'sign',
              description: 'Sign Tekton Pipeline'
            ),
            Subcommand(
              name: 'start',
              description: 'Start Pipelines'
            ),
            Subcommand(
              name: 'verify',
              description: 'Verify Tekton Pipeline'
            )
          ]
        ),
        Subcommand(
          name: ['pr', 'pipelineruns', 'pipelinerun'],
          description: 'Manage PipelineRuns',
          subcommands: [

            Subcommand(
              name: 'cancel',
              description: 'Cancel a PipelineRun in a namespace'
            ),
            Subcommand(
              name: ['rm', 'delete'],
              description: 'Delete PipelineRuns in a namespace'
            ),
            Subcommand(
              name: ['desc', 'describe'],
              description: 'Describe a PipelineRun in a namespace'
            ),
            Subcommand(
              name: 'export',
              description: 'Export PipelineRun'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'Lists PipelineRuns in a namespace'
            ),
            Subcommand(
              name: 'logs',
              description: 'Show the logs of a PipelineRun'
            )
          ]
        ),
        Subcommand(
          name: ['res', 'resources', 'resource'],
          description: 'Manage pipeline resources',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a pipeline resource in a namespace'
            ),
            Subcommand(
              name: ['rm', 'delete'],
              description: 'Delete pipeline resources in a namespace'
            ),
            Subcommand(
              name: ['desc', 'describe'],
              description: 'Describes a pipeline resource in a namespace'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'Lists pipeline resources in a namespace'
            )
          ]
        ),
        Subcommand(
          name: ['t', 'tasks', 'task'],
          description: 'Manage Tasks',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Task from ClusterTask'
            ),
            Subcommand(
              name: ['rm', 'delete'],
              description: 'Delete Tasks in a namespace'
            ),
            Subcommand(
              name: ['desc', 'describe'],
              description: 'Describe a Task in a namespace'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'Lists Tasks in a namespace'
            ),
            Subcommand(
              name: 'logs',
              description: 'Show Task logs'
            ),
            Subcommand(
              name: 'sign',
              description: 'Sign Tekton Task'
            ),
            Subcommand(
              name: 'start',
              description: 'Start Tasks'
            ),
            Subcommand(
              name: 'verify',
              description: 'Verify Tekton Task'
            )
          ]
        ),
        Subcommand(
          name: ['tr', 'taskruns', 'taskrun'],
          description: 'Manage TaskRuns',
          subcommands: [

            Subcommand(
              name: 'cancel',
              description: 'Cancel a TaskRun in a namespace'
            ),
            Subcommand(
              name: ['rm', 'delete'],
              description: 'Delete TaskRuns in a namespace'
            ),
            Subcommand(
              name: ['desc', 'describe'],
              description: 'Describe a TaskRun in a namespace'
            ),
            Subcommand(
              name: 'export',
              description: 'Export TaskRun'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'Lists TaskRuns in a namespace'
            ),
            Subcommand(
              name: 'logs',
              description: 'Show TaskRuns logs'
            )
          ]
        ),
        Subcommand(
          name: ['tb', 'triggerbindings', 'triggerbinding'],
          description: 'Manage TriggerBindings',
          subcommands: [

            Subcommand(
              name: ['rm', 'delete'],
              description: 'Delete TriggerBindings in a namespace'
            ),
            Subcommand(
              name: ['desc', 'describe'],
              description: 'Describes a TriggerBinding in a namespace'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'Lists TriggerBindings in a namespace'
            )
          ]
        ),
        Subcommand(
          name: ['tt', 'triggertemplates', 'triggertemplate'],
          description: 'Manage TriggerTemplates',
          subcommands: [

            Subcommand(
              name: ['rm', 'delete'],
              description: 'Delete TriggerTemplates in a namespace'
            ),
            Subcommand(
              name: ['desc', 'describe'],
              description: 'Describes a TriggerTemplate in a namespace'
            ),
            Subcommand(
              name: ['ls', 'list'],
              description: 'Lists TriggerTemplates in a namespace'
            )
          ]
        ),
        Subcommand(
          name: 'version',
          description: 'Prints version information'
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Display help',
      isPersistent: true
    )
  ]
);
