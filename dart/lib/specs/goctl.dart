// Auto-generated from TypeScript source: goctl.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `goctl` CLI
final FigSpec goctlSpec = FigSpec(
  name: 'goctl',
  description: 'A cli tool to generate go-zero code',
  subcommands: [
    Subcommand(
      name: 'api',
      description: 'Generate api related files',
      subcommands: [
        Subcommand(
          name: 'dart',
          description: 'Generate dart files for provided api in api file',
          options: [
            Option(
              name: '--api',
              description: 'The api file',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--dir',
              description: 'The target dir',
              args: [
                Arg(
                name: 'di'
              )
              ]
            ),
            Option(
              name: '--hostname',
              description: 'Hostname of the server',
              args: [
                Arg(
                name: 'hostnam'
              )
              ]
            ),
            Option(
              name: '--legacy',
              description: 'Legacy generator for flutter v1'
            )
          ]
        ),
        Subcommand(
          name: 'doc',
          description: 'Generate doc files',
          options: [
            Option(
              name: '--dir',
              description: 'The target dir',
              args: [
                Arg(
                name: 'di'
              )
              ]
            ),
            Option(
              name: '--o',
              description: 'The output markdown directory',
              args: [
                Arg(
                name: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'format',
          description: 'Format api files',
          options: [
            Option(
              name: '--declare',
              description: 'Use to skip check api types already declare'
            ),
            Option(
              name: '--dir',
              description: 'The format target dir',
              args: [
                Arg(
                name: 'di'
              )
              ]
            ),
            Option(
              name: '--iu',
              description: 'Ignore update'
            ),
            Option(
              name: '--stdin',
              description: 'Use stdin to input api doc content, press "ctrl + d" to send EOF'
            )
          ]
        ),
        Subcommand(
          name: 'go',
          description: 'Generate go files for provided api in yaml file',
          options: [
            Option(
              name: '--api',
              description: 'The api file',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--branch',
              description: 'The branch of the remote repo, it does work with --remote',
              args: [
                Arg(
                name: 'branch',
                defaultValue: 'maste'
              )
              ]
            ),
            Option(
              name: '--dir',
              description: 'The target dir',
              args: [
                Arg(
                name: 'di'
              )
              ]
            ),
            Option(
              name: '--home',
              description: 'The goctl home path of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority',
              args: [
                Arg(
                name: 'hom'
              )
              ]
            ),
            Option(
              name: '--remote',
              description: 'The remote git repo of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority \tThe git repo directory must be consistent with the https://github.com/zeromicro/go-zero-template directory structure',
              args: [
                Arg(
                name: 'remot'
              )
              ]
            ),
            Option(
              name: '--style',
              description: 'The file naming format, see [https://github.com/zeromicro/go-zero/blob/master/tools/goctl/config/readme.md]',
              args: [
                Arg(
                name: 'style',
                defaultValue: 'gozer'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'java',
          description: 'Generate java files for provided api in api file',
          options: [
            Option(
              name: '--api',
              description: 'The api file',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--dir',
              description: 'The target dir',
              args: [
                Arg(
                name: 'di'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'kt',
          description: 'Generate kotlin code for provided api file',
          options: [
            Option(
              name: '--api',
              description: 'The api file',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--dir',
              description: 'The target dir',
              args: [
                Arg(
                name: 'di'
              )
              ]
            ),
            Option(
              name: '--pkg',
              description: 'Define package name for kotlin file',
              args: [
                Arg(
                name: 'pk'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'new',
          description: 'Fast create api service',
          options: [
            Option(
              name: '--branch',
              description: 'The branch of the remote repo, it does work with --remote',
              args: [
                Arg(
                name: 'branch',
                defaultValue: 'maste'
              )
              ]
            ),
            Option(
              name: '--home',
              description: 'The goctl home path of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority',
              args: [
                Arg(
                name: 'hom'
              )
              ]
            ),
            Option(
              name: '--remote',
              description: 'The remote git repo of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority \tThe git repo directory must be consistent with the https://github.com/zeromicro/go-zero-template directory structure',
              args: [
                Arg(
                name: 'remot'
              )
              ]
            ),
            Option(
              name: '--style',
              description: 'The file naming format, see [https://github.com/zeromicro/go-zero/blob/master/tools/goctl/config/readme.md]',
              args: [
                Arg(
                name: 'style',
                defaultValue: 'gozer'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'plugin',
          description: 'Custom file generator',
          options: [
            Option(
              name: '--api',
              description: 'The api file',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--dir',
              description: 'The target dir',
              args: [
                Arg(
                name: 'di'
              )
              ]
            ),
            Option(
              name: ['--plugin', '-p'],
              description: 'The plugin file',
              args: [
                Arg(
                name: 'plugi'
              )
              ]
            ),
            Option(
              name: '--style',
              description: 'The file naming format, see [https://github.com/zeromicro/go-zero/tree/master/tools/goctl/config/readme.md]',
              args: [
                Arg(
                name: 'styl'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'ts',
          description: 'Generate ts files for provided api in api file',
          options: [
            Option(
              name: '--api',
              description: 'The api file',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            ),
            Option(
              name: '--caller',
              description: 'The web api caller',
              args: [
                Arg(
                name: 'calle'
              )
              ]
            ),
            Option(
              name: '--dir',
              description: 'The target dir',
              args: [
                Arg(
                name: 'di'
              )
              ]
            ),
            Option(
              name: '--unwrap',
              description: 'Unwrap the webapi caller for import'
            ),
            Option(
              name: '--webapi',
              description: 'The web api file path',
              args: [
                Arg(
                name: 'webap'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate api file',
          options: [
            Option(
              name: '--api',
              description: 'Validate target api file',
              args: [
                Arg(
                name: 'ap'
              )
              ]
            )
          ]
        )
      ],
      options: [
        Option(
          name: '--branch',
          description: 'The branch of the remote repo, it does work with --remote',
          args: [
            Arg(
            name: 'branch',
            defaultValue: 'maste'
          )
          ]
        ),
        Option(
          name: '--home',
          description: 'The goctl home path of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority',
          args: [
            Arg(
            name: 'hom'
          )
          ]
        ),
        Option(
          name: '--o',
          description: 'Output a sample api file',
          args: [
            Arg(
            name: ''
          )
          ]
        ),
        Option(
          name: '--remote',
          description: 'The remote git repo of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority \tThe git repo directory must be consistent with the https://github.com/zeromicro/go-zero-template directory structure',
          args: [
            Arg(
            name: 'remot'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'bug',
      description: 'Report a bug'
    ),
    Subcommand(
      name: 'completion',
      description: 'Generate the autocompletion script for the specified shell',
      subcommands: [
        Subcommand(
          name: 'bash',
          description: 'Generate the autocompletion script for bash',
          options: [
            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'fish',
          description: 'Generate the autocompletion script for fish',
          options: [
            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'powershell',
          description: 'Generate the autocompletion script for powershell',
          options: [
            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'zsh',
          description: 'Generate the autocompletion script for zsh',
          options: [
            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'docker',
      description: 'Generate Dockerfile',
      options: [
        Option(
          name: '--base',
          description: 'The base image to build the docker image, default scratch',
          args: [
            Arg(
            name: 'base',
            defaultValue: 'scratc'
          )
          ]
        ),
        Option(
          name: '--branch',
          description: 'The branch of the remote repo, it does work with --remote',
          args: [
            Arg(
            name: 'branc'
          )
          ]
        ),
        Option(
          name: '--go',
          description: 'The directory that contains main function',
          args: [
            Arg(
            name: 'go',
            defaultValue: ''
          )
          ]
        ),
        Option(
          name: '--home',
          description: 'The goctl home path of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority',
          args: [
            Arg(
            name: 'hom'
          )
          ]
        ),
        Option(
          name: '--port',
          description: 'The port to expose, default none',
          args: [
            Arg(
            name: 'port',
            defaultValue: ''
          )
          ]
        ),
        Option(
          name: '--remote',
          description: 'The remote git repo of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority \tThe git repo directory must be consistent with the https://github.com/zeromicro/go-zero-template directory structure',
          args: [
            Arg(
            name: 'remot'
          )
          ]
        ),
        Option(
          name: '--tz',
          description: 'The timezone of the container',
          args: [
            Arg(
            name: 'tz',
            defaultValue: 'Asia/Shangha'
          )
          ]
        ),
        Option(
          name: '--version',
          description: 'The goctl builder golang image version',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'env',
      description: 'Check or edit goctl environment',
      subcommands: [
        Subcommand(
          name: 'check',
          description: 'Detect goctl env and dependency tools',
          options: [
            Option(
              name: ['--install', '-i'],
              description: 'Install dependencies if not found'
            )
          ]
        ),
        Subcommand(
          name: 'install',
          description: 'Goctl env installation'
        )
      ],
      options: [
        Option(
          name: ['--write', '-w'],
          description: 'Edit goctl environment',
          args: [
            Arg(
            name: 'writ'
          )
          ]
        ),
        Option(
          name: ['--force', '-f'],
          description: 'Silent installation of non-existent dependencies',
          isPersistent: true
        ),
        Option(
          name: ['--verbose', '-v'],
          description: 'Enable log output',
          isPersistent: true
        )
      ]
    ),
    Subcommand(
      name: 'kube',
      description: 'Generate kubernetes files',
      subcommands: [
        Subcommand(
          name: 'deploy',
          description: 'Generate deployment yaml file',
          options: [
            Option(
              name: '--branch',
              description: 'The branch of the remote repo, it does work with --remote',
              args: [
                Arg(
                name: 'branc'
              )
              ]
            ),
            Option(
              name: '--home',
              description: 'The goctl home path of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority',
              args: [
                Arg(
                name: 'hom'
              )
              ]
            ),
            Option(
              name: '--image',
              description: 'The docker image of deployment (required)',
              args: [
                Arg(
                name: 'imag'
              )
              ]
            ),
            Option(
              name: '--limitCpu',
              description: 'The limit cpu to deploy',
              args: [
                Arg(
                name: 'limitCpu',
                defaultValue: '100'
              )
              ]
            ),
            Option(
              name: '--limitMem',
              description: 'The limit memory to deploy',
              args: [
                Arg(
                name: 'limitMem',
                defaultValue: '102'
              )
              ]
            ),
            Option(
              name: '--maxReplicas',
              description: 'The max replicas to deploy',
              args: [
                Arg(
                name: 'maxReplicas',
                defaultValue: '1'
              )
              ]
            ),
            Option(
              name: '--minReplicas',
              description: 'The min replicas to deploy',
              args: [
                Arg(
                name: 'minReplicas',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'The name of deployment (required)',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'The namespace of deployment (required)',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--nodePort',
              description: 'The nodePort of the deployment to expose',
              args: [
                Arg(
                name: 'nodePort',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--o',
              description: 'The output yaml file (required)',
              args: [
                Arg(
                name: ''
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'The port of the deployment to listen on pod (required)',
              args: [
                Arg(
                name: 'port',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--remote',
              description: 'The remote git repo of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority \tThe git repo directory must be consistent with the https://github.com/zeromicro/go-zero-template directory structure',
              args: [
                Arg(
                name: 'remot'
              )
              ]
            ),
            Option(
              name: '--replicas',
              description: 'The number of replicas to deploy',
              args: [
                Arg(
                name: 'replicas',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--requestCpu',
              description: 'The request cpu to deploy',
              args: [
                Arg(
                name: 'requestCpu',
                defaultValue: '50'
              )
              ]
            ),
            Option(
              name: '--requestMem',
              description: 'The request memory to deploy',
              args: [
                Arg(
                name: 'requestMem',
                defaultValue: '51'
              )
              ]
            ),
            Option(
              name: '--revisions',
              description: 'The number of revision history to limit',
              args: [
                Arg(
                name: 'revisions',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: '--secret',
              description: 'The secret to image pull from registry',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            ),
            Option(
              name: '--serviceAccount',
              description: 'The ServiceAccount for the deployment',
              args: [
                Arg(
                name: 'serviceAccoun'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'migrate',
      description: 'Migrate from tal-tech to zeromicro',
      options: [
        Option(
          name: ['--verbose', '-v'],
          description: 'Verbose enables extra logging'
        ),
        Option(
          name: '--version',
          description: 'The target release version of github.com/zeromicro/go-zero to migrate',
          args: [
            Arg(
            name: 'version',
            defaultValue: 'v1.3.'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'model',
      description: 'Generate model code',
      subcommands: [
        Subcommand(
          name: 'mongo',
          description: 'Generate mongo model',
          options: [
            Option(
              name: '--branch',
              description: 'The branch of the remote repo, it does work with --remote',
              args: [
                Arg(
                name: 'branc'
              )
              ]
            ),
            Option(
              name: ['--cache', '-c'],
              description: 'Generate code with cache [optional]'
            ),
            Option(
              name: ['--dir', '-d'],
              description: 'The target dir',
              args: [
                Arg(
                name: 'di'
              )
              ]
            ),
            Option(
              name: '--home',
              description: 'The goctl home path of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority',
              args: [
                Arg(
                name: 'hom'
              )
              ]
            ),
            Option(
              name: '--remote',
              description: 'The remote git repo of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority \tThe git repo directory must be consistent with the https://github.com/zeromicro/go-zero-template directory structure',
              args: [
                Arg(
                name: 'remot'
              )
              ]
            ),
            Option(
              name: '--style',
              description: 'The file naming format, see [https://github.com/zeromicro/go-zero/tree/master/tools/goctl/config/readme.md]',
              args: [
                Arg(
                name: 'styl'
              )
              ]
            ),
            Option(
              name: ['--type', '-t'],
              description: 'Specified model type name',
              args: [
                Arg(
                name: 'typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'mysql',
          description: 'Generate mysql model',
          subcommands: [
            Subcommand(
              name: 'datasource',
              description: 'Generate model from datasource',
              options: [
                Option(
                  name: '--branch',
                  description: 'The branch of the remote repo, it does work with --remote',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: ['--cache', '-c'],
                  description: 'Generate code with cache [optional]'
                ),
                Option(
                  name: ['--dir', '-d'],
                  description: 'The target dir',
                  args: [
                    Arg(
                    name: 'di'
                  )
                  ]
                ),
                Option(
                  name: '--home',
                  description: 'The goctl home path of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority',
                  args: [
                    Arg(
                    name: 'hom'
                  )
                  ]
                ),
                Option(
                  name: '--idea',
                  description: 'For idea plugin [optional]'
                ),
                Option(
                  name: '--remote',
                  description: 'The remote git repo of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority \tThe git repo directory must be consistent with the https://github.com/zeromicro/go-zero-template directory structure',
                  args: [
                    Arg(
                    name: 'remot'
                  )
                  ]
                ),
                Option(
                  name: '--style',
                  description: 'The file naming format, see [https://github.com/zeromicro/go-zero/tree/master/tools/goctl/config/readme.md]',
                  args: [
                    Arg(
                    name: 'styl'
                  )
                  ]
                ),
                Option(
                  name: ['--table', '-t'],
                  description: 'The table or table globbing patterns in the database',
                  args: [
                    Arg(
                    name: 'tabl'
                  )
                  ]
                ),
                Option(
                  name: '--url',
                  description: 'The data source of database,like "root:password@tcp(127.0.0.1:3306)/database"',
                  args: [
                    Arg(
                    name: 'ur'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'ddl',
              description: 'Generate mysql model from ddl',
              options: [
                Option(
                  name: '--branch',
                  description: 'The branch of the remote repo, it does work with --remote',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: ['--cache', '-c'],
                  description: 'Generate code with cache [optional]'
                ),
                Option(
                  name: '--database',
                  description: 'The name of database [optional]',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--dir', '-d'],
                  description: 'The target dir',
                  args: [
                    Arg(
                    name: 'di'
                  )
                  ]
                ),
                Option(
                  name: '--home',
                  description: 'The goctl home path of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority',
                  args: [
                    Arg(
                    name: 'hom'
                  )
                  ]
                ),
                Option(
                  name: '--idea',
                  description: 'For idea plugin [optional]'
                ),
                Option(
                  name: '--remote',
                  description: 'The remote git repo of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority \tThe git repo directory must be consistent with the https://github.com/zeromicro/go-zero-template directory structure',
                  args: [
                    Arg(
                    name: 'remot'
                  )
                  ]
                ),
                Option(
                  name: ['--src', '-s'],
                  description: 'The path or path globbing patterns of the ddl',
                  args: [
                    Arg(
                    name: 'sr'
                  )
                  ]
                ),
                Option(
                  name: '--style',
                  description: 'The file naming format, see [https://github.com/zeromicro/go-zero/tree/master/tools/goctl/config/readme.md]',
                  args: [
                    Arg(
                    name: 'styl'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'pg',
              description: 'Generate postgresql model',
              options: [
                Option(
                  name: '--branch',
                  description: 'The branch of the remote repo, it does work with --remote',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: ['--cache', '-c'],
                  description: 'Generate code with cache [optional]'
                ),
                Option(
                  name: ['--dir', '-d'],
                  description: 'The target dir',
                  args: [
                    Arg(
                    name: 'di'
                  )
                  ]
                ),
                Option(
                  name: '--home',
                  description: 'The goctl home path of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority',
                  args: [
                    Arg(
                    name: 'hom'
                  )
                  ]
                ),
                Option(
                  name: '--idea',
                  description: 'For idea plugin [optional]'
                ),
                Option(
                  name: '--remote',
                  description: 'The remote git repo of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority \tThe git repo directory must be consistent with the https://github.com/zeromicro/go-zero-template directory structure',
                  args: [
                    Arg(
                    name: 'remot'
                  )
                  ]
                ),
                Option(
                  name: ['--schema', '-s'],
                  description: 'The table schema',
                  args: [
                    Arg(
                    name: 'schema',
                    defaultValue: 'publi'
                  )
                  ]
                ),
                Option(
                  name: '--style',
                  description: 'The file naming format, see [https://github.com/zeromicro/go-zero/tree/master/tools/goctl/config/readme.md]',
                  args: [
                    Arg(
                    name: 'styl'
                  )
                  ]
                ),
                Option(
                  name: ['--table', '-t'],
                  description: 'The table or table globbing patterns in the database',
                  args: [
                    Arg(
                    name: 'tabl'
                  )
                  ]
                ),
                Option(
                  name: '--url',
                  description: 'The data source of database,like "root:password@tcp(127.0.0.1:3306)/database"',
                  args: [
                    Arg(
                    name: 'ur'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'quickstart',
      description: 'Quickly start a project',
      options: [
        Option(
          name: ['--service-type', '-t'],
          description: 'Specify the service type, supported values: [mono, micro]',
          args: [
            Arg(
            name: 'service-type',
            defaultValue: 'mon'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'rpc',
      description: 'Generate rpc code',
      subcommands: [
        Subcommand(
          name: 'new',
          description: 'Generate rpc demo service',
          options: [
            Option(
              name: '--branch',
              description: 'The branch of the remote repo, it does work with --remote',
              args: [
                Arg(
                name: 'branc'
              )
              ]
            ),
            Option(
              name: '--go-grpc_opt',
              description: '',
              args: [
                Arg(
                name: 'go-grpc_op'
              )
              ]
            ),
            Option(
              name: '--go_opt',
              description: '',
              args: [
                Arg(
                name: 'go_op'
              )
              ]
            ),
            Option(
              name: '--home',
              description: 'The goctl home path of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority',
              args: [
                Arg(
                name: 'hom'
              )
              ]
            ),
            Option(
              name: '--idea',
              description: 'Whether the command execution environment is from idea plugin'
            ),
            Option(
              name: '--remote',
              description: 'The remote git repo of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority \tThe git repo directory must be consistent with the https://github.com/zeromicro/go-zero-template directory structure',
              args: [
                Arg(
                name: 'remot'
              )
              ]
            ),
            Option(
              name: '--style',
              description: 'The file naming format, see [https://github.com/zeromicro/go-zero/tree/master/tools/goctl/config/readme.md]',
              args: [
                Arg(
                name: 'style',
                defaultValue: 'gozer'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-v'],
              description: 'Enable log output'
            )
          ]
        ),
        Subcommand(
          name: 'protoc',
          description: 'Generate grpc code',
          options: [
            Option(
              name: '--branch',
              description: 'The branch of the remote repo, it does work with --remote',
              args: [
                Arg(
                name: 'branc'
              )
              ]
            ),
            Option(
              name: '--go-grpc_opt',
              description: '',
              args: [
                Arg(
                name: 'go-grpc_op'
              )
              ]
            ),
            Option(
              name: '--go-grpc_out',
              description: '',
              args: [
                Arg(
                name: 'go-grpc_ou'
              )
              ]
            ),
            Option(
              name: '--go_opt',
              description: '',
              args: [
                Arg(
                name: 'go_op'
              )
              ]
            ),
            Option(
              name: '--go_out',
              description: '',
              args: [
                Arg(
                name: 'go_ou'
              )
              ]
            ),
            Option(
              name: '--home',
              description: 'The goctl home path of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority',
              args: [
                Arg(
                name: 'hom'
              )
              ]
            ),
            Option(
              name: ['--multiple', '-m'],
              description: 'Generated in multiple rpc service mode'
            ),
            Option(
              name: '--plugin',
              description: '',
              args: [
                Arg(
                name: 'plugi'
              )
              ]
            ),
            Option(
              name: ['--proto_path', '-I'],
              description: '',
              args: [
                Arg(
                name: 'proto_pat'
              )
              ]
            ),
            Option(
              name: '--remote',
              description: 'The remote git repo of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority \tThe git repo directory must be consistent with the https://github.com/zeromicro/go-zero-template directory structure',
              args: [
                Arg(
                name: 'remot'
              )
              ]
            ),
            Option(
              name: '--style',
              description: 'The file naming format, see [https://github.com/zeromicro/go-zero/tree/master/tools/goctl/config/readme.md]',
              args: [
                Arg(
                name: 'style',
                defaultValue: 'gozer'
              )
              ]
            ),
            Option(
              name: ['--verbose', '-v'],
              description: 'Enable log output'
            ),
            Option(
              name: '--zrpc_out',
              description: 'The zrpc output directory',
              args: [
                Arg(
                name: 'zrpc_ou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'template',
          description: 'Generate proto template',
          options: [
            Option(
              name: '--branch',
              description: 'The branch of the remote repo, it does work with --remote',
              args: [
                Arg(
                name: 'branc'
              )
              ]
            ),
            Option(
              name: '--home',
              description: 'The goctl home path of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority',
              args: [
                Arg(
                name: 'hom'
              )
              ]
            ),
            Option(
              name: '--o',
              description: 'Output a sample proto file',
              args: [
                Arg(
                name: ''
              )
              ]
            ),
            Option(
              name: '--remote',
              description: 'The remote git repo of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority \tThe git repo directory must be consistent with the https://github.com/zeromicro/go-zero-template directory structure',
              args: [
                Arg(
                name: 'remot'
              )
              ]
            )
          ]
        )
      ],
      options: [
        Option(
          name: '--branch',
          description: 'The branch of the remote repo, it does work with --remote',
          args: [
            Arg(
            name: 'branc'
          )
          ]
        ),
        Option(
          name: '--home',
          description: 'The goctl home path of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority',
          args: [
            Arg(
            name: 'hom'
          )
          ]
        ),
        Option(
          name: '--o',
          description: 'Output a sample proto file',
          args: [
            Arg(
            name: ''
          )
          ]
        ),
        Option(
          name: '--remote',
          description: 'The remote git repo of the template, --home and --remote cannot be set at the same time, if they are, --remote has higher priority \tThe git repo directory must be consistent with the https://github.com/zeromicro/go-zero-template directory structure',
          args: [
            Arg(
            name: 'remot'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'template',
      description: 'Template operation',
      subcommands: [
        Subcommand(
          name: 'clean',
          description: 'Clean the all cache templates',
          options: [
            Option(
              name: '--home',
              description: 'The goctl home path of the template',
              args: [
                Arg(
                name: 'hom'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'init',
          description: 'Initialize the all templates(force update)',
          options: [
            Option(
              name: '--home',
              description: 'The goctl home path of the template',
              args: [
                Arg(
                name: 'hom'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'revert',
          description: 'Revert the target template to the latest',
          options: [
            Option(
              name: ['--category', '-c'],
              description: 'The category of template, enum [api,rpc,model,docker,kube]',
              args: [
                Arg(
                name: 'categor'
              )
              ]
            ),
            Option(
              name: '--home',
              description: 'The goctl home path of the template',
              args: [
                Arg(
                name: 'hom'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The target file name of template',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update template of the target category to the latest',
          options: [
            Option(
              name: ['--category', '-c'],
              description: 'The category of template, enum [api,rpc,model,docker,kube]',
              args: [
                Arg(
                name: 'categor'
              )
              ]
            ),
            Option(
              name: '--home',
              description: 'The goctl home path of the template',
              args: [
                Arg(
                name: 'hom'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Upgrade goctl to latest version'
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [
        Subcommand(
          name: 'api',
          description: 'Generate api related files',
          subcommands: [
            Subcommand(
              name: 'dart',
              description: 'Generate dart files for provided api in api file'
            ),
            Subcommand(
              name: 'doc',
              description: 'Generate doc files'
            ),
            Subcommand(
              name: 'format',
              description: 'Format api files'
            ),
            Subcommand(
              name: 'go',
              description: 'Generate go files for provided api in yaml file'
            ),
            Subcommand(
              name: 'java',
              description: 'Generate java files for provided api in api file'
            ),
            Subcommand(
              name: 'kt',
              description: 'Generate kotlin code for provided api file'
            ),
            Subcommand(
              name: 'new',
              description: 'Fast create api service'
            ),
            Subcommand(
              name: 'plugin',
              description: 'Custom file generator'
            ),
            Subcommand(
              name: 'ts',
              description: 'Generate ts files for provided api in api file'
            ),
            Subcommand(
              name: 'validate',
              description: 'Validate api file'
            )
          ]
        ),
        Subcommand(
          name: 'bug',
          description: 'Report a bug'
        ),
        Subcommand(
          name: 'completion',
          description: 'Generate the autocompletion script for the specified shell',
          subcommands: [
            Subcommand(
              name: 'bash',
              description: 'Generate the autocompletion script for bash'
            ),
            Subcommand(
              name: 'fish',
              description: 'Generate the autocompletion script for fish'
            ),
            Subcommand(
              name: 'powershell',
              description: 'Generate the autocompletion script for powershell'
            ),
            Subcommand(
              name: 'zsh',
              description: 'Generate the autocompletion script for zsh'
            )
          ]
        ),
        Subcommand(
          name: 'docker',
          description: 'Generate Dockerfile'
        ),
        Subcommand(
          name: 'env',
          description: 'Check or edit goctl environment',
          subcommands: [
            Subcommand(
              name: 'check',
              description: 'Detect goctl env and dependency tools'
            ),
            Subcommand(
              name: 'install',
              description: 'Goctl env installation'
            )
          ]
        ),
        Subcommand(
          name: 'kube',
          description: 'Generate kubernetes files',
          subcommands: [
            Subcommand(
              name: 'deploy',
              description: 'Generate deployment yaml file'
            )
          ]
        ),
        Subcommand(
          name: 'migrate',
          description: 'Migrate from tal-tech to zeromicro'
        ),
        Subcommand(
          name: 'model',
          description: 'Generate model code',
          subcommands: [
            Subcommand(
              name: 'mongo',
              description: 'Generate mongo model'
            ),
            Subcommand(
              name: 'mysql',
              description: 'Generate mysql model',
              subcommands: [
                Subcommand(
                  name: 'datasource',
                  description: 'Generate model from datasource'
                ),
                Subcommand(
                  name: 'ddl',
                  description: 'Generate mysql model from ddl'
                ),
                Subcommand(
                  name: 'pg',
                  description: 'Generate postgresql model'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'quickstart',
          description: 'Quickly start a project'
        ),
        Subcommand(
          name: 'rpc',
          description: 'Generate rpc code',
          subcommands: [
            Subcommand(
              name: 'new',
              description: 'Generate rpc demo service'
            ),
            Subcommand(
              name: 'protoc',
              description: 'Generate grpc code'
            ),
            Subcommand(
              name: 'template',
              description: 'Generate proto template'
            )
          ]
        ),
        Subcommand(
          name: 'template',
          description: 'Template operation',
          subcommands: [
            Subcommand(
              name: 'clean',
              description: 'Clean the all cache templates'
            ),
            Subcommand(
              name: 'init',
              description: 'Initialize the all templates(force update)'
            ),
            Subcommand(
              name: 'revert',
              description: 'Revert the target template to the latest'
            ),
            Subcommand(
              name: 'update',
              description: 'Update template of the target category to the latest'
            )
          ]
        ),
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade goctl to latest version'
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
