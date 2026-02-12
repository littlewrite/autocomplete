// Auto-generated from TypeScript source: vela.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `vela` CLI
final FigSpec velaSpec = FigSpec(
  name: 'vela',
  description: 'A Highly Extensible Platform Engine based on Kubernetes and Open Application Model',
  subcommands: [
    Subcommand(
      name: 'show',
      description: 'Show the reference doc for component, trait or workflow types',
      args: [
        Arg(
        isVariadic: true,
        template: ['history']
      )
      ],
      options: [
        Option(
          name: ['-e', '--env'],
          description: 'Specify environment name for application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--help', '-h'],
          description: 'Help for show command'
        ),
        Option(
          name: ['-n', '--namespace'],
          description: 'Specify the Kubernetes namespace to use',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'env',
      description: 'Manage environments for vela applications to run',
      subcommands: [
        Subcommand(
          name: 'delete',
          description: 'Delete an environment',
          args: [
            Arg(
            isVariadic: true,
            template: ['history']
          )
          ]
        ),
        Subcommand(
          name: 'init',
          description: 'Delete an environment',
          args: [
            Arg(
            isVariadic: true,
            template: ['history']
          )
          ],
          options: [
            Option(
              name: '--namespace',
              description: 'Specify K8s namespace for env',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['ls', 'list'],
          description: 'List all environments for vela applications to run',
          args: [
            Arg(
            isVariadic: true,
            template: ['history']
          )
          ]
        ),
        Subcommand(
          name: ['set', 'sw'],
          description: 'Set an environment as the default one for running vela applications',
          args: [
            Arg(
            isVariadic: true,
            template: ['history']
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Create scaffold for vela application',
      options: [
        Option(
          name: ['--env', '-e'],
          description: 'Specify environment name for application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Specify the Kubernetes namespace to use',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--render-only',
          description: 'Rendering vela.yaml in current dir and do not deploy'
        )
      ]
    ),
    Subcommand(
      name: 'up',
      description: 'Deploy one application',
      args: [
        Arg(
        isVariadic: true,
        template: ['history']
      )
      ],
      options: [
        Option(
          name: ['--env', '-e'],
          description: 'The environment name for the CLI request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--file', '-f'],
          description: 'The file path for appfile or application. It could be a remote url',
          args: [
            Arg(
            name: 'path',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'If present, the namespace scope for this CLI request',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--publish-version', '-v'],
          description: 'The publish version for deploying application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--revision', '-r'],
          description: 'The revision to use for deploying the application, if empty, the current application configuration will be used',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'cluster',
      description: 'Manage Kubernetes Clusters for Continuous Delivery',
      subcommands: [
        Subcommand(
          name: 'alias',
          description: 'Alias a named cluster'
        ),
        Subcommand(
          name: 'detach',
          description: 'Detach managed cluster',
          options: [
            Option(
              name: ['--kubeconfig-path', '-p'],
              description: 'Specify the kubeconfig path of managed cluster. If you use ocm to manage your cluster, you must set the kubeconfig-path',
              args: [
                Arg(
                name: 'path',
                template: 'filepaths'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'join',
          description: 'Join managed cluster by kubeconfig',
          options: [
            Option(
              name: '--create-namespace',
              description: 'Specifies the namespace need to create in managedCluster (default "vela-system")',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Specify the cluster name. If empty, it will use the cluster name in config file. Default to be empty',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'labels',
          description: 'Manage Kubernetes Cluster Labels',
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Add labels to managed cluster'
            ),
            Subcommand(
              name: 'del',
              description: 'Delete labels for managed cluster'
            )
          ]
        ),
        Subcommand(
          name: ['list', 'ls'],
          description: 'List managed clusters'
        ),
        Subcommand(
          name: 'probe',
          description: 'Health probe managed cluster'
        ),
        Subcommand(
          name: 'rename',
          description: 'Rename managed cluster'
        )
      ]
    ),
    Subcommand(
      name: 'workflow',
      description: 'Operate the Workflow during Application Delivery',
      subcommands: [
        Subcommand(
          name: 'restart',
          description: 'Restart an application workflow',
          options: [
            Option(
              name: ['--env', '-e'],
              description: 'Specify environment name for application',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--namespace', '-n'],
              description: 'Specify the Kubernetes namespace to use',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'resume',
          description: 'Resume a suspend application workflow',
          options: [
            Option(
              name: ['--env', '-e'],
              description: 'Specify environment name for application',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--namespace', '-n'],
              description: 'Specify the Kubernetes namespace to use',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'rollback',
          description: 'Rollback an application workflow to the latest revision',
          options: [
            Option(
              name: ['--env', '-e'],
              description: 'Specify environment name for application',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--namespace', '-n'],
              description: 'Specify the Kubernetes namespace to use',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'suspend',
          description: 'Suspend an application workflow',
          options: [
            Option(
              name: ['--env', '-e'],
              description: 'Specify environment name for application',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--namespace', '-n'],
              description: 'Specify the Kubernetes namespace to use',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'terminate',
          description: 'Terminate an application workflow',
          options: [
            Option(
              name: ['--env', '-e'],
              description: 'Specify environment name for application',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--namespace', '-n'],
              description: 'Specify the Kubernetes namespace to use',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'addon',
      description: 'Manage addons for extension',
      subcommands: [
        Subcommand(
          name: 'disable',
          description: 'Disable an addon',
          options: [
            Option(
              name: ['--force', '-f'],
              description: 'Skip checking if applications are still using this addon'
            )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enable an addon',
          options: [
            Option(
              name: ['--clusters', '-c'],
              description: 'Specify the runtime-clusters to enable',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List addons'
        ),
        Subcommand(
          name: 'registry',
          description: 'Manage addon registry',
          subcommands: [
            Subcommand(
              name: 'add',
              description: 'Add an addon registry',
              options: [
                Option(
                  name: '--bucket',
                  description: 'Specify the OSS bucket name',
                  args: [
                    Arg(
                    name: 'string'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Specify the addon registry endpoint',
                  args: [
                    Arg(
                    name: 'string'
                  )
                  ]
                ),
                Option(
                  name: '--gitToken',
                  description: 'Specify the github repo token',
                  args: [
                    Arg(
                    name: 'string'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Specify the addon registry OSS path',
                  args: [
                    Arg(
                    name: 'string'
                  )
                  ]
                ),
                Option(
                  name: '--type',
                  description: 'Specify the addon registry type',
                  args: [
                    Arg(
                    name: 'string'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an addon registry'
            ),
            Subcommand(
              name: 'get',
              description: 'Get an addon registry'
            ),
            Subcommand(
              name: 'list',
              description: 'List addon registries'
            ),
            Subcommand(
              name: 'update',
              description: 'Update an addon registry',
              options: [
                Option(
                  name: '--bucket',
                  description: 'Specify the OSS bucket name',
                  args: [
                    Arg(
                    name: 'string'
                  )
                  ]
                ),
                Option(
                  name: '--endpoint',
                  description: 'Specify the addon registry endpoint',
                  args: [
                    Arg(
                    name: 'string'
                  )
                  ]
                ),
                Option(
                  name: '--gitToken',
                  description: 'Specify the github repo token',
                  args: [
                    Arg(
                    name: 'string'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'Specify the addon registry OSS path',
                  args: [
                    Arg(
                    name: 'string'
                  )
                  ]
                ),
                Option(
                  name: '--type',
                  description: 'Specify the addon registry type',
                  args: [
                    Arg(
                    name: 'string'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'status',
          description: 'Get addon status'
        ),
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade an addon'
        )
      ]
    ),
    Subcommand(
      name: ['uischema', 'ui'],
      description: 'Manage UI schema for addons',
      subcommands: [
        Subcommand(
          name: 'apply',
          description: 'Apply UI schema from a file or dir'
        )
      ]
    ),
    Subcommand(
      name: 'def',
      description: 'Manage X-Definition for addons',
      subcommands: [
        Subcommand(
          name: 'apply',
          description: 'Apply X-Definition',
          args: [
            Arg(
            isVariadic: true,
            template: ['filepaths', 'folders']
          )
          ],
          options: [
            Option(
              name: '--dry-run',
              description: 'Only build definition from CUE into CRB object without applying it to kubernetes clusters'
            ),
            Option(
              name: ['--namespace', '-n'],
              description: 'Specify which namespace to apply. (default "vela-system")',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'del',
          description: 'Delete X-Definition',
          args: [
            Arg(
            isVariadic: true,
            template: ['filepaths', 'folders']
          )
          ],
          options: [
            Option(
              name: ['--namespace', '-n'],
              description: 'Specify which namespace to apply. (default "vela-system")',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--type', '-t'],
              description: 'Specify the definition type of target. Valid types: workflow-step, component, trait, policy, workload, scope',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'doc-gen',
          description: 'Generate documentation of definitions (Only Terraform typed definitions are supported)',
          options: [
            Option(
              name: ['--type', '-t'],
              description: 'Specify the definition type of target. Valid types: workflow-step, component, trait, policy, workload, scope',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'edit',
          description: 'Edit X-Definition',
          options: [
            Option(
              name: ['--namespace', '-n'],
              description: 'Specify which namespace to apply. (default "vela-system")',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--type', '-t'],
              description: 'Specify the definition type of target. Valid types: workflow-step, component, trait, policy, workload, scope',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Get X-Definition',
          options: [
            Option(
              name: ['--namespace', '-n'],
              description: 'Specify which namespace to apply. (default "vela-system")',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--type', '-t'],
              description: 'Specify the definition type of target. Valid types: workflow-step, component, trait, policy, workload, scope',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'init',
          description: 'Init a new definition',
          options: [
            Option(
              name: ['--desc', '-d'],
              description: 'Specify the description of the new definition',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--interactive', '-i'],
              description: 'Specify whether use interactive process to help generate definitions'
            ),
            Option(
              name: '--git',
              description: 'Specify which git repository the configuration(HCL) is stored in. Valid when --provider/-p is set',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--local',
              description: 'Specify the local path of the configuration(HCL) file. Valid when --provider/-p is set',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Specify the output path of the generated definition. If empty, the definition will be printed in the console',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Specify which path the configuration(HCL) is stored in the Git repository. Valid when --git is set',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--provider', '-p'],
              description: 'Specify which provider the cloud resource definition belongs to. Only alibaba, `aws`, `azure` are supported',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--template-yaml', '-f'],
              description: 'Specify the template yaml file that definition will use to build the schema. If empty, a default template for the given definition type will be used',
              args: [
                Arg(
                name: 'path',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: ['--type', '-t'],
              description: 'Specify the type of the new definition. Valid types: scope, workflow-step, component, trait, policy, workload',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List X-Definition',
          options: [
            Option(
              name: ['--namespace', '-n'],
              description: 'Specify which namespace to apply. (default "vela-system")',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--type', '-t'],
              description: 'Specify the definition type of target. Valid types: workflow-step, component, trait, policy, workload, scope',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'render',
          description: 'Render X-Definition',
          options: [
            Option(
              name: '--message',
              description: 'Specify the header message of the generated YAML file. For example, declaring author information',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: ['--output', '-o'],
              description: 'Specify the output path of the rendered definition YAML. If empty, the definition will be printed in the console. If input is a directory, the output path is expected to be a directory as well',
              args: [
                Arg(
                name: 'path',
                template: 'folders'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'vet',
          description: 'Validate X-Definition',
          args: [
            Arg(
            isVariadic: true,
            template: ['filepaths', 'folders']
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'registry',
      description: 'Manage Registry of X-Definitions for extension',
      subcommands: [
        Subcommand(
          name: 'config',
          description: 'Configure (add if not exist) a registry, default is local (built-in capabilities)',
          options: [
            Option(
              name: ['--token', '-t'],
              description: 'Github Repo token',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'ls',
          description: 'List all configured registry'
        ),
        Subcommand(
          name: ['remove', 'rm'],
          description: 'Remove specified registry'
        )
      ]
    ),
    Subcommand(
      name: ['component', 'comp', 'components'],
      description: 'List component types installed and discover more registry',
      subcommands: [
        Subcommand(
          name: 'get',
          description: 'Get component from type',
          options: [
            Option(
              name: '--registry',
              description: 'Specify the registry name (default "default")',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--token',
              description: 'Specify token when using --url to specify registry url',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--url',
              description: 'Specify the registry url',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        )
      ],
      options: [
        Option(
          name: '--discover',
          description: 'Discover more registry',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--label',
          description: 'A label to filter components, the format is --label type=terraform',
          args: [
            Arg(
            name: 'key=value'
          )
          ]
        ),
        Option(
          name: '--registry',
          description: 'Specify the registry name (default "default")',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--token',
          description: 'Specify token when using --url to specify registry url',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--url',
          description: 'Specify the registry url',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['trait', 'traits'],
      description: 'List trait types installed and discover more in registry',
      subcommands: [
        Subcommand(
          name: 'get',
          description: 'Get trait from registry',
          options: [
            Option(
              name: '--registry',
              description: 'Specify the registry name (default "default")',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--token',
              description: 'Specify token when using --url to specify registry url',
              args: [
                Arg(
                name: 'string'
              )
              ]
            ),
            Option(
              name: '--url',
              description: 'Specify the registry url',
              args: [
                Arg(
                name: 'string'
              )
              ]
            )
          ]
        )
      ],
      options: [
        Option(
          name: '--discover',
          description: 'Discover traits in registries'
        ),
        Option(
          name: '--registry',
          description: 'Specify the registry name (default "default")',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--token',
          description: 'Specify token when using --url to specify registry url',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--url',
          description: 'Specify the registry url',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'uninstall',
      description: 'Uninstalls KubeVela from a Kubernetes cluster',
      options: [
        Option(
          name: ['--force', '-f'],
          description: 'Force uninstall whole vela include all addons'
        ),
        Option(
          name: ['--detail', '-d'],
          description: 'Show detail log of uninstall information'
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace scope for installing KubeVela Core. (default "vela-system")',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'install',
      description: 'Installs KubeVela into a Kubernetes cluster',
      options: [
        Option(
          name: ['--file', '-f'],
          description: 'Custom the chart path of KubeVela control plane',
          args: [
            Arg(
            name: 'path',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['--detail', '-d'],
          description: 'Show detail log of install information'
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Namespace scope for installing KubeVela Core',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--reuse', '-r'],
          description: 'Will re-use the user\'s last supplied values. (default true)',
          args: [
            Arg(
            name: 'bool'
          )
          ]
        ),
        Option(
          name: ['--version', '-v'],
          description: 'Specify the version of KubeVela to install',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'completion',
      description: 'Output shell completion code for the specified shell (bash or zsh). The shell code must be evaluated to provide interactive completion of vela commands',
      subcommands: [
        Subcommand(
          name: 'bash',
          description: 'Output bash completion code'
        ),
        Subcommand(
          name: 'zsh',
          description: 'Output zsh completion code'
        )
      ]
    ),
    Subcommand(
      name: 'export',
      description: 'Export deploy manifests from appfile or application',
      options: [
        Option(
          name: ['--file', '-f'],
          description: 'Specify the appfile path',
          args: [
            Arg(
            name: 'path',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['--env', '-e'],
          description: 'Specify environment name for application',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['--namespace', '-n'],
          description: 'Specify the Kubernetes namespace to use',
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Prints the version',
      subcommands: [
        Subcommand(
          name: 'list',
          description: 'List all available versions'
        )
      ]
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for vela'
    )
  ]
);
